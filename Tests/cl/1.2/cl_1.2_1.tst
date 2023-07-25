<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="cl_1.2_1" version="5">
<id>66FD749D13EC11EE8675506B8DD34562</id>
<Documentation>Description :   Test CBE-based Logging.&#xd;
                Create CBE logger for Application, check correlationID, Context ID, parentContext ID in CBE log with &#xd;
                Debug Level.&#xd;
Scenario:       SOAP BT(HTTP) &lt;-&gt; Java1 &lt;-&gt; Java2&lt;-&gt; Java3</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE5MDIyNjAyODI=</sig>
<rootNode>CheckAMXVersion</rootNode>
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
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckUseHostVersion.rsp</key>
    <value>Set in Step CheckUseHostVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckUseHostVersion.rsp.time</key>
    <value>Set in Step CheckUseHostVersion</value>
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
    <key>lisa.confLogging.rsp</key>
    <value>Set in Step confLogging</value>
    </Parameter>
    <Parameter>
    <key>lisa.confLogging.rsp.time</key>
    <value>Set in Step confLogging</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService.rsp</key>
    <value>Set in Step invokeService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService.rsp.time</key>
    <value>Set in Step invokeService</value>
    </Parameter>
    <Parameter>
    <key>lisa.readApplicationLogFile_320.rsp</key>
    <value>Set in Step readApplicationLogFile_320</value>
    </Parameter>
    <Parameter>
    <key>lisa.readApplicationLogFile_320.rsp.time</key>
    <value>Set in Step readApplicationLogFile_320</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.readApplicationLogFile_330.rsp</key>
    <value>Set in Step readApplicationLogFile_330</value>
    </Parameter>
    <Parameter>
    <key>lisa.readApplicationLogFile_330.rsp.time</key>
    <value>Set in Step readApplicationLogFile_330</value>
    </Parameter>
</resultState>


<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>C:\3.0Automation\tests\func\runtime\cl\2node_orcl.config</doc>
</Configuration>
<Configuration>
<name>cdc</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_cdc{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_oracle</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_orcl{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_SQLServer</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_sqlsvr{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node log="" name="CheckAMXVersion" next="deployApp" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="66FD9BAE13EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation/>
<remoteServer>local</remoteServer>
<Subprocess>{{LISA_TC_PATH}}/../checkVersion/checkAMXVersion.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>TIBCO_AMX_HOME</key>
    <value>{{TIBCO_AMX_HOME}}</value>
    <name>TIBCO AMX Version</name>
    </Parameter>
    <Parameter>
    <key>ComparedVersion</key>
    <value>3.1</value>
    <name>Auto-Deployment works on this verion</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="CheckVersionAssert" type="com.itko.lisa.test.CheckResultContains">
<log>Check {{TIBCO_AMX_HOME}} is greater than 3.1 or not</log>
<then>end</then>
<valueToAssertKey/>
        <param>true</param>
</CheckResult>

    </Node>


    <Node log="" name="deployApp" next="confLogging" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="66FD9BAF13EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>1885</graphx>
<graphy>4145</graphy>
<Documentation/>
<remoteServer>local</remoteServer>
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
    <value/>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeployApp.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value/>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node log="" name="confLogging" next="invokeService" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="66FD9BB013EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>1885</graphx>
<graphy>4145</graphy>
<Documentation/>
<remoteServer>local</remoteServer>
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
    <value/>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antConfLogging.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>conf.logging</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value/>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert" type="com.itko.lisa.test.CheckResultContains">
<log>Logging Configuration failed</log>
<then>fail</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node log="" name="invokeService" next="readApplicationLogFile_320" quiet="false" think="500-1000" type="com.itko.lisa.ws.RawSOAPNode" uid="66FD9BB113EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/helloworld/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9oZWxs
b3dvcmxkLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAg
IDxoZWw6c2F5SGVsbG8+DQogICAgICAgICA8aW4+e3tpblBhcmFtfX08L2luPg0KICAgICAgPC9o
ZWw6c2F5SGVsbG8+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for response to request" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{resp}}' in application response to request</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{resp}}</param>
</CheckResult>

    </Node>


    <Node log="" name="readApplicationLogFile_320" next="readApplicationLogFile_330" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="66FD9BB213EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_2_CBE.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value/>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Check for contextId" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{contextId}}' in application response</log>
<then>undeployApp</then>
<valueToAssertKey/>
        <param>{{contextId1}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Check for parentContextId" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{parentContextId}}' in application log</log>
<then>undeployApp</then>
<valueToAssertKey/>
        <param>{{parentContextId1}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Check for correlationId" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{correlationId}}' in application log</log>
<then>undeployApp</then>
<valueToAssertKey/>
        <param>{{correlationId1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for application response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{appResp}}' in application response</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{appResp}}</param>
</CheckResult>

    </Node>


    <Node log="" name="readApplicationLogFile_330" next="undeployApp" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="66FD9BB313EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_2_CBE.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value/>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for contextId" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{contextId}}' in application response</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{contextId2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for parentContextId" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{parentContextId}}' in application log</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{parentContextId2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for correlationId" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{correlationId}}' in application log</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{correlationId2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for application response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain '{{appResp}}' in application response</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{appResp}}</param>
</CheckResult>

    </Node>


    <Node log="" name="undeployApp" next="end" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="66FD9BB413EC11EE8675506B8DD34562" useFilters="true" version="1"> 

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
    <value/>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antUndeployApp.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>undeploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value/>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment of Application failed</log>
<then>fail</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node log="" name="fail" next="unknown" quiet="true" think="0-0" type="com.itko.lisa.test.Abend" uid="66FD9BB513EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0-0" type="com.itko.lisa.test.NormalEnd" uid="66FD9BB613EC11EE8675506B8DD34562" useFilters="true" version="1"> 

<graphx>130</graphx>
<graphy>130</graphy>
    </Node>


</TestCase>