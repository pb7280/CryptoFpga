#include <sys/mman.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#if __BYTE_ORDER == __LITTLE_ENDIAN

#define LTOHL(x) (x)
#define HTOLL(x) (x)

#endif

#define NUM_WORDS 8

void write_int(volatile void* ptr, const unsigned int offset, unsigned value)
{
	volatile void* virt_addr = (volatile void*) ((char *) ptr + offset);
	*((u_int32_t *) virt_addr) = HTOLL(value);
}

int read_int(volatile void* ptr, const unsigned int offset)
{
	volatile void* virt_addr = (volatile void*)((char*)ptr + offset);
	return LTOHL(*((u_int32_t *) virt_addr));
}

const struct address_info
{
	unsigned base;
	unsigned work_offset;
	unsigned target_offset;
	unsigned max_nonce_offset;
	unsigned num_hashes_offset;
	unsigned ret_offset;
};

const struct data_values
{
	unsigned work[32];
	unsigned target[8];
	unsigned max_nonce;
	unsigned num_hashes;
};

const struct map
{
	void* ptr;
	unsigned int page_offset;
	unsigned int page_size;
};

struct map open_map(const unsigned address)
{
	int fd = open("/dev/mem", O_RDWR);

	if (fd < 1)
	{
		perror("Couldn't open /dev/mem\n");
	}

	const unsigned int page_size = sysconf(_SC_PAGESIZE);
	const unsigned int page_addr = address & ~(page_size - 1);
	const unsigned int page_offset = address - page_addr;

	void* ptr = mmap(NULL, page_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, page_addr);

	struct map map;
	map.ptr = ptr;
	map.page_offset = page_offset;
	map.page_size = page_size;

	return map;
}

void close_map(const struct map map)
{
	munmap(map.ptr, map.page_size);
}

void write_int_map(const struct map map, const unsigned offset, const unsigned data)
{
	write_int(map.ptr, map.page_offset + offset, data);
}

unsigned read_int_map(const struct map map, const unsigned offset)
{
	return read_int(map.ptr, map.page_offset + offset);
}

unsigned start_hash_and_wait(const struct address_info info, struct data_values data)
{
	printf("base address %x\n", info.base);
	printf("work offset %x\n", info.work_offset);
	printf("target offset %x\n", info.target_offset);
	printf("max nonce offset %x\n", info.max_nonce_offset);
	printf("ret offset %x\n", info.ret_offset);

	printf("CAN YOU SEE THIS\n");

	const struct map map = open_map(info.base);

	void* ptr = map.ptr;
	const unsigned page_offset = map.page_offset;

	printf("Starting write to base address %x\n", info.base);

	for (int i = 0; i < 32; i++)
	{
		write_int(ptr, page_offset + info.work_offset + i * sizeof(int), data.work[i]);		
	}
	for (int i = 0; i < 8; i++)
	{
		write_int(ptr, page_offset + info.target_offset + i * sizeof(int), data.target[i]);
	}

	write_int(ptr, page_offset + info.max_nonce_offset, data.max_nonce);

	unsigned wait_time = 0;

	write_int(ptr, page_offset, 1);

	while (!(read_int(ptr, page_offset) & 0xe))
	{
		sleep(1);
		printf("\rSleep wait %d\n", ++wait_time);
		printf("current nonce %d\n", read_int(ptr, page_offset + info.work_offset + 19 * sizeof(unsigned)));
	}

	const int result = read_int(ptr, page_offset + info.ret_offset);
	const unsigned golden_nonce = read_int(ptr, page_offset + info.work_offset + 19 * sizeof(unsigned));
	const unsigned num_hashes = read_int(ptr, page_offset + info.num_hashes_offset);

	printf("result %d\n", result);
	printf("golden nonce %x\n", golden_nonce);
	printf("num_hashes %d\n", num_hashes);

	close_map(map);

	return golden_nonce;
}

unsigned main()
{
	struct address_info info;
	info.base = 0x43c00000;
	info.work_offset = 0x80;
	info.target_offset = 0x100;
	info.max_nonce_offset = 0x120;
	info.num_hashes_offset = 0x128;
	info.ret_offset = 0x10;

	unsigned data[32] =
	{
		0x01000000,
		0x81cd02ab,
		0x7e569e8b,
		0xcd9317e2,
		0xfe99f2de,
		0x44d49ab2,
		0xb8851ba4,
		0xa3080000,
		0x00000000,
		0xe320b6c2,
		0xfffc8d75,
		0x0423db8b,
		0x1eb942ae,
		0x710e951e,
		0xd797f7af,
		0xfc8892b0,
		0xf1fc122b,
		0xc7f5d74d,
		0xf2b9441a,
		0x42a14690,
		0x80000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000000,
		0x00000280,
	};

	unsigned targ[8] =
	{
		0xFFFFFFFF,
		0xFFFFFFFF,
		0xFFFFFFFF,
		0xFFFFFFFF,
		0xFFFFFFFF,
		0xFFFFFFFF,
		0x00000000,
		0x00000000
	};

	struct data_values d;

	for (int i = 0; i < 32; i++)
	{
		d.work[i] = data[i];
	}

	for (int i = 0; i < 8; i++)
	{
		d.target[i] = targ[i];
	}

	d.max_nonce = 0x42a14700;

	return start_hash_and_wait(info, d);
}