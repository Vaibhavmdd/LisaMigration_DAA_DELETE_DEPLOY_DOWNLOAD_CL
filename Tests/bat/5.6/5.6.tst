<?xml version="1.0" ?>

<TestCase name="5.6" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/16/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/16/2023" host="na2devasgaks01" />
</meta>

<id>a1d828a5</id>
<Documentation>SOAP over JMS with Nested composite.&#13;&#10;Pass properties through nested composites.&#13;&#10;JMS RT with inline credentials imported from design-time.&#13;&#10;&#13;&#10;Scenario: SOAP(JMS) &lt;-&gt; Composite1 &lt;-&gt; Composite2 &lt;-&gt; SOAP(JMS) | SOAP(JMS) &lt;-&gt; Java&#13;&#10;          Nested Composite: SOAP &lt;-&gt; Java&#13;&#10;MEP: In-Out</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTEzOTgxMjYzNTM=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/cli_data.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="F1388912958B11EDA13F506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteQueue1" > 

<file>{{LISA_TC_PATH}}/config.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deleteQueue1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-deleteQueue1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteQueue2" > 

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


    <Node name="deleteQueue2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-deleteQueue2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteQueue3" > 

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


    <Node name="deleteQueue3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-deleteQueue3" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createQueue1" > 

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
    <value>{{queueName3}}</value>
    <name>Queue name to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createQueue1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-createQueue1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createQueue2" > 

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


    <Node name="createQueue2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-createQueue2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createQueue3" > 

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
<save>lisa.end.rsp.time</save>
</SaveProps>
    </Node>


    <Node name="createQueue3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-createQueue3" 
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
    <value>{{queueName3}}</value>
    <name>Queue name to be created</name>
    </Parameter>
    <Parameter>
    <key>jndiName</key>
    <value>{{jndiName3}}</value>
    <name>JNDI name to which the queue will be bound. Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>lisa.end.rsp.time</save>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSOAPoverJMSService" > 


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
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>310</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeSOAPoverJMSService" log=""
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="a1d828a5-invokeSOAPoverJMSService" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSOAPoverJMSService2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="AssertResponse" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find &quot;{response}}&quot; in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{response}}</param>
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
<lisa.prefill.jndiServerPWD_enc>l60a2b57b3d9ab1b91209dcb09cdf1cba817005060b4d88c3366bb51140c1fc9a39ed74d57df85986982bcd</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>ld19e62a093454fb59b5e8dfcf566c91f3ac8a276baa698a9bba840034735169b7b581019b829fbb8990e</secondLevelAuthPwd_enc>
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
<subTimeout>60</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;soapenv:Envelope xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:new=&quot;http://www.example.org/NewWSDLFile/&quot;&gt;&#13;&#10;   &lt;soapenv:Header/&gt;&#13;&#10;   &lt;soapenv:Body&gt;&#13;&#10;      &lt;new:NewOperation&gt;&#13;&#10;         &lt;in&gt;{{input}}&lt;/in&gt;&#13;&#10;      &lt;/new:NewOperation&gt;&#13;&#10;   &lt;/soapenv:Body&gt;&#13;&#10;&lt;/soapenv:Envelope&gt;</sendMessage>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.ComplexObj</type>
<serialNum>51</serialNum>
<array>false</array>
<className>com.tibco.tibjms.TibjmsTextMessage</className>
<complex>true</complex>
<interface>false</interface>
<null>true</null>
<void>false</void>
<simple>false</simple>
<useprop>false</useprop>
<Setters>
<Call>
<methodName>setText</methodName>
<retClassName>java.lang.Void</retClassName>
<actParamClassName>java.lang.String</actParamClassName>
<paramClassName>java.lang.String</paramClassName>
<exClassName>javax.jms.JMSException</exClassName>
<param>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>7552</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt; &lt;Body xmlns=&quot;http://www.tibco.com/namespaces/ws/jms&quot;&gt;&lt;Fault&gt;&lt;detail&gt;org.osoa.sca.ServiceRuntimeException: java.lang.NullPointerException&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:237)&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.ProxyInvocationHandler.invoke(ProxyInvocationHandler.java:522)&amp;#xd; &#9;at $Proxy31.invoke(Unknown Source)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.endpoint.AbstractJMSInboundBindingEngine$InternalMessageListener.onMessage(AbstractJMSInboundBindingEngine.java:414)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; &#9;at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; &#9;at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.invoke(JMSBindingMessageEndpointFactory.java:132)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.access$0(JMSBindingMessageEndpointFactory.java:123)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory$MessageEndpointInvocationHandler.invoke(JMSBindingMessageEndpointFactory.java:147)&amp;#xd; &#9;at $Proxy32.onMessage(Unknown Source)&amp;#xd; &#9;at com.stc.jmsjca.core.XMessageEndpoint.onMessage(XMessageEndpoint.java:60)&amp;#xd; &#9;at com.stc.jmsjca.core.Delivery.deliverToEndpoint(Delivery.java:1070)&amp;#xd; &#9;at com.stc.jmsjca.tibco.TibcoCCDelivery.deliverToEndpoint(TibcoCCDelivery.java:46)&amp;#xd; &#9;at com.stc.jmsjca.core.WorkContainer.deliver(WorkContainer.java:309)&amp;#xd; &#9;at com.stc.jmsjca.core.WorkContainer.run(WorkContainer.java:233)&amp;#xd; &#9;at org.apache.geronimo.connector.work.WorkerContext.run(WorkerContext.java:290)&amp;#xd; &#9;at org.apache.geronimo.connector.work.pool.NamedRunnable.run(NamedRunnable.java:32)&amp;#xd; &#9;at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)&amp;#xd; &#9;at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)&amp;#xd; &#9;at java.lang.Thread.run(Thread.java:619)&amp;#xd; Caused by: java.lang.NullPointerException&amp;#xd; &#9;at com.sample.bat_5_10.Java3.sRTestOperation(Java3.java:48)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; &#9;at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; &#9;at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.OperationHandler.invokeMethodWithThreadContext(OperationHandler.java:503)&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:95)&amp;#xd; &#9;... 21 more&amp;#xd; &lt;/detail&gt;&lt;/Fault&gt;&lt;/Body&gt;</simpleVal>
</DynObject>
</param>
<result>
<DynObject>
<type>com.itko.lisa.dynexec.VoidObj</type>
<serialNum>7550</serialNum>
<array>false</array>
<className>java.lang.Void</className>
<complex>false</complex>
<interface>false</interface>
<null>true</null>
<void>true</void>
<simple>false</simple>
<useprop>false</useprop>
</DynObject>
</result>
<isCallMade>false</isCallMade>
</Call>
</Setters>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
    <Parameter>
    <key>soapAction</key>
    <value>NewOperation</value>
    <name>Name</name>
    </Parameter>
</customProperties>
<customConnProperties>
    <Parameter>
    <key>soapAction</key>
    <value>NewOperation</value>
    <name>Name</name>
    </Parameter>
</customConnProperties>
    <mappedMessage>
    <type>3</type>
    <mappedField>
    <fieldName>toAddress</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>smtp_user@amxtest.com</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>fromAddress</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>smtp_user@amxtest.com</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>ldapQuery</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>(cn=*)</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>message</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>From Lisa</fieldValue>
    </mappedField>
    </mappedMessage>
    </Node>


    <Node name="invokeSOAPoverJMSService2" log=""
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          uid="a1d828a5-invokeSOAPoverJMSService2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 

<Documentation>Invoke again.</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="AssertResponse" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find &quot;{response}}&quot; in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{response}}</param>
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
<lisa.prefill.jndiServerPWD_enc>l4fe395e8d02ec0bfa2a83f6a94571030cd21561cb039fa80761257e8c76ecdba85d9269a93a6545dc14457</lisa.prefill.jndiServerPWD_enc>
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
<secondLevelAuthPwd_enc>l17bb0ba219610a0a2a31533e01ab3335384656dc145793b8c02a0e699fc7c0674cf1e026f6fd49a73074</secondLevelAuthPwd_enc>
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
<subTimeout>60</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;soapenv:Envelope xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:new=&quot;http://www.example.org/NewWSDLFile/&quot;&gt;&#13;&#10;   &lt;soapenv:Header/&gt;&#13;&#10;   &lt;soapenv:Body&gt;&#13;&#10;      &lt;new:NewOperation&gt;&#13;&#10;         &lt;in&gt;{{input}}&lt;/in&gt;&#13;&#10;      &lt;/new:NewOperation&gt;&#13;&#10;   &lt;/soapenv:Body&gt;&#13;&#10;&lt;/soapenv:Envelope&gt;</sendMessage>
<jmsMessageObject>
<DynObject>
<type>com.itko.lisa.dynexec.ComplexObj</type>
<serialNum>51</serialNum>
<array>false</array>
<className>com.tibco.tibjms.TibjmsTextMessage</className>
<complex>true</complex>
<interface>false</interface>
<null>true</null>
<void>false</void>
<simple>false</simple>
<useprop>false</useprop>
<Setters>
<Call>
<methodName>setText</methodName>
<retClassName>java.lang.Void</retClassName>
<actParamClassName>java.lang.String</actParamClassName>
<paramClassName>java.lang.String</paramClassName>
<exClassName>javax.jms.JMSException</exClassName>
<param>
<DynObject>
<type>com.itko.lisa.dynexec.SimpleObj</type>
<serialNum>7552</serialNum>
<array>false</array>
<className>java.lang.String</className>
<complex>false</complex>
<interface>false</interface>
<null>false</null>
<void>false</void>
<simple>true</simple>
<useprop>false</useprop>
<simpleVal>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt; &lt;Body xmlns=&quot;http://www.tibco.com/namespaces/ws/jms&quot;&gt;&lt;Fault&gt;&lt;detail&gt;org.osoa.sca.ServiceRuntimeException: java.lang.NullPointerException&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:237)&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.ProxyInvocationHandler.invoke(ProxyInvocationHandler.java:522)&amp;#xd; &#9;at $Proxy31.invoke(Unknown Source)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.endpoint.AbstractJMSInboundBindingEngine$InternalMessageListener.onMessage(AbstractJMSInboundBindingEngine.java:414)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; &#9;at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; &#9;at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.invoke(JMSBindingMessageEndpointFactory.java:132)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.access$0(JMSBindingMessageEndpointFactory.java:123)&amp;#xd; &#9;at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory$MessageEndpointInvocationHandler.invoke(JMSBindingMessageEndpointFactory.java:147)&amp;#xd; &#9;at $Proxy32.onMessage(Unknown Source)&amp;#xd; &#9;at com.stc.jmsjca.core.XMessageEndpoint.onMessage(XMessageEndpoint.java:60)&amp;#xd; &#9;at com.stc.jmsjca.core.Delivery.deliverToEndpoint(Delivery.java:1070)&amp;#xd; &#9;at com.stc.jmsjca.tibco.TibcoCCDelivery.deliverToEndpoint(TibcoCCDelivery.java:46)&amp;#xd; &#9;at com.stc.jmsjca.core.WorkContainer.deliver(WorkContainer.java:309)&amp;#xd; &#9;at com.stc.jmsjca.core.WorkContainer.run(WorkContainer.java:233)&amp;#xd; &#9;at org.apache.geronimo.connector.work.WorkerContext.run(WorkerContext.java:290)&amp;#xd; &#9;at org.apache.geronimo.connector.work.pool.NamedRunnable.run(NamedRunnable.java:32)&amp;#xd; &#9;at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)&amp;#xd; &#9;at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)&amp;#xd; &#9;at java.lang.Thread.run(Thread.java:619)&amp;#xd; Caused by: java.lang.NullPointerException&amp;#xd; &#9;at com.sample.bat_5_10.Java3.sRTestOperation(Java3.java:48)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; &#9;at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; &#9;at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; &#9;at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.OperationHandler.invokeMethodWithThreadContext(OperationHandler.java:503)&amp;#xd; &#9;at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:95)&amp;#xd; &#9;... 21 more&amp;#xd; &lt;/detail&gt;&lt;/Fault&gt;&lt;/Body&gt;</simpleVal>
</DynObject>
</param>
<result>
<DynObject>
<type>com.itko.lisa.dynexec.VoidObj</type>
<serialNum>7550</serialNum>
<array>false</array>
<className>java.lang.Void</className>
<complex>false</complex>
<interface>false</interface>
<null>true</null>
<void>true</void>
<simple>false</simple>
<useprop>false</useprop>
</DynObject>
</result>
<isCallMade>false</isCallMade>
</Call>
</Setters>
</DynObject>
</jmsMessageObject>
<onExNode>abort</onExNode>
<customProperties>
    <Parameter>
    <key>soapAction</key>
    <value>NewOperation</value>
    <name>Name</name>
    </Parameter>
</customProperties>
<customConnProperties>
    <Parameter>
    <key>soapAction</key>
    <value>NewOperation</value>
    <name>Name</name>
    </Parameter>
</customConnProperties>
    <mappedMessage>
    <type>3</type>
    <mappedField>
    <fieldName>toAddress</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>smtp_user@amxtest.com</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>fromAddress</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>smtp_user@amxtest.com</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>ldapQuery</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>(cn=*)</fieldValue>
    </mappedField>
    <mappedField>
    <fieldName>message</fieldName>
    <fieldType>String</fieldType>
    <fieldValue>From Lisa</fieldValue>
    </mappedField>
    </mappedMessage>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-undeployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
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
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>310</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Re-Deploy" 
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
    <value>{{tibco.test.case.log.dir}}/antReDeploy.log</value>
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
    <value>310</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="E85C023F958B11EDA13F506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="a1d828a5-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="a1d828a5-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
