<?xml version="1.0" ?>

<TestCase name="5.2" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/04/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/27/2023" host="na2devasgaks01" />
</meta>

<id>9b080233</id>
<Documentation>JMS BT Service and Reference.&#13;&#10;JMS RT (not imported from design-time) with inline credentials.&#13;&#10;&#13;&#10;Composite1: &#13;&#10;JMS BT (Topic - Serv1) &lt;-&gt; SPRING &lt;-&gt; JMS BT (Queue - Ref1)&#13;&#10;                       &lt;-&gt; JMS BT (Queue - Ref1)&#13;&#10;Composite2:&#13;&#10;JMS BT (Queue - Serv2) &lt;-&gt; JAVA&#13;&#10;                                     &#13;&#10;JMS Service1 and JMS Ref1 bindings are created in Admin through CLI.&#13;&#10;JMS Service2 and Ref2 are created at design-time.&#13;&#10;&#13;&#10;Project1 is configured for BW Provider for following cases:&#13;&#10;            1) Reference1 calls a BW service that returns a valid response&#13;&#10;            2) Reference1 calls a BW service that returns an error message&#13;&#10;&#9;        3) Spring component returns a runtime exception&#13;&#10;            4) Reference2 calls out to a JMS service within AMX Platform (Composite2)</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9NjA4NjExOTk4</sig>
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
          uid="21DD97658CDB11ED9D3C506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createdaa" > 

<file>C:\Lisa1072\Projects\BATAutomation\Tests\bat\5.2\data_g11n.cfg</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="createdaa" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createdaa" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteAMXTopic" > 

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/design/InvokeEclipseAntWithCondition.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>studioHome</key>
    <value>{{TIBCO_BS_HOME}}</value>
    <name>BusinessStudio home folder. Required.</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDir</key>
    <value>Value</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFile</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value>ImportAndRegenerateDAA</value>
    <name>Name of the build target to be invoked.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value>{{tibco.test.case.log.dir}}/WS</value>
    <name>Absolute path to the eclipse workspace. optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},soa.project.loc={{=soa_project_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},java.project.loc={{=java_project_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},soa.jmsproject.loc={{=soa_jmsproject_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},java.jmsproject.loc={{=java_jmsproject_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},projectName1={{projectName1}},projectName2={{projectName2}},compositeName1={{compositeName1}},daa1={{daa1}},compositeName2={{compositeName2}},daa2={{daa2}},featureid1={{featureid1}},featureid2={{featureid2}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1800</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
    <Parameter>
    <key>userCondition</key>
    <value>{{=(regenerateDAA.equals(true))?true:false}}</value>
    <name>User condition. If assessed to true DAA generation will proceed else skipped</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteAMXTopic" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-deleteAMXTopic" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="purgeBWQueue" > 

<Documentation>This topic is created dynamically by AMX</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteTopic.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>topicName</key>
    <value>{{topicName}}</value>
    <name>Topic name to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="purgeBWQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-purgeBWQueue" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="DeleteAMXQueue" > 

<Documentation>if purge fails, test case fails since that needs to be created before test case starts.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
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
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName1}}</value>
    <name>Queue name to be purged</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="DeleteAMXQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-DeleteAMXQueue" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createTopicAndJndiDestination" > 

<Documentation>This queue is created dynamically by AMX.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{emspwd}}</value>
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


    <Node name="createTopicAndJndiDestination" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createTopicAndJndiDestination" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createQueue1AndJndiDestination" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateTopic.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
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
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>topicName</key>
    <value>{{topicName}}</value>
    <name>Topic name to be created</name>
    </Parameter>
    <Parameter>
    <key>jndiName</key>
    <value>{{jndiTopicName}}</value>
    <name>JNDI name to which the topic will be bound. Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createQueue1AndJndiDestination" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createQueue1AndJndiDestination" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createQueue2AndJndiDestination" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
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
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName1}}</value>
    <name>Queue name to be created</name>
    </Parameter>
    <Parameter>
    <key>jndiName</key>
    <value>{{jndiQueueName1}}</value>
    <name>JNDI name to which the queue will be bound. Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>lisa.log.rsp</save>
</SaveProps>
    </Node>


    <Node name="createQueue2AndJndiDestination" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createQueue2AndJndiDestination" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
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
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{queueName2}}</value>
    <name>Queue name to be created</name>
    </Parameter>
    <Parameter>
    <key>jndiName</key>
    <value>{{jndiQueueName2}}</value>
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
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeJMSServiceForBWServerValidResponse" > 


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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
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
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>{{deployTimeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeJMSServiceForBWServerValidResponse" log=""
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeJMSServiceForBWServerValidResponse" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeJMSServiceForJMS_Java" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Test for response from JMS" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{jmsResp1}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsResp1}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
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
<lisa.prefill.jndiServerPWD_enc>lb759cc70a9e351fd765cfc2ed7bd4e6ff7c63576c53b0d92d398f3700ac9d5e3dc153902672c009d9e5da0</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID></mqCCID>
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
<secondLevelAuthPwd_enc>l660f7fd3d57da0ee61136d8f0cd28652d6cf20ef692d43cd338b692bc536bcd6de20b609124ceeb1fa41</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<sonicBrokerPwd_enc>l9234c73a56ab7d92819f863c9e3ccae643e6008258417f36b7ecfe0fef948fcd</sonicBrokerPwd_enc>
<pubDestType>Topic</pubDestType>
<pubDestination>{{topicName}}</pubDestination>
<subDestType>Queue</subDestType>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version = &quot;1.0&quot; encoding = &quot;UTF-8&quot;?&gt;&#13;&#10;&#9;&#9;&lt;ns1:NewOperation_data xmlns:ns1 = &quot;http://www.example.org/AllMEPsWSDLFile/&quot;&gt;&#13;&#10;&#9;&#9;&#9;&lt;in&gt;{{input1}}&lt;/in&gt;&#13;&#10;&#9;&#9;&lt;/ns1:NewOperation_data&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="invokeJMSServiceForJMS_Java" log=""
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeJMSServiceForJMS_Java" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeJMSServiceForSpringRuntimeException" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Test for response from JMS " type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{jmsResp2}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsResp2}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
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
<lisa.prefill.jndiServerPWD_enc>ldd8d733019ff5223ab52620c87e2b02ebbc8104fa090d724e0f169e15c28dabd2a29aa0161bfad42568ea4</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l6f8d9d0ab78c6f007a40166483cabf94e127a1db126e1f760071a4fd37cd3378edfddb2b0ea243cac55b</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Topic</pubDestType>
<pubDestination>{{topicName}}</pubDestination>
<subDestType>Queue</subDestType>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version = &quot;1.0&quot; encoding = &quot;UTF-8&quot;?&gt;&#13;&#10;&#9;&#9;&lt;ns1:NewOperation_data xmlns:ns1 = &quot;http://www.example.org/AllMEPsWSDLFile/&quot;&gt;&#13;&#10;&#9;&#9;&#9;&lt;in&gt;{{input2}}&lt;/in&gt;&#13;&#10;&#9;&#9;&lt;/ns1:NewOperation_data&gt;&#13;&#10;        &#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="invokeJMSServiceForSpringRuntimeException" log=""
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeJMSServiceForSpringRuntimeException" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeJMSServiceForBWServerInvalidResponse" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Test for response from JMS " type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{jmsResp3}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsResp3}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
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
<lisa.prefill.jndiServerPWD_enc>lc20933a6e286fd68f643978757a5f58e9d70f6a535e939e52a43d7ff75e09902a063d190a6e27a677075c0</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>la201ff5ad781852913a6ee94d897f4da1a82a1bf0e52a3cea47a057ffbf8a104dd56c242554bdc59b92f</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Topic</pubDestType>
<pubDestination>{{topicName}}</pubDestination>
<subDestType>Queue</subDestType>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version = &quot;1.0&quot; encoding = &quot;UTF-8&quot;?&gt;&#13;&#10;&#9;&#9;&lt;ns1:NewOperation_data xmlns:ns1 = &quot;http://www.example.org/AllMEPsWSDLFile/&quot;&gt;&#13;&#10;&#9;&#9;&#9;&lt;in&gt;{{input3}}&lt;/in&gt;&#13;&#10;&#9;&#9;&lt;/ns1:NewOperation_data&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="invokeJMSServiceForBWServerInvalidResponse" log=""
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeJMSServiceForBWServerInvalidResponse" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Test for response from JMS " type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{jmsResp4}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{jmsResp4}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
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
<lisa.prefill.jndiServerPWD_enc>l1174c2deb0bbf4b4480fc249926c4ec8d469bd2b316bed2a4da392cf48d7c65e80542017ed3a02a9a992c5</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>lffbda9b24b58d97c9400febd7fcb5e34b7599e1369882e9d0aecca7beacdbe7c40be8531fdf38ef30dde</secondLevelAuthPwd_enc>
<wmBrokerHost>localhost</wmBrokerHost>
<wmBrokerPort>6849</wmBrokerPort>
<wmBrokerClientAppName>LISA</wmBrokerClientAppName>
<wmBrokerDeliverEnabled>false</wmBrokerDeliverEnabled>
<wmBrokerEventConvertRsp>false</wmBrokerEventConvertRsp>
<wmBrokerEventConvertRspXML>false</wmBrokerEventConvertRspXML>
<sonicBrokerHost>localhost</sonicBrokerHost>
<sonicBrokerPort>2506</sonicBrokerPort>
<pubDestType>Topic</pubDestType>
<pubDestination>{{topicName}}</pubDestination>
<subDestType>Queue</subDestType>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version = &quot;1.0&quot; encoding = &quot;UTF-8&quot;?&gt;&#13;&#10;&#9;&#9;&lt;ns1:NewOperation_data xmlns:ns1 = &quot;http://www.example.org/AllMEPsWSDLFile/&quot;&gt;&#13;&#10;&#9;&#9;&#9;&lt;in&gt;{{input4}}&lt;/in&gt;&#13;&#10;&#9;&#9;&lt;/ns1:NewOperation_data&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 

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
    <value>20</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-undeployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
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
    <value>{{tibco.test.case.log.dir}}/undeployant.log</value>
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
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{deployTimeout}}</value>
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
          think="0" 
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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
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
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>{{deployTimeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="F321B4528CCD11ED9DD2506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

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


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="9b080233-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
