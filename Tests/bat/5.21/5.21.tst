<?xml version="1.0" ?>

<TestCase name="5.21" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/07/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/07/2023" host="na2devasgaks01" />
</meta>

<id>9b080233</id>
<Documentation>SOAPException with SOAP/JMS&#13;&#10;Comp1:SOAP(JMS)&lt;-&gt;JAVA1&lt;-&gt;JAVA2&lt;-&gt;SOAP(JMS)&#13;&#10;Comp2:SOAP(JMS)&lt;-&gt;JAVA3&#13;&#10;&#13;&#10;1. Java3 throws undeclared. &#13;&#10;Caught by Java2 that throws a SOAPException with custom faultcode/faultrole&#13;&#10;Caught by Java1 that throws SOAPException with new faultcode/faultrole&#13;&#10;2. Same but use SOAPException constructor to have faultcode as string&#13;&#10;3. Java3 throws declared with null details&#13;&#10;Java2 receives it as SOAPException&#13;&#10;Caught by Java1 that throws the same&#13;&#10;4. Java1 throws SOAPException</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTEyMTU0MjU3Njc=</sig>
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
          uid="9b080233-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteJMSQueue1" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deleteJMSQueue1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-deleteJMSQueue1" 
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
    <value>{{queueName1}}</value>
    <name>Queue name to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>lisa.end.rsp</save>
</SaveProps>
    </Node>


    <Node name="createJndiName1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-createJndiName1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteJMSQueue2" > 

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


    <Node name="deleteJMSQueue2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-deleteJMSQueue2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createJndiName2" > 

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
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService-Case1" > 


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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeService-Case1" log="In Java3 throw undeclared fault1. Catch it in Java2 and throw soapException after setting faultcode and faultrole, Catch fault thrown by Java2 in Java1 and set new faultcode and faultrole and throw SOAPException to the client"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeService-Case1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService-Case2" > 

<Documentation>In Java3 throw undeclared fault1.&#13;&#10;Catch it in Java2 and throw soapException after setting faultcode and faultrole,&#13;&#10;Catch fault thrown by Java2 in Java1 and set new faultcode and faultrole and throw SOAPException to the client</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert155" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case1resp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert116" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert116] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case1resp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert152" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert152] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case1resp3}}</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>true</repEnabledType>
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
<lisa.prefill.jndiServerPWD_enc>l080f8c4491619c385b9b1b3e855d51cc0d48a414616675603d7b43f68ee302ebbec8fd46eb2615f36a9a7b</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l6584beaf9155ab5dcb40e1388426b4df1f3662f98e2fd2cc9d8014970d4d2594af0ca4c9375c9b716655</secondLevelAuthPwd_enc>
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
<subDestination>{{queueName2}}</subDestination>
<subTimeout>30</subTimeout>
<repDestination>{{queueName2}}</repDestination>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#13;&#10;&lt;soapenv:Envelope xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;&#13;&#10;  &lt;soapenv:Body&gt;&#13;&#10;    &lt;GreetOperation xmlns=&quot;http://www.example.org/BAT521WSDL/&quot;&gt;&#13;&#10;      &lt;in xmlns=&quot;&quot;&gt;{{in1}}&lt;/in&gt;&#13;&#10;    &lt;/GreetOperation&gt;&#13;&#10;  &lt;/soapenv:Body&gt;&#13;&#10;&lt;/soapenv:Envelope&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customProperties>
<customConnProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customConnProperties>
    </Node>


    <Node name="invokeService-Case2" log="SoapException has 2 constructors so repeat Case1 but this time use different constructor (constructor with code as string)"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeService-Case2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService-Case3" > 

<Documentation>SoapException has 2 constructors so repeat Case1 but this time use different constructor (constructor with code as string)</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert255" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case2resp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert216" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert116] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case2resp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert252" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert152] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case2resp3}}</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>true</repEnabledType>
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
<lisa.prefill.jndiServerPWD_enc>lf038251a850ede677c452183749e30a13f3a39a13c8f7ce7c731508e50f2c6df2fea00aa80f85fc84de1a8</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l5a261a525f5c22904cbf920c7ef46a2aa51b32f27f26252a7d48a905b506099eb8efe06abb66a9ca7ded</secondLevelAuthPwd_enc>
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
<subDestination>{{queueName2}}</subDestination>
<subTimeout>30</subTimeout>
<repDestination>{{queueName2}}</repDestination>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#13;&#10;&lt;soapenv:Envelope xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;&#13;&#10;  &lt;soapenv:Body&gt;&#13;&#10;    &lt;GreetOperation xmlns=&quot;http://www.example.org/BAT521WSDL/&quot;&gt;&#13;&#10;      &lt;in xmlns=&quot;&quot;&gt;{{in2}}&lt;/in&gt;&#13;&#10;    &lt;/GreetOperation&gt;&#13;&#10;  &lt;/soapenv:Body&gt;&#13;&#10;&lt;/soapenv:Envelope&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customProperties>
<customConnProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customConnProperties>
    </Node>


    <Node name="invokeService-Case3" log="In Java3 throw declared fault with null detail, Java2 should receive it as soapexception. Catch it in Java1 and throw the same from Java1 to client."
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeService-Case3" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService-Case4" > 

<Documentation>In Java3 throw declared fault with null detail,&#13;&#10;Java2 should receive it as soapexception.&#13;&#10;Catch it in Java1 and throw the same from Java1 to client.</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert345" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case3resp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert316" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert116] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case3resp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert352" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert152] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case3resp3}}</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>true</repEnabledType>
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
<lisa.prefill.jndiServerPWD_enc>lbdd0236b8d5f362aac1949c286152c6d84cca67966977ab82d3b0f8af601e9a5c0ba7d0f2472f38c1fb442</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l23825a2ce60b20980826af172d11d090060d5ae337e392b044272a2f2f4197be3c188d26b1b744c247e9</secondLevelAuthPwd_enc>
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
<subDestination>{{queueName2}}</subDestination>
<subTimeout>30</subTimeout>
<repDestination>{{queueName2}}</repDestination>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#13;&#10;&lt;soapenv:Envelope xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;&#13;&#10;  &lt;soapenv:Body&gt;&#13;&#10;    &lt;GreetOperation xmlns=&quot;http://www.example.org/BAT521WSDL/&quot;&gt;&#13;&#10;      &lt;in xmlns=&quot;&quot;&gt;{{in3}}&lt;/in&gt;&#13;&#10;    &lt;/GreetOperation&gt;&#13;&#10;  &lt;/soapenv:Body&gt;&#13;&#10;&lt;/soapenv:Envelope&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customProperties>
<customConnProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customConnProperties>
    </Node>


    <Node name="invokeService-Case4" log="Create and throw SoapException in Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="9b080233-invokeService-Case4" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 

<Documentation>Create and throw SoapException in Java1 itself</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert445" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case4resp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert416" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert116] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case4resp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert452" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert152] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Case4resp3}}</param>
</CheckResult>

<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>true</repEnabledType>
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
<lisa.prefill.jndiServerPWD_enc>l41bdb49874ef9a13691f68b5e8818d3193d2a41b79056719072c708c5acc3bfdfac6cddbadeb9114976986</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l46204e4363d2f041b37d3eebc785fcf5ce8307340008c7f5a50b613622e63d23ca8a9087812ae147584e</secondLevelAuthPwd_enc>
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
<subDestination>{{queueName2}}</subDestination>
<subTimeout>30</subTimeout>
<repDestination>{{queueName2}}</repDestination>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#13;&#10;&lt;soapenv:Envelope xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;&#13;&#10;  &lt;soapenv:Body&gt;&#13;&#10;    &lt;GreetOperation xmlns=&quot;http://www.example.org/BAT521WSDL/&quot;&gt;&#13;&#10;      &lt;in xmlns=&quot;&quot;&gt;{{in4}}&lt;/in&gt;&#13;&#10;    &lt;/GreetOperation&gt;&#13;&#10;  &lt;/soapenv:Body&gt;&#13;&#10;&lt;/soapenv:Envelope&gt;&#13;&#10;</sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customProperties>
<customConnProperties>
    <Parameter>
    <key>soapAction</key>
    <value>GreetOperation</value>
    <name>Name</name>
    </Parameter>
</customConnProperties>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="9b080233-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert245" type="com.itko.lisa.test.CheckResultContains">
<log>Un-Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue (quiet)</onAbort>
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


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="9F021B1A6CA11ED8E7C506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
