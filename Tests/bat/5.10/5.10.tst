<?xml version="1.0" ?>

<TestCase name="5.10" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/18/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/18/2023" host="na2devasgaks01" />
</meta>

<id>9b080233</id>
<Documentation>Description : Test Resources Templates in Java component: JMS, Teneo (-&gt; Hibernate -&gt; JDBC).&#13;&#10;              Import RT from DAA is false. All RT are create and installed via CLI.&#13;&#10;              &#13;&#10;Scenario: Composite: &#13;&#10;            SOAP BT(HTTP) &lt;-&gt; Java1(Teneo RT) &lt;-&gt; Java2(JMS RT)&#13;&#10;            &#13;&#10;&#13;&#10;MEP: In-Out&#13;&#10;&#13;&#10;JMS RT with inline credential&#13;&#10;JDBC RT with keystore credential</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE0MTY4MDM2NA==</sig>
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
          uid="A2956A87971211ED8E7C506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteJMSQueue1" > 

<file>{{LISA_TC_PATH}}/data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deleteJMSQueue1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-deleteJMSQueue1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteJMSQueue2" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{jmshost}}:{{jmsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{jmsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{jmspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName1}}</value>
    <name>Queue name to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteJMSQueue2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-deleteJMSQueue2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createJndiName1" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{jmshost}}:{{jmsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{jmsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{jmspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName2}}</value>
    <name>Queue name to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createJndiName1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createJndiName1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createJndiName2" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{jndihost}}:{{jndiport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{jndiuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{jndipwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName1}}</value>
    <name>Queue name to be created</name>
    </Parameter>
    <Parameter>
    <key>jndiName</key>
    <value>{{jndiName1}}</value>
    <name>JNDI name to which the queue will be bound. Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createJndiName2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createJndiName2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{jndihost}}:{{jndiport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{jndiuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{jndipwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName2}}</value>
    <name>Queue name to be created</name>
    </Parameter>
    <Parameter>
    <key>jndiName</key>
    <value>{{jndiName2}}</value>
    <name>JNDI name to which the queue will be bound. Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSOAPService" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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


    <Node name="invokeSOAPService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="9b080233-invokeSOAPService" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Test for response from Teneo" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{teneoResp}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{teneoResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Test for response from Jms" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{jmsResp}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsResp}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/helloPT/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3BlIHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6Qm9keT4NCiAgICA8SGVsbG9SZXF1ZXN0IHhtbG5zPSJodHRwOi8vbnMudGliY28uY29tL0hlbGxvLyI+e3tmaXJzdE5hbWV9fTwvSGVsbG9SZXF1ZXN0Pg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4NCg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.log</value>
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
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
          uid="9b080233-Re-Deploy" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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


    <Node name="invokeJmsService" log=""
          type="com.itko.lisa.esb.tibco.TibcoEMSStep" 
          version="1" 
          uid="9b080233-invokeJmsService" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeJmsService2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for JMS response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{jmsServiceResp}}&apos; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsServiceResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for SMTP response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{smtpResp}}&apos; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{smtpResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for LDAP response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{ldapResp}}&apos; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{ldapResp}}</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>true</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l2c772763cec4573904c9f144b77f3d8d91d6e7063691bb41e591108862f1a545319073fa63d5bc2708ab33</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqCreatePublishDestination>false</mqCreatePublishDestination>
<mqCreateSubscribeDestination>false</mqCreateSubscribeDestination>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<mqSubscribeExtMsgProperties>
</mqSubscribeExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<tibRvCmRequestOld>true</tibRvCmRequestOld>
<tibRvCmLedgerSync>false</tibRvCmLedgerSync>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd_enc>l8037a7e1b2572931623699d73d7cacd2e7c3b56f739741de1800b562ae15409889234378f6e2b872b615</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<pubDestination>{{queueName2}}</pubDestination>
<subDestType>Queue</subDestType>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;ns1:SRTestRequest xmlns:ns1 = &quot;http://www.tibco.com/SRTest/&quot;&gt;&#13;&#10;    &lt;toAddress&gt;{{toAddress}}&lt;/toAddress&gt;&#13;&#10;    &lt;fromAddress&gt;{{fromAddress}}&lt;/fromAddress&gt;&#13;&#10;    &lt;ldapQuery&gt;{{ldapQuery}}&lt;/ldapQuery&gt;&#13;&#10;    &lt;message&gt;{{message}}&lt;/message&gt;&#13;&#10;&lt;/ns1:SRTestRequest&gt;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="invokeJmsService2" log=""
          type="com.itko.lisa.esb.tibco.TibcoEMSStep" 
          version="1" 
          uid="9b080233-invokeJmsService2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 

<Documentation>Invoke a second time</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for JMS response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{jmsServiceResp}}&apos; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsServiceResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for SMTP response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{smtpResp}}&apos; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{smtpResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for LDAP response" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{ldapResp}}&apos; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{ldapResp}}</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>true</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l7724b174f3c97dbbb534fb4736251a46c9d4886fc8723ec814fb56753d0edf785e04ff080aaff0a0872f05</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqCreatePublishDestination>false</mqCreatePublishDestination>
<mqCreateSubscribeDestination>false</mqCreateSubscribeDestination>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<mqSubscribeExtMsgProperties>
</mqSubscribeExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<tibRvCmRequestOld>true</tibRvCmRequestOld>
<tibRvCmLedgerSync>false</tibRvCmLedgerSync>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd_enc>lba1d5d3186af47a6829b3b3b441c2b6caeb51fe44f60cb60c3df92cb27603e64d652bd92797547e57abc</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<pubDestination>{{queueName2}}</pubDestination>
<subDestType>Queue</subDestType>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;ns1:SRTestRequest xmlns:ns1 = &quot;http://www.tibco.com/SRTest/&quot;&gt;&#13;&#10;    &lt;toAddress&gt;{{toAddress}}&lt;/toAddress&gt;&#13;&#10;    &lt;fromAddress&gt;{{fromAddress}}&lt;/fromAddress&gt;&#13;&#10;    &lt;ldapQuery&gt;{{ldapQuery}}&lt;/ldapQuery&gt;&#13;&#10;    &lt;message&gt;{{message}}&lt;/message&gt;&#13;&#10;&lt;/ns1:SRTestRequest&gt;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="8E94873A971111ED8E7C506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="9b080233-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="9b080233-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
