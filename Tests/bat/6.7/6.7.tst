<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Sat Sep 08 21:46:13 PDT 2012 -->


<TestCase name="6.7" version="2">
<id>2d8d8cc6</id>
<Documentation>Adapter BT with RV transport (Reliable Message)&#13;&#10;Set RV parameter in CLI for Adapter Reference&#13;&#10;&#13;&#10;Scenario: AdapterBT (RV) &lt;-&gt; Mediation &lt;-&gt; AdapterBT (RV) &lt;-&gt; BW GAC&#13;&#10;MEP: In-Out&#13;&#10;&#13;&#10;Deploy Adapter BT&#13;&#10;Deploy user App&#13;&#10;Invoke twice&#13;&#10;Undeploy-Redeploy User App&#13;&#10;Invoke again</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xOTAyNzkzMzQy</sig>
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
    <key>lisa.deployApp1.rsp</key>
    <value>Set in Step deployApp1</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp1.rsp.time</key>
    <value>Set in Step deployApp1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService1.rsp</key>
    <value>Set in Step invokeService1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService1.rsp.time</key>
    <value>Set in Step invokeService1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResponse1.rsp</key>
    <value>Set in Step getResponse1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResponse1.rsp.time</key>
    <value>Set in Step getResponse1</value>
    </Parameter>
    <Parameter>
    <key>lisa.startRVListen1.rsp</key>
    <value>Set in Step startRVListen1</value>
    </Parameter>
    <Parameter>
    <key>lisa.startRVListen1.rsp.time</key>
    <value>Set in Step startRVListen1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResponse2.rsp</key>
    <value>Set in Step getResponse2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResponse2.rsp.time</key>
    <value>Set in Step getResponse2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService2.rsp</key>
    <value>Set in Step invokeService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService2.rsp.time</key>
    <value>Set in Step invokeService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp2.rsp.time</key>
    <value>Set in Step deployApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService3.rsp.time</key>
    <value>Set in Step invokeService3</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp2.rsp.time</key>
    <value>Set in Step undeployApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResponse3.rsp.time</key>
    <value>Set in Step getResponse3</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp2.rsp</key>
    <value>Set in Step undeployApp2</value>
    </Parameter>
</resultState>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/App/cli_data.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/App/build.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
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
          next="deployApp1" > 

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


    <Node name="deployApp1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="startRVListen1" > 

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


    <Node name="startRVListen1" log=""
          type="com.itko.lisa.esb.tibco.TibcoRVStep" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService1" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubWithTrans>false</pubWithTrans>
<subWithTrans>false</subWithTrans>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>TIBRV</connectionType>
<lisa.prefill.jndiServerPWD_enc>f5504e2d23a7888253a27e8ef52607d8</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7500</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>false</secondLevelAuthEnabled>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<pubDestType>Queue</pubDestType>
<pubDestination>bat67.service</pubDestination>
<subDestType>Queue - ASYNC</subDestType>
<subDestination>bat67.service.reply</subDestination>
<subTimeout>30</subTimeout>
<repDestination>bat67.service.reply</repDestination>
<repDestType>Queue</repDestType>
<sendMsgType>Mapped (Extended)</sendMsgType>
<sendMessage>message</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>bat67.key.1</asyncPropKey>
    <mappedMessage>
    <type>3</type>
    <mappedField>
    <fieldName>^pfmt^</fieldName>
    <fieldType>Integer</fieldType>
    <fieldValue>10</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>^ver^</fieldName>
    <fieldType>Integer</fieldType>
    <fieldValue>30</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>^type^</fieldName>
    <fieldType>Integer</fieldType>
    <fieldValue>1</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>^encoding^</fieldName>
    <fieldType>Integer</fieldType>
    <fieldValue>2</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>^prefixList^</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>{default=&quot;/tibco/public/class/ae/GACSchemas&quot;}</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>^tracking^</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>{^id^=&quot;JwRlFxGTcSWMDkLfQ5SKc52-5sg&quot; ^1^=&quot;BW.7.6_GacOutIn.RequestToMatrix.process.Job-8000&quot;}</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>^data^</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>{^class^=&quot;^request^QueryExternalCustomer^QueryExternalCustomer&quot; CustomerNumber=&quot;TIBCO&quot;}</fieldValue>
    </mappedField>
    </mappedMessage>
    </Node>


    <Node name="invokeService1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getResponse1" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation>Define TIBCO_RV_HOME_2 as RV 32-bit to be loaded by LISA (LISA cannot load 64-bit RV on Windows since it does not work with Java 64-bit - see ticket ITKO-6129)&#13;&#10;Define TIBCO_RV_HOME as RV 32-bit or 64-bit to be loaded respectively by AMX 32-bit or 64-bit</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv/RVScript.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>rvHome</key>
    <value>{{=(testExec.getStateObject(&quot;TIBCO_RV_HOME_2&quot;) != null &amp;&amp; !testExec.getStateObject(&quot;TIBCO_RV_HOME_2&quot;).equals(&quot;&quot;))?TIBCO_RV_HOME_2:TIBCO_RV_HOME;}}</value>
    <name>RV Home </name>
    </Parameter>
    <Parameter>
    <key>rvScriptFile</key>
    <value>{{LISA_TC_PATH}}/BAT_6.7_input{{g11n}}.rvs</value>
    <name>RV script location</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{tibco.test.suite.log.dir}}</value>
    <name>Directory where to start RVScript (license file will be generated in there)</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Number of seconds to wait for completion (if waitForCompletion is true) before timing out</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for RVScript to complete or not</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getResponse1" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<wrapperKeyName>bat67.key.1</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert149" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert149] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{InputCustomerID}}</param>
</CheckResult>

    </Node>


    <Node name="invokeService2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getResponse2" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation>Define TIBCO_RV_HOME_2 as RV 32-bit to be loaded by LISA (LISA cannot load 64-bit RV on Windows since it does not work with Java 64-bit - see ticket ITKO-6129)&#13;&#10;Define TIBCO_RV_HOME as RV 32-bit or 64-bit to be loaded respectively by AMX 32-bit or 64-bit</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv/RVScript.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>rvHome</key>
    <value>{{=(testExec.getStateObject(&quot;TIBCO_RV_HOME_2&quot;) != null &amp;&amp; !testExec.getStateObject(&quot;TIBCO_RV_HOME_2&quot;).equals(&quot;&quot;))?TIBCO_RV_HOME_2:TIBCO_RV_HOME;}}</value>
    <name>RV Home </name>
    </Parameter>
    <Parameter>
    <key>rvScriptFile</key>
    <value>{{LISA_TC_PATH}}/BAT_6.7_input{{g11n}}.rvs</value>
    <name>RV script location</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{tibco.test.suite.log.dir}}</value>
    <name>Directory where to start RVScript (license file will be generated in there)</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for RVScript to complete or not</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Number of seconds to wait for completion (if waitForCompletion is true) before timing out</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getResponse2" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployApp2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<wrapperKeyName>bat67.key.1</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert249" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert249] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{InputCustomerID}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployApp2" > 

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
<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultContains">
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
          next="invokeService3" > 

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
<CheckResult assertTrue="false" name="Assert245" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="invokeService3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getResponse3" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation>Define TIBCO_RV_HOME_2 as RV 32-bit to be loaded by LISA (LISA cannot load 64-bit RV on Windows since it does not work with Java 64-bit - see ticket ITKO-6129)&#13;&#10;Define TIBCO_RV_HOME as RV 32-bit or 64-bit to be loaded respectively by AMX 32-bit or 64-bit</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv/RVScript.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>rvHome</key>
    <value>{{=(testExec.getStateObject(&quot;TIBCO_RV_HOME_2&quot;) != null &amp;&amp; !testExec.getStateObject(&quot;TIBCO_RV_HOME_2&quot;).equals(&quot;&quot;))?TIBCO_RV_HOME_2:TIBCO_RV_HOME;}}</value>
    <name>RV Home </name>
    </Parameter>
    <Parameter>
    <key>rvScriptFile</key>
    <value>{{LISA_TC_PATH}}/BAT_6.7_input{{g11n}}.rvs</value>
    <name>RV script location</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{tibco.test.suite.log.dir}}</value>
    <name>Directory where to start RVScript (license file will be generated in there)</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for RVScript to complete or not</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Number of seconds to wait for completion (if waitForCompletion is true) before timing out</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getResponse3" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<wrapperKeyName>bat67.key.1</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert349" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert349] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{InputCustomerID}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp2" log=""
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
