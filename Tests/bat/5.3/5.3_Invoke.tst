<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Sat Jan 21 10:06:51 PST 2012 -->


<TestCase name="5.3_Invoke" version="2">
<id>febc86e8</id>
<Documentation>Description :   Test File-based Logging.&#13;&#10;                Create 3 loggers: logger1 for Nodes (done in setup), logger2 for Java Component, logger3 for Application&#13;&#10;Scenario:       SOAP BT(HTTP) -&gt; Java -&gt; Spring&#13;&#10;&#13;&#10;MEP: In-Only &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS03NzkyNzQ1Nw==</sig>
<rootNode>invokeService</rootNode>
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
    <key>lisa.deployApp.rsp</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp.time</key>
    <value>Set in Step deployApp</value>
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
    <key>lisa.readNodeLogFile.rsp</key>
    <value>Set in Step readNodeLogFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.readNodeLogFile.rsp.time</key>
    <value>Set in Step readNodeLogFile</value>
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
    <key>tibco.amx.rt.jdbc1.direct.dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dialect</key>
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
    <key>tibco.amx.rt.jdbc1.direct.jdbcDriver</key>
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
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
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
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.Dialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dataSor</key>
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
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
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
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.jdbc1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>identityProvider</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.dataSor</key>
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
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
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
    <key>lisa.wait.rsp</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp.time</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxdata.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql_cdc.config</doc>
</Configuration>
</Configurations>
    <Node name="invokeService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{port2}}/helloworld/</url>
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
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readJavaCompLogFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="readNodeLogFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readJavaCompLogFile" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation>Skipped. The string in this assertion was moved to TRACE level so it does not show up in BAT (no TRACE level).</Documentation>
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
    <value>{{tibco.test.case.log.dir}}/../setup/{{env.node1.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for node response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{nodeResp}}&apos; in node response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{nodeResp}}</param>
</CheckResult>

    </Node>


    <Node name="readJavaCompLogFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readApplicationLogFile" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/../5.3/BAT53_Java.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for java component response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{javaResp}}&apos; in java component response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{javaResp}}</param>
</CheckResult>

    </Node>


    <Node name="readApplicationLogFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/../5.3/BAT53_Application.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for application response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{appResp}}&apos; in application response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{appResp}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Re-Deploy" > 

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
    <value></value>
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
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>1885</graphx>
<graphy>4145</graphy>
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
    <value></value>
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

<graphx>490</graphx>
<graphy>490</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>610</graphx>
<graphy>610</graphy>
    </Node>


</TestCase>
