<?xml version="1.0" ?>

<TestCase name="8.1" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/27/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/27/2023" host="na2devasgaks01" />
</meta>

<id>70c16865</id>
<Documentation>This is from HealthCheck case12: SOAP-&gt;Java1-&gt;Java2-&gt;Reference Call SOAP-Java3 (Stop Java3)&#13;&#10;Checkpoints; Healtch check and timeout if Stop Java on other node.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTMzNzE3MDM0</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig2.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc2</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="130E604B72811ED888D506B8D8BDEB5" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}/data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="InvokeService_Normal" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="InvokeService_Normal" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="70c16865-InvokeService_Normal" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="InvokeService_HealthCheck_PASS" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check Response" type="com.itko.lisa.test.CheckResultContains">
<log>Check &quot;Hi test! This is the Java component &quot; in response message</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hi test! This is the Java component</param>
</CheckResult>

<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhlbGxvUmVxdWVzdD50ZXN0PC9oZWw6SGVsbG9SZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="InvokeService_HealthCheck_PASS" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="70c16865-InvokeService_HealthCheck_PASS" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="stopComponent" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="HealthCheckResponse/applicationName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/applicationName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@applicationName=&quot;BAT8.1_SOAP2JavaCallJava3Stop_Client&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;Passed&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Service/nodeName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check Service/nodeName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Service&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java1&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java2&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="ComponentReference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is ComponentReference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;ComponentReference&quot;]/@name=&quot;HelloWorldPT&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Reference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is Reference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Reference&quot;]/@name=&quot;HelloWorldPT/SOAPReference_Binding1&quot;</xpathq>
</CheckResult>

<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>checkHealth</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlYWw9Imh0dHA6Ly93d3cudGliY28uY29tL2hlYWx0aGNoZWNrLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxoZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgICAgICAgIDxob3BzPjE8L2hvcHM+DQogICAgICA8L2hlYWw6SGVhbHRoQ2hlY2tSZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="stopComponent" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-stopComponent" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>stop.component</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile2={{tibco.amx.datafile.tc2}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="InvokeService_Timeout_HC" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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


    <Node name="InvokeService_Timeout_HC" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="70c16865-InvokeService_Timeout_HC" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="startComponent" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;TimedOut&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Check ErrorString" type="com.itko.lisa.test.CheckResultContains">
<log>Check {{Health Check execution stopped due to Timeout}} in response message</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Health Check execution stopped due to Timeout</param>
</CheckResult>

<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>checkHealth</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlYWw9Imh0dHA6Ly93d3cudGliY28uY29tL2hlYWx0aGNoZWNrLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxoZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgICAgICAgIDxob3BzPi0xPC9ob3BzPg0KICAgICAgICAgIDx0aW1lb3V0PjE1MDAwPC90aW1lb3V0Pg0KICAgICAgPC9oZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="startComponent" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-startComponent" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait-1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>start.component</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile2={{tibco.amx.datafile.tc2}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    </Node>


    <Node name="wait-1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-wait-1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="InvokeService_HealthCheck_PASS_again" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>120</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>120</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="InvokeService_HealthCheck_PASS_again" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="70c16865-InvokeService_HealthCheck_PASS_again" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="HealthCheckResponse/applicationName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/applicationName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@applicationName=&quot;BAT8.1_SOAP2JavaCallJava3Stop_Client&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;Passed&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Service/nodeName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check Service/nodeName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Service&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java1&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java2&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="ComponentReference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is ComponentReference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;ComponentReference&quot;]/@name=&quot;HelloWorldPT&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Reference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is Reference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Reference&quot;]/@name=&quot;HelloWorldPT/SOAPReference_Binding1&quot;</xpathq>
</CheckResult>

<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>checkHealth</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlYWw9Imh0dHA6Ly93d3cudGliY28uY29tL2hlYWx0aGNoZWNrLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxoZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgICAgICAgIDxob3BzPjE8L2hvcHM+DQogICAgICA8L2hlYWw6SGVhbHRoQ2hlY2tSZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.app.log</value>
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="70c16865-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="70c16865-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="D51034AFB72711ED888D506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
