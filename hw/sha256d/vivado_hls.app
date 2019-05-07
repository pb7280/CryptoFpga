<project xmlns="com.autoesl.autopilot.project" top="scanhash_sha256d" name="sha256d">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="0" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../tb/sha256d_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="sha256d/sha256d.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

