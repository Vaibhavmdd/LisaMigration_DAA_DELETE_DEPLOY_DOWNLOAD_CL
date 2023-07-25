<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Oct 12 03:52:15 PDT 2021 -->


<TestCase name="hf_330_5.12.9-TAP-12760" version="2">
<id>cb9518c6</id>
<Documentation>Description:  Download DAA file of system or product application&#13;&#10;com.tibco.amx.platform.daa&#13;&#10;&#13;&#10;&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTkxNzQ4NDE5Mg==</sig>
<rootNode>downloadDAA</rootNode>
<subprocess>false</subprocess>

<initState>
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
    <key>lisa.REST_Invocation_GET.rsp</key>
    <value>Set in Step REST_Invocation_GET</value>
    </Parameter>
    <Parameter>
    <key>lisa.REST_Invocation_GET.rsp.time</key>
    <value>Set in Step REST_Invocation_GET</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for GET status code.rsp</key>
    <value>Set in Step Read node log for GET status code</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for GET status code.rsp.time</key>
    <value>Set in Step Read node log for GET status code</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for GET output.rsp</key>
    <value>Set in Step Read node log for GET output</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for GET output.rsp.time</key>
    <value>Set in Step Read node log for GET output</value>
    </Parameter>
    <Parameter>
    <key>lisa.REST_Invocation_POST.rsp</key>
    <value>Set in Step REST_Invocation_POST</value>
    </Parameter>
    <Parameter>
    <key>lisa.REST_Invocation_POST.rsp.time</key>
    <value>Set in Step REST_Invocation_POST</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for POST status code.rsp</key>
    <value>Set in Step Read node log for POST status code</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for POST status code.rsp.time</key>
    <value>Set in Step Read node log for POST status code</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for POST output.rsp</key>
    <value>Set in Step Read node log for POST output</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for POST output.rsp.time</key>
    <value>Set in Step Read node log for POST output</value>
    </Parameter>
    <Parameter>
    <key>lisa.REST_Invocation_PUT.rsp</key>
    <value>Set in Step REST_Invocation_PUT</value>
    </Parameter>
    <Parameter>
    <key>lisa.REST_Invocation_PUT.rsp.time</key>
    <value>Set in Step REST_Invocation_PUT</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for PUT status code.rsp</key>
    <value>Set in Step Read node log for PUT status code</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for PUT status code.rsp.time</key>
    <value>Set in Step Read node log for PUT status code</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for PUT output.rsp</key>
    <value>Set in Step Read node log for PUT output</value>
    </Parameter>
    <Parameter>
    <key>lisa.Read node log for PUT output.rsp.time</key>
    <value>Set in Step Read node log for PUT output</value>
    </Parameter>
    <Parameter>
    <key>lisa.downloadDAA.rsp</key>
    <value>Set in Step downloadDAA</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteApp.rsp.time</key>
    <value>Set in Step deleteApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp.time</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.downloadDAA.rsp.time</key>
    <value>Set in Step downloadDAA</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteApp.rsp</key>
    <value>Set in Step deleteApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>C:\trunk_331\tests\func\runtime\hf\2node_cdc.config</doc>
</Configuration>
</Configurations>
    <Node name="downloadDAA" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>3328</graphx>
<graphy>419</graphy>
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
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/undeployant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>download.daa</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>downloadDaaTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{TIBCO_AMX_TEST_FUNC_RT}}/hf/2node.config</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
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
    <value>{{downloadDaaTimeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Error" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Undeployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>DAA with application template &apos;com.tibco.amx.platform.daa:3.4.100.000&apos; is a system application and therefore cannot be downloaded.</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>370</graphx>
<graphy>370</graphy>
    </Node>


</TestCase>
