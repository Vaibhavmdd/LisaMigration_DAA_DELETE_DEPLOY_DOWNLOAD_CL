<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Sat Sep 08 21:49:30 PDT 2012 -->


<TestCase name="6.10" version="2">
<id>2d8d8cc6</id>
<Documentation>Adapter BT with JMS transport&#13;&#10;&#13;&#10;Scenario: SOAPBT (HTTP) &lt;-&gt; Mediation &lt;-&gt; AdapterBT (JMS) &lt;-&gt; BW GAC&#13;&#10;MEP: In-Out&#13;&#10;&#13;&#10;Deploy Adapter BT&#13;&#10;Import JMS resources from design-time&#13;&#10;Set Sub Var for JNDI connection&#13;&#10;Set rpcTimeout in CLI for Adapter Reference&#13;&#10;Deploy user App&#13;&#10;Invoke Service&#13;&#10;Invoke Service for declared fault&#13;&#10;Invoke Service for undeclared fault&#13;&#10;Invoke Service for timeout&#13;&#10;Undeploy App and Adapter BT&#13;&#10;Clean up RT, SubVar</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS03NTgzNjQ1</sig>
<rootNode>deployAdapterBT</rootNode>
<subprocess>false</subprocess>

<initState>
    <Parameter>
    <key>RAND1</key>
    <value></value>
    </Parameter>
</initState>

<resultState>
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
    <key>lisa.InvokeService_DeclaredFault.rsp</key>
    <value>Set in Step InvokeService_DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_DeclaredFault.rsp.time</key>
    <value>Set in Step InvokeService_DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.secure</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.jmx.secure</key>
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
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amf.node.type</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.userName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.security.keystore.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port5</key>
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
    <key>ldapProUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.trinity.tcs.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.notificationTransport.impl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.security.keystore.type</key>
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
    <key>amx.th.qin.server.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.trinity.tcs.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.process.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
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
    <key>amx.th.qin.recovery_attempt_delay</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.backoffInterval</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.recovery_timer_timeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmxport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amf.node.type.version</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.startupInterval</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.hpa.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.groupName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.qin.pass</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.hpa.jmx.interface</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmxhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.security.keystore.file</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.th.trinity.tcs.user</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.deploy_app.rsp</key>
    <value>Set in Step deploy_app</value>
    </Parameter>
    <Parameter>
    <key>lisa.deploy_app.rsp.time</key>
    <value>Set in Step deploy_app</value>
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
    <key>tibco.amx.rt.jdbc1.direct.jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.Dialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dataSor</key>
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
    <key>tibco.amx.rt.jdbc1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>identityProvider</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.dataSor</key>
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
    <key>lisa.Step2.rsp.time</key>
    <value>Set in Step Step2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployAdapterBTApp.rsp</key>
    <value>Set in Step deployAdapterBTApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployAdapterBTApp.rsp.time</key>
    <value>Set in Step deployAdapterBTApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteRVReplyFile2.rsp</key>
    <value>Set in Step deleteRVReplyFile2</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait6.rsp.time</key>
    <value>Set in Step wait6</value>
    </Parameter>
    <Parameter>
    <key>deployOption</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEServiceForDeclaredFault.rsp.time</key>
    <value>Set in Step invokeAEServiceForDeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEService.rsp</key>
    <value>Set in Step invokeAEService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEService.rsp.time</key>
    <value>Set in Step invokeAEService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEServiceForDeclaredFault.rsp</key>
    <value>Set in Step invokeAEServiceForDeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEServiceForUndeclaredFault.rsp.time</key>
    <value>Set in Step invokeAEServiceForUndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEServiceForTimeout.rsp.time</key>
    <value>Set in Step invokeAEServiceForTimeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployUserApp.rsp.time</key>
    <value>Set in Step undeployUserApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.prepareForUndeclaredFault.rsp</key>
    <value>Set in Step prepareForUndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.prepareForUndeclaredFault.rsp.time</key>
    <value>Set in Step prepareForUndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEServiceForUndeclaredFault.rsp</key>
    <value>Set in Step invokeAEServiceForUndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAEServiceForTimeout.rsp</key>
    <value>Set in Step invokeAEServiceForTimeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployUserApp.rsp</key>
    <value>Set in Step undeployUserApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployAdapterBT.rsp</key>
    <value>Set in Step undeployAdapterBT</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployAdapterBT.rsp.time</key>
    <value>Set in Step undeployAdapterBT</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployAdapterBT.rsp</key>
    <value>Set in Step deployAdapterBT</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployAdapterBT.rsp.time</key>
    <value>Set in Step deployAdapterBT</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployUserApp.rsp</key>
    <value>Set in Step deployUserApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployUserApp.rsp.time</key>
    <value>Set in Step deployUserApp</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/app_data.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/app_build.xml</buildfile>
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
    <Node name="deployAdapterBT" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployUserApp" > 

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
    <value>{{tibco.test.case.log.dir}}/antDeployBT.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.bt</value>
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
<CheckResult assertTrue="false" name="Assert144" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployUserApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="purgeBWQueue" > 

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


    <Node name="purgeBWQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeAEService" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation>if purge fails, test case fails since that needs to be created before test case starts.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{jmshost}}:{{jmsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName}}</value>
    <name>Queue name to be purged</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeAEService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeAEServiceForDeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port610}}/bat6_10/</url>
<action>GetEmployeeById</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8RW1wbG95ZWVJZCB4bWxucz0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2dyb3VwIj57e2lkMX19PC9FbXBsb3llZUlkPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29h
cGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert108" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &apos;{{empName}}&apos; in soap response but could not find it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{empName}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert143" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &apos;{{empDate}}&apos; in soap response but could not find it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{empDate}}</param>
</CheckResult>

    </Node>


    <Node name="invokeAEServiceForDeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="prepareForUndeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port610}}/bat6_10/</url>
<action>GetEmployeeById</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8RW1wbG95ZWVJZCB4bWxucz0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2dyb3VwIj57e2lkMn19PC9FbXBsb3llZUlkPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29h
cGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert214" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &apos;{{exceptionName}}&apos; in soap response but could not find it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{exceptionName}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert179" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert179] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{exceptionString}} {{id2}} does not exist.</param>
</CheckResult>

    </Node>


    <Node name="prepareForUndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeAEServiceForUndeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>This step is just there to trigger the right path in the BW process that holds the UndeclaredFault logic.</Documentation>
<url>http://{{host1}}:{{port610}}/bat6_10/</url>
<action>GetEmployeeById</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8RW1wbG95ZWVJZCB4bWxucz0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2dyb3VwIj57e2lkM319PC9FbXBsb3llZUlkPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29h
cGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert208" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &apos;{{empName}}&apos; in soap response but could not find it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{empName}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert243" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &apos;{{empDate}}&apos; in soap response but could not find it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{empDate}}</param>
</CheckResult>

    </Node>


    <Node name="invokeAEServiceForUndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeAEServiceForTimeout" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port610}}/bat6_10/</url>
<action>GetEmployeeById</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8RW1wbG95ZWVJZCB4bWxucz0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2dyb3VwIj57e2lkNH19PC9FbXBsb3llZUlkPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29h
cGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert250" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert250] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>org.osoa.sca.ServiceRuntimeException: java.lang.IllegalStateException</param>
</CheckResult>

    </Node>


    <Node name="invokeAEServiceForTimeout" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployUserApp" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port610}}/bat6_10/</url>
<action>GetEmployeeById</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8RW1wbG95ZWVJZCB4bWxucz0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEv
eHNkL2dyb3VwIj57e2lkNX19PC9FbXBsb3llZUlkPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29h
cGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert289" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert289] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>com.tibco.amf.platform.runtime.extension.exception.TimeoutException</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert324" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert324] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Operation error: failed to get response within the specified time ({{adapterBTTimeout}})</param>
</CheckResult>

    </Node>


    <Node name="undeployUserApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

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
<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="undeployAdapterBT" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

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
    <value>{{tibco.test.case.log.dir}}/antUndeployBT.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>undeploy.bt</value>
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
<CheckResult assertTrue="false" name="Assert246" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
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
