<?xml version="1.0" ?>

<TestCase name="6.2" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/08/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/05/2023" host="na2devasgaks01" />
</meta>

<id>febc86e8</id>
<Documentation>Reliable message intent with Mediation.&#13;&#10;Mediation with Log task, Route task, Transform task, End task, &#13;&#10;In-Only MEP Mediation Interface, In-Only MEP and In-Out MEP Target Interfaces.&#13;&#10;&#13;&#10;Composite: SOAP BT(HTTP) -&gt; Mediation -&gt; Spring&#13;&#10;&#13;&#10;MEP: In-Only and In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTg5MzY3ODA2Mg==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxdata.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="febc86e8-PropReaderStep" 
          think="0" 
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
          uid="febc86e8-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="configureAppLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy failed</log>
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


    <Node name="configureAppLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="febc86e8-configureAppLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invoke1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert345" type="com.itko.lisa.test.CheckResultContains">
<log>App Log Config failed</log>
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
    <value>{{tibco.test.case.log.dir}}/antConfigureAppLog.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>configure.log</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
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


    <Node name="invoke1" log="in-only SOAP-MED-SPRING"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="febc86e8-invoke1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invoke2" > 

<url>http://{{host1}}:{{port2}}/company/</url>
<action>sendCompanyMsg</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnNjaD0iaHR0cDovL3d3dy50aWJjby5jb20vc2NoZW1hcyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxzY2g6Q29tcGFueUluZm8+DQogICAgICAgICA8c2NoOk5hbWU+e3tOYW1lMX19PC9zY2g6TmFtZT4NCiAgICAgICAgIDxzY2g6Q2l0eT57e0NpdHkxfX08L3NjaDpDaXR5Pg0KICAgICAgICAgPHNjaDpaaXA+e3taaXB9fTwvc2NoOlppcD4NCiAgICAgIDwvc2NoOkNvbXBhbnlJbmZvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invoke2" log="in-out SOAP-MED-SPRING with MED ends the exchange on the way back"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="febc86e8-invoke2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invoke3" > 

<url>http://{{host1}}:{{port2}}/company/</url>
<action>sendCompanyMsg</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnNjaD0iaHR0cDovL3d3dy50aWJjby5jb20vc2NoZW1hcyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxzY2g6Q29tcGFueUluZm8+DQogICAgICAgICA8c2NoOk5hbWU+e3tOYW1lMn19PC9zY2g6TmFtZT4NCiAgICAgICAgIDxzY2g6Q2l0eT57e0NpdHkyfX08L3NjaDpDaXR5Pg0KICAgICAgICAgPHNjaDpaaXA+e3taaXB9fTwvc2NoOlppcD4NCiAgICAgIDwvc2NoOkNvbXBhbnlJbmZvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invoke3" log="SOAP-MED-SPRING with declared fault coming from SPRING"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="febc86e8-invoke3" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invoke4" > 

<url>http://{{host1}}:{{port2}}/company/</url>
<action>sendCompanyMsg</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnNjaD0iaHR0cDovL3d3dy50aWJjby5jb20vc2NoZW1hcyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxzY2g6Q29tcGFueUluZm8+DQogICAgICAgICA8c2NoOk5hbWU+e3tOYW1lM319PC9zY2g6TmFtZT4NCiAgICAgICAgIDxzY2g6Q2l0eT57e0NpdHkzfX08L3NjaDpDaXR5Pg0KICAgICAgICAgPHNjaDpaaXA+e3taaXB9fTwvc2NoOlppcD4NCiAgICAgIDwvc2NoOkNvbXBhbnlJbmZvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invoke4" log="SOAP-MED-SPRING with undeclared fault (NPE) coming from SPRING"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="febc86e8-invoke4" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invoke5" > 

<url>http://{{host1}}:{{port2}}/company/</url>
<action>sendCompanyMsg</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnNjaD0iaHR0cDovL3d3dy50aWJjby5jb20vc2NoZW1hcyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxzY2g6Q29tcGFueUluZm8+DQogICAgICAgICA8c2NoOk5hbWU+e3tOYW1lNH19PC9zY2g6TmFtZT4NCiAgICAgICAgIDxzY2g6Q2l0eT57e0NpdHk0fX08L3NjaDpDaXR5Pg0KICAgICAgICAgPHNjaDpaaXA+e3taaXB9fTwvc2NoOlppcD4NCiAgICAgIDwvc2NoOkNvbXBhbnlJbmZvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invoke5" log="In-only call SOAP-MED with a redelivery of message in MED (never reach SPRING)"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="febc86e8-invoke5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 

<url>http://{{host1}}:{{port2}}/company/</url>
<action>sendCompanyMsg</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnNjaD0iaHR0cDovL3d3dy50aWJjby5jb20vc2NoZW1hcyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxzY2g6Q29tcGFueUluZm8+DQogICAgICAgICA8c2NoOk5hbWU+e3tOYW1lNX19PC9zY2g6TmFtZT4NCiAgICAgICAgIDxzY2g6Q2l0eT57e0NpdHk1fX08L3NjaDpDaXR5Pg0KICAgICAgICAgPHNjaDpaaXA+e3taaXB9fTwvc2NoOlppcD4NCiAgICAgIDwvc2NoOkNvbXBhbnlJbmZvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="febc86e8-wait" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyLogFile" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyLogFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="febc86e8-verifyLogFile" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for response1" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{nodeResp1}}&apos; from Invoke1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{nodeResp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for response2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{nodeResp2}}&apos; from invoke2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{nodeResp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for response3" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{nodeResp3}}&apos; from Invoke3</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{nodeResp3}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for response4" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{nodeResp4}}&apos; from Invoke4</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{nodeResp4}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for response5" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{nodeResp5}}&apos; from Invoke5</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{nodeResp5}}</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{logappender.file.location}}/BAT62.log</value>
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
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="febc86e8-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert245" type="com.itko.lisa.test.CheckResultContains">
<log>Undeploy failed</log>
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
    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="febc86e8-Re-Deploy" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy failed</log>
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
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="F5C289B2A83A11EDA387506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="febc86e8-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="febc86e8-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
