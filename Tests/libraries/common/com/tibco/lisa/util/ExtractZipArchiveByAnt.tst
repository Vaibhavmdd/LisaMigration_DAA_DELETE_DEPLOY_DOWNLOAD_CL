<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon Nov 17 20:13:04 PST 2014 -->


<TestCase name="ExtractZipArchiveByAnt" version="2">
<id>68842f12</id>
<Documentation>This sub process extracts a given zip archive to a destination folder. &#13;&#10;If the destination folder does not exist, it is created automatically.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0yMDU0NzU5OTUy</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>zipArchivePath</key>
    <value></value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value></value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>300</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipArchive.rsp.time</key>
    <value>Set in Step unzipArchive</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step unzipArchive</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>comm</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzip.rsp</key>
    <value>Set in Step unzip</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzip.rsp.time</key>
    <value>Set in Step unzip</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unzip" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Extracting {{zipArchivePath}} into {{destinationFolder}} ...</log>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.generateCommandToUnzip.rsp</valueToFilterKey>
      <prop>comm</prop>
      </Filter>

    </Node>


    <Node name="unzip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/ExtractZipArchiveByAnt-build.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{LISA_TC_PATH}}/unzip.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>unzip</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>source={{zipArchivePath}},dest={{destinationFolder}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>100</graphx>
<graphy>200</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>186</graphx>
<graphy>50</graphy>
    </Node>


</TestCase>
