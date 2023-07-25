<?xml version="1.0" ?>

<TestCase name="5.20" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/07/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/07/2023" host="na2devasgaks01" />
</meta>

<id>ab353239</id>
<Documentation>Test AtLeastOnce&#10;Scenario: SOAP BT(HTTP)&lt;-&gt;JAVA1&lt;-&gt;JAVA2&lt;-&gt;JAVA3&#10;&#10;OFF case1: Throw valid business fault from Java2 - No atleastOnce functionality should kick in. User should get the valid fault back.&#10;ON case2: Throw Undeclared fault from Java1 - after 5 tries - message should be moved to queue - Java1_atLeastOnce&#10;OFF case3: After say 2 retries, throw an exception specified to stop the delivery from Java1 - Redelivery should be stopped and message should be immediately moved to the Java1_atLeastOnce&#10;OFF case4: Throw Undeclared fault from Java3 - after 3 retries - retries should stop and since no error queue is specified - message should not be moved to any queue&#10;OFF case5: Throw Undeclared fault from Java2 - message should never be moved to default queue - 0 retries indicates infinite tries - wait for 7 retries and then you can declare this scenario passed.&#10;&#10;Configuration:&#10;&#10;Java 1 Component Service / SOAP Service :&#10;Retry count : 5&#10;Delay - 30 sec&#10;Enable Error Queue : Yes&#10;Exception Upon which to stop the redelivery : Specify any valid undeclared Java Exception&#10;Queue name : Java1_atLeastOnce&#10;Transactional : No&#10;&#10;Java 2 Component Service / Java 1 Component Reference :&#10;Retry count : 0&#10;Delay - 15 sec&#10;Enable Error Queue : Yes&#10;Queue name : Default&#10;Transactional : No&#10;&#10;Java 3 Component Service / Java 2 Component Reference :&#10;Retry count : 3&#10;Delay - 15 sec&#10;Enable Error Queue : No</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTc2NjY3NjMxNA==</sig>
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

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="ab353239-PropReaderStep" 
          think="" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrorQueue" > 

<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deleteErrorQueue" log="Deleting the queue which receives error messages from ALO after max retry count is reached; it will be created automatically by the framework."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-deleteErrorQueue" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteResponseQueue" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueError1}}</value>
    <name>Queue name to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteResponseQueue" log="Deleting the queue which receives messages from JAVA IT indicating succesfull (re)delivery attempt"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-deleteResponseQueue" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createResponseQueue" > 

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


    <Node name="createResponseQueue" log="Creating the queue which receives messages from JAVA IT indicating succesfull (re)delivery attempt"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-createResponseQueue" 
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


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="case2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="case2" log="This SOAP request should trigger ALO from the undeclared fault thrown in Java1; after 5 redelivery attempts the message should be moved to the error queue which will be verified in subsequent steps"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="ab353239-case2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="checkQueueCase2Redelivery1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert121] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Caused by: java.lang.NullPointerException: **********  case2 deliveryCount 5  **********</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/newWSDLFile/</url>
<action>NewOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5ldz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9OZXdXU0RMRmlsZS8iPgogICA8c29hcGVudjpIZWFkZXIvPgogICA8c29hcGVudjpCb2R5PgogICAgICA8bmV3Ok5ld09wZXJhdGlvbj4KICAgICAgICAgPGluPmNhc2UyPC9pbj4KICAgICAgPC9uZXc6TmV3T3BlcmF0aW9uPgogICA8L3NvYXBlbnY6Qm9keT4KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="checkQueueCase2Redelivery1" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="ab353239-checkQueueCase2Redelivery1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="checkQueueCase2Redelivery2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 1</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l8689000cd5e7ed05f476de4f9d7a6a55ec35d899d55381206c20a30a935ba9087b437c44017799b3634e</lisa.prefill.jndiServerPWD_enc>
<mqHost></mqHost>
<mqPort></mqPort>
<mqChannel></mqChannel>
<mqQManager></mqQManager>
<mqCCID></mqCCID>
<mqSecurityExit></mqSecurityExit>
<mqSendExit></mqSendExit>
<mqReceiveExit></mqReceiveExit>
<mqConnMode>JMS</mqConnMode>
<mqReplyToQMgrName></mqReplyToQMgrName>
<mqTempQModel></mqTempQModel>
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
<tibRvNetwork></tibRvNetwork>
<tibRvDaemon></tibRvDaemon>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvSendFieldName></tibRvSendFieldName>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<tibRvCmRequestOld>true</tibRvCmRequestOld>
<tibRvCmLedgerSync>false</tibRvCmLedgerSync>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd_enc>l2c6b74c2e978de9c300f77145904b13e0b059bf006a9b2e4b5d8510273eef3e9ab432c0088eabd641783</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerName></wmBrokerName>
<wmBrokerCID></wmBrokerCID>
<wmBrokerClientGroup></wmBrokerClientGroup>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<sonicBrokerUser></sonicBrokerUser>
<sonicBrokerPwd_enc>l1a44c714cab101697a4499267066805280deb985d63527dd925c5abe7a2333dc</sonicBrokerPwd_enc>
<jcapsHost></jcapsHost>
<jcapsPort></jcapsPort>
<pubDestType>Queue</pubDestType>
<pubDestination>ptype1_in_queue</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{jndiName1}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<durableSessionKey></durableSessionKey>
<sendMsgType>Text</sendMsgType>
<sendMessage></sendMessage>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>0</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;_boolean xmlns:SOAP-ENV=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot;&gt;true&lt;/_boolean&gt;</simpleVal>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey></asyncPropKey>
    </Node>


    <Node name="checkQueueCase2Redelivery2" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="ab353239-checkQueueCase2Redelivery2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="checkQueueCase2Redelivery3" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 2</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>lfc4db38591d93af9a54ff06745ba576db200deb6dcb21e2731642cabab54e56422b69a79e7c6a77e391f</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>lecbf2c37a566a8bf7bc60b9f4d5b7429d64a64be1da21cf3b4e7c50811cb6acf4f82c7c1b70cd8dac300</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<pubDestination>ptype1_in_queue</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{jndiName1}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>0</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;_boolean xmlns:SOAP-ENV=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot;&gt;true&lt;/_boolean&gt;</simpleVal>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="checkQueueCase2Redelivery3" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="ab353239-checkQueueCase2Redelivery3" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="checkQueueCase2Redelivery4" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 3</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l7379f0c8a1229cf5aa49777e4fa388ca64ae645aa181c5f8aaa3fc388af3aae312bcd792f2a47a68fa67</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l8f0fabd275b9ddfa121253c3834a09119bc5560fc8145efa49a3e957fdf265e991b4609baa4e75db857c</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<pubDestination>ptype1_in_queue</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{jndiName1}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>0</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;_boolean xmlns:SOAP-ENV=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot;&gt;true&lt;/_boolean&gt;</simpleVal>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="checkQueueCase2Redelivery4" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="ab353239-checkQueueCase2Redelivery4" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="checkQueueCase2Redelivery5" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 4</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>lab358c95c31b99f818fd8c51d9c19429e363b89f24e5d36a2b959b7c57f27ff98f7b341820ab977fcdbf</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l0b64b25b4ac8163489516cd75ae7c38dceba8410797650ca89a19e43e92283cee4619831fe95140d119d</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<pubDestination>ptype1_in_queue</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{jndiName1}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>0</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;_boolean xmlns:SOAP-ENV=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot;&gt;true&lt;/_boolean&gt;</simpleVal>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="checkQueueCase2Redelivery5" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="ab353239-checkQueueCase2Redelivery5" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="checkErrorQueueCase2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 5</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l4d06680f0f491413a21f6e1d1c995ca34dff0a56edb477143b9ac21260b5108457471d502a6facc3669a</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l33727cc429ab267eb1dcb5a83f10cbbe821c64001d388f2202a4152d61fcb19ac6704fbde31f1eb37ff0</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<pubDestination>ptype1_in_queue</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{jndiName1}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>0</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;_boolean xmlns:SOAP-ENV=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot;&gt;true&lt;/_boolean&gt;</simpleVal>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="checkErrorQueueCase2" log="check this error queue to verify that after the max redelivery count was reached, the message got moved to this queue"
          type="com.itko.lisa.esb.tibco.TibcoDirectJMSStep" 
          version="1" 
          uid="ab353239-checkErrorQueueCase2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>DeliveryFailureReason={String:java.lang.NullPointerException: **********  case2 deliveryCount 5  **********</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>false</autoExtractPayLoad>
<pubEnabledType>false</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>false</repTempQ>
<pubSessionMode>AUTO</pubSessionMode>
<subSessionMode>AUTO</subSessionMode>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>TIBEMSDIRECT</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</lisa.prefill.jndiServerURLs>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l117c6c8c7a8f503f9c18d00000ee0eaced243a85642fbe0d92f136d752fe03682b12bf808aede980387a</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthEnabled>false</secondLevelAuthEnabled>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Queue</pubDestType>
<subDestType>Queue</subDestType>
<subDestination>{{queueError1}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Empty</sendMsgType>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>5_13_ASYNC_KEY_1</asyncPropKey>
    </Node>


    <Node name="undeployApp" log="Undeployment deletes the WEATHERREPORT table"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Redeploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert245" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Redeploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-Redeploy" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="AE8F9FBDA77A11EDACB9506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="ab353239-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="ab353239-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
