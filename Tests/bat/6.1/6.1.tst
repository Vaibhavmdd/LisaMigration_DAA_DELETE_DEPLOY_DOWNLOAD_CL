<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon Oct 24 12:42:48 PDT 2011 -->


<TestCase name="6.1" version="2">
<id>2d8d8cc6</id>
<Documentation>Exercise Custom Mediation Task&#13;&#10;Exercise Mediation Faults: Declared Fault, Undeclared Fault, MediationTask Fault, MediationTaskRuntime Fault, Timeout Fault (triggered by by Socket Timeout in HTTP Client).&#13;&#10;&#13;&#10;Scenario: SOAP BT (HTTP) &lt;-&gt; Mediation (with CMT) &lt;-&gt; SOAP BT (HTTP) &lt;-&gt; BW&#13;&#10;&#13;&#10;Set enterprise-level Sub Vars&#13;&#10;Deploy, Invoke, Undeploy, Redeploy, Invoke again.&#13;&#10;Clean up everyhing at the end</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE0NDEwMzkzMjk=</sig>
<rootNode>deployApp</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnector_helloWorld_RI</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnector_helloWorld_RT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invok-HelloWorldService.rsp</key>
    <value>Set in Step Invok-HelloWorldService</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invok-HelloWorldService.rsp.time</key>
    <value>Set in Step Invok-HelloWorldService</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployCMTApp.rsp.time</key>
    <value>Set in Step deployCMTApp</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_DeclaredFault.rsp</key>
    <value>Set in Step InvokeService_DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_DeclaredFault.rsp.time</key>
    <value>Set in Step InvokeService_DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_MediationTaskFault.rsp</key>
    <value>Set in Step InvokeService_MediationTaskFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_MediationTaskFault.rsp.time</key>
    <value>Set in Step InvokeService_MediationTaskFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_MediationTaskRuntimeFault.rsp</key>
    <value>Set in Step InvokeService_MediationTaskRuntimeFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_MediationTaskRuntimeFault.rsp.time</key>
    <value>Set in Step InvokeService_MediationTaskRuntimeFault</value>
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
    <key>lisa.undeployCMTApp.rsp</key>
    <value>Set in Step undeployCMTApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployCMTApp.rsp.time</key>
    <value>Set in Step undeployCMTApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_UndeclaredFault.rsp</key>
    <value>Set in Step InvokeService_UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_UndeclaredFault.rsp.time</key>
    <value>Set in Step InvokeService_UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>tenDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPort</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenInhMap</key>
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
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapPwd</key>
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
    <key>hibDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacConfName</key>
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
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapProUrl</key>
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
    <key>smtpHost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcPwd</key>
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
    <key>tenSchemaGen</key>
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
    <key>smtpPwd</key>
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
    <key>tenDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeSevice_TimeOutFault.rsp</key>
    <value>Set in Step InvokeSevice_TimeOutFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeSevice_TimeOutFault.rsp.time</key>
    <value>Set in Step InvokeSevice_TimeOutFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyLog_TimeOutFault.rsp</key>
    <value>Set in Step VerifyLog_TimeOutFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyLog_TimeOutFault.rsp.time</key>
    <value>Set in Step VerifyLog_TimeOutFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp2.rsp</key>
    <value>Set in Step deployApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp2.rsp.time</key>
    <value>Set in Step deployApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_DeclaredFault2.rsp</key>
    <value>Set in Step InvokeService_DeclaredFault2</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_DeclaredFault2.rsp.time</key>
    <value>Set in Step InvokeService_DeclaredFault2</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_UndeclaredFault2.rsp</key>
    <value>Set in Step InvokeService_UndeclaredFault2</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_UndeclaredFault2.rsp.time</key>
    <value>Set in Step InvokeService_UndeclaredFault2</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp2.rsp</key>
    <value>Set in Step undeployApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp2.rsp.time</key>
    <value>Set in Step undeployApp2</value>
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
    <key>lisa.sleep.rsp</key>
    <value>Set in Step sleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.sleep.rsp.time</key>
    <value>Set in Step sleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.Re-Deploy.rsp</key>
    <value>Set in Step Re-Deploy</value>
    </Parameter>
    <Parameter>
    <key>lisa.Re-Deploy.rsp.time</key>
    <value>Set in Step Re-Deploy</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
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
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql_cdc.config</doc>
</Configuration>
<Configuration>
<name>silver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../silver/1machine_2node.config</doc>
</Configuration>
</Configurations>
    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="confLogging" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="confLogging" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_DeclaredFault" > 

<graphx>1885</graphx>
<graphy>4145</graphy>
<Documentation>Configure Log at App level.</Documentation>
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
<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultContains">
<log>Logging Configuration failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_DeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_UndeclaredFault" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e2RlY2xhcmVk
ZmF1bHRfbmFtZX19PC9hZGQ6TmFtZT4NCiAgICAgICAgIDxhZGQ6QWRkcmVzcz57e2FkZHJlc3N9
fTwvYWRkOkFkZHJlc3M+DQogICAgICAgICA8YWRkOkNpdHk+e3tjaXR5fX08L2FkZDpDaXR5Pg0K
ICAgICAgICAgPGFkZDpTdGF0ZT57e3N0YXRlfX08L2FkZDpTdGF0ZT4NCiAgICAgICAgIDxhZGQ6
WmlwPnt7emlwfX08L2FkZDpaaXA+DQogICAgICA8L2FkZDpBZGRyZXNzX0VsZW1lbnQ+DQogICA8
L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert159" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert159] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>declaredfaultstring</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_UndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_MediationTaskFault" > 

<graphx>250</graphx>
<graphy>250</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e3VuZGVjbGFy
ZWRmYXVsdF9uYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVz
c319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgIDxhZGQ6Q2l0eT57e2NpdHl9fTwvYWRkOkNpdHk+
DQogICAgICAgICA8YWRkOlN0YXRlPnt7c3RhdGV9fTwvYWRkOlN0YXRlPg0KICAgICAgICAgPGFk
ZDpaaXA+e3t6aXB9fTwvYWRkOlppcD4NCiAgICAgIDwvYWRkOkFkZHJlc3NfRWxlbWVudD4NCiAg
IDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert196" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert196] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>undeclaredfaultstring</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_MediationTaskFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_MediationTaskRuntimeFault" > 

<graphx>490</graphx>
<graphy>490</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e21lZGlhdGlv
bnRhc2tmYXVsdF9uYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRk
cmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgIDxhZGQ6Q2l0eT57e2NpdHl9fTwvYWRkOkNp
dHk+DQogICAgICAgICA8YWRkOlN0YXRlPnt7c3RhdGV9fTwvYWRkOlN0YXRlPg0KICAgICAgICAg
PGFkZDpaaXA+e3t6aXB9fTwvYWRkOlppcD4NCiAgICAgIDwvYWRkOkFkZHJlc3NfRWxlbWVudD4N
CiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert234" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert234] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>mediationtaskfault</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_MediationTaskRuntimeFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeSevice_TimeOutFault" > 

<graphx>730</graphx>
<graphy>730</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e21lZGlhdGlv
bnRhc2tydW50aW1lRmF1bHRfbmFtZX19PC9hZGQ6TmFtZT4NCiAgICAgICAgIDxhZGQ6QWRkcmVz
cz57e2FkZHJlc3N9fTwvYWRkOkFkZHJlc3M+DQogICAgICAgICA8YWRkOkNpdHk+e3tjaXR5fX08
L2FkZDpDaXR5Pg0KICAgICAgICAgPGFkZDpTdGF0ZT57e3N0YXRlfX08L2FkZDpTdGF0ZT4NCiAg
ICAgICAgIDxhZGQ6WmlwPnt7emlwfX08L2FkZDpaaXA+DQogICAgICA8L2FkZDpBZGRyZXNzX0Vs
ZW1lbnQ+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert270" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert270] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Caused by mediation task runtime exception &apos;java.lang.NullPointerException&apos; that occurred in the mediation path.</param>
</CheckResult>

    </Node>


    <Node name="InvokeSevice_TimeOutFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="sleep" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e3RpbWVvdXRG
YXVsdF9uYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319
PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgIDxhZGQ6Q2l0eT57e2NpdHl9fTwvYWRkOkNpdHk+DQog
ICAgICAgICA8YWRkOlN0YXRlPnt7c3RhdGV9fTwvYWRkOlN0YXRlPg0KICAgICAgICAgPGFkZDpa
aXA+e3t6aXB9fTwvYWRkOlppcD4NCiAgICAgIDwvYWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgIDwv
c29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert270" type="com.itko.lisa.test.CheckResultContains">
<log>&apos;{{timeoutMsg}}&apos; not found in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{timeoutMsg}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert134" type="com.itko.lisa.test.AssertLastNodeResponseTime">
<log>SOAP response time was expected between 5s and 15s (since timeout is 10s) but was not within that range</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <lowthresh>5000</lowthresh>
        <highthresh>15000</highthresh>
</CheckResult>

    </Node>


    <Node name="sleep" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="VerifyLog_TimeOutFault" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation>Sleep a few secods before readig the log just to make sure it has time to write in there.</Documentation>
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
    <value>2</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>2</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="VerifyLog_TimeOutFault" log=""
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
    <value>{{logappender.file.location}}/BAT61_Application.log</value>
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
<CheckResult assertTrue="false" name="Assert227" type="com.itko.lisa.test.CheckResultContains">
<log>&apos;TimeOutFaultLog&apos; not found in log file</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>TimeOutFaultLog</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert157" type="com.itko.lisa.test.CheckResultContains">
<log>&quot;{{timeoutMsg}}&quot; not found in Mediation LogTask content</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{timeoutMsg}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployApp2" > 

<graphx>550</graphx>
<graphy>0</graphy>
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
    <value>{{tibco.test.case.log.dir}}/antUndeploy.log</value>
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
    <value>310</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert147" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployApp2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_DeclaredFault2" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
    <value>{{tibco.test.case.log.dir}}/antDeploy2.log</value>
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
<CheckResult assertTrue="false" name="Assert245" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_DeclaredFault2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_UndeclaredFault2" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e2RlY2xhcmVk
ZmF1bHRfbmFtZX19PC9hZGQ6TmFtZT4NCiAgICAgICAgIDxhZGQ6QWRkcmVzcz57e2FkZHJlc3N9
fTwvYWRkOkFkZHJlc3M+DQogICAgICAgICA8YWRkOkNpdHk+e3tjaXR5fX08L2FkZDpDaXR5Pg0K
ICAgICAgICAgPGFkZDpTdGF0ZT57e3N0YXRlfX08L2FkZDpTdGF0ZT4NCiAgICAgICAgIDxhZGQ6
WmlwPnt7emlwfX08L2FkZDpaaXA+DQogICAgICA8L2FkZDpBZGRyZXNzX0VsZW1lbnQ+DQogICA8
L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert259" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert259] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>declaredfaultstring</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_UndeclaredFault2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp2" > 

<graphx>250</graphx>
<graphy>250</graphy>
<url>http://{{host1}}:8877/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e3VuZGVjbGFy
ZWRmYXVsdF9uYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVz
c319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgIDxhZGQ6Q2l0eT57e2NpdHl9fTwvYWRkOkNpdHk+
DQogICAgICAgICA8YWRkOlN0YXRlPnt7c3RhdGV9fTwvYWRkOlN0YXRlPg0KICAgICAgICAgPGFk
ZDpaaXA+e3t6aXB9fTwvYWRkOlppcD4NCiAgICAgIDwvYWRkOkFkZHJlc3NfRWxlbWVudD4NCiAg
IDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert296" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert296] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>undeclaredfaultstring</param>
</CheckResult>

    </Node>


    <Node name="undeployApp2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Re-Deploy" > 

<graphx>550</graphx>
<graphy>0</graphy>
<Documentation></Documentation>
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
    <value>{{tibco.test.case.log.dir}}/antUndeploy2.log</value>
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
    <value>310</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert247" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
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

<graphx>130</graphx>
<graphy>130</graphy>
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
<log>Deployment failed</log>
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

<graphx>370</graphx>
<graphy>370</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


</TestCase>
