<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Sep 12 11:05:03 PDT 2012 -->


<TestCase name="5.20_Invoke" version="2">
<id>ab353239</id>
<Documentation>Test AtLeastOnce&#13;&#10;Scenario: SOAP BT(HTTP)&lt;-&gt;JAVA1&lt;-&gt;JAVA2&lt;-&gt;JAVA3&#13;&#10;&#13;&#10;case1: Throw valid business fault from Java2 - No atleastOnce functionality should kick in. User should get the valid fault back.&#13;&#10;case2: Throw Undeclared fault from Java1 - after 5 tries - message should be moved to queue - Java1_atLeastOnce&#13;&#10;case3: After say 2 retries, throw an exception specified to stop the delivery from Java1 - Redelivery should be stopped and message should be immediately moved to the Java1_atLeastOnce&#13;&#10;case4: Throw Undeclared fault from Java3 - after 3 retries - retries should stop and since no error queue is specified - message should not be moved to any queue&#13;&#10;case5: Throw Undeclared fault from Java2 - message should never be moved to default queue - 0 retries indicates infinite tries - wait for 7 retries and then you can declare this scenario passed.&#13;&#10;&#13;&#10;Configuration:&#13;&#10;&#13;&#10;Java 1 Component Service / SOAP Service :&#13;&#10;Retry count : 5&#13;&#10;Delay - 30 sec&#13;&#10;Enable Error Queue : Yes&#13;&#10;Exception Upon which to stop the redelivery : Specify any valid undeclared Java Exception&#13;&#10;Queue name : Java1_atLeastOnce&#13;&#10;Transactional : No&#13;&#10;&#13;&#10;Java 2 Component Service / Java 1 Component Reference :&#13;&#10;Retry count : 0&#13;&#10;Delay - 15 sec&#13;&#10;Enable Error Queue : Yes&#13;&#10;Queue name : Default&#13;&#10;Transactional : No&#13;&#10;&#13;&#10;Java 3 Component Service / Java 2 Component Reference :&#13;&#10;Retry count : 3&#13;&#10;Delay - 15 sec&#13;&#10;Enable Error Queue : No</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTUwNjUwMTM5OA==</sig>
<rootNode>case2</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>dbpwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteResponseQueue.rsp</key>
    <value>Set in Step deleteResponseQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteResponseQueue.rsp.time</key>
    <value>Set in Step deleteResponseQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.createResponseQueue.rsp</key>
    <value>Set in Step createResponseQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.createResponseQueue.rsp.time</key>
    <value>Set in Step createResponseQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.case1.rsp</key>
    <value>Set in Step case1</value>
    </Parameter>
    <Parameter>
    <key>lisa.case1.rsp.time</key>
    <value>Set in Step case1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp.time</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase1Redelivery1.rsp</key>
    <value>Set in Step checkQueueCase1Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase1Redelivery1.rsp.time</key>
    <value>Set in Step checkQueueCase1Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase1Redelivery2.rsp</key>
    <value>Set in Step checkQueueCase1Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase1Redelivery2.rsp.time</key>
    <value>Set in Step checkQueueCase1Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.case2.rsp</key>
    <value>Set in Step case2</value>
    </Parameter>
    <Parameter>
    <key>lisa.case2.rsp.time</key>
    <value>Set in Step case2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery1.rsp</key>
    <value>Set in Step checkQueueCase2Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery1.rsp.time</key>
    <value>Set in Step checkQueueCase2Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery2.rsp</key>
    <value>Set in Step checkQueueCase2Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery2.rsp.time</key>
    <value>Set in Step checkQueueCase2Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery3.rsp</key>
    <value>Set in Step checkQueueCase2Redelivery3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery3.rsp.time</key>
    <value>Set in Step checkQueueCase2Redelivery3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery4.rsp</key>
    <value>Set in Step checkQueueCase2Redelivery4</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery4.rsp.time</key>
    <value>Set in Step checkQueueCase2Redelivery4</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery5.rsp</key>
    <value>Set in Step checkQueueCase2Redelivery5</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase2Redelivery5.rsp.time</key>
    <value>Set in Step checkQueueCase2Redelivery5</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkErrorQueueCase2.rsp</key>
    <value>Set in Step checkErrorQueueCase2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkErrorQueueCase2.rsp.time</key>
    <value>Set in Step checkErrorQueueCase2</value>
    </Parameter>
    <Parameter>
    <key>lisa.case3.rsp</key>
    <value>Set in Step case3</value>
    </Parameter>
    <Parameter>
    <key>lisa.case3.rsp.time</key>
    <value>Set in Step case3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase3Redelivery1.rsp</key>
    <value>Set in Step checkQueueCase3Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase3Redelivery1.rsp.time</key>
    <value>Set in Step checkQueueCase3Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase3Redelivery2.rsp</key>
    <value>Set in Step checkQueueCase3Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase3Redelivery2.rsp.time</key>
    <value>Set in Step checkQueueCase3Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkErrorQueueCase3.rsp</key>
    <value>Set in Step checkErrorQueueCase3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkErrorQueueCase3.rsp.time</key>
    <value>Set in Step checkErrorQueueCase3</value>
    </Parameter>
    <Parameter>
    <key>lisa.case4.rsp</key>
    <value>Set in Step case4</value>
    </Parameter>
    <Parameter>
    <key>lisa.case4.rsp.time</key>
    <value>Set in Step case4</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase4Redelivery1.rsp</key>
    <value>Set in Step checkQueueCase4Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase4Redelivery1.rsp.time</key>
    <value>Set in Step checkQueueCase4Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase4Redelivery2.rsp</key>
    <value>Set in Step checkQueueCase4Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase4Redelivery2.rsp.time</key>
    <value>Set in Step checkQueueCase4Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase4Redelivery3.rsp</key>
    <value>Set in Step checkQueueCase4Redelivery3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase4Redelivery3.rsp.time</key>
    <value>Set in Step checkQueueCase4Redelivery3</value>
    </Parameter>
    <Parameter>
    <key>lisa.case5.rsp</key>
    <value>Set in Step case5</value>
    </Parameter>
    <Parameter>
    <key>lisa.case5.rsp.time</key>
    <value>Set in Step case5</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery1.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery1.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery2.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery2.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery2</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait1.rsp</key>
    <value>Set in Step wait1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait1.rsp.time</key>
    <value>Set in Step wait1</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery3.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery3.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery4.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery4</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery4.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery4</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery5.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery5</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery5.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery5</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery6.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery6</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery6.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery6</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery7.rsp</key>
    <value>Set in Step checkQueueCase5Redelivery7</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkQueueCase5Redelivery7.rsp.time</key>
    <value>Set in Step checkQueueCase5Redelivery7</value>
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
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
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
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Re-Deploy.rsp</key>
    <value>Set in Step Re-Deploy</value>
    </Parameter>
    <Parameter>
    <key>lisa.Re-Deploy.rsp.time</key>
    <value>Set in Step Re-Deploy</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrorQueue.rsp</key>
    <value>Set in Step deleteErrorQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrorQueue.rsp.time</key>
    <value>Set in Step deleteErrorQueue</value>
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
<name>runtime</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>silver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../silver/1machine_2node.config</doc>
</Configuration>
</Configurations>
    <Node name="case2" log="This SOAP request should trigger ALO from the undeclared fault thrown in Java1; after 5 redelivery attempts the message should be moved to the error queue which will be verified in subsequent steps"
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkQueueCase2Redelivery1" > 

<graphx>778</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{port2}}/newWSDLFile/</url>
<action>NewOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5ldz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9OZXdX
U0RMRmlsZS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8bmV3Ok5ld09wZXJhdGlvbj4NCiAgICAgICAgIDxpbj5jYXNlMjwvaW4+DQogICAgICA8L25l
dzpOZXdPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert121] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Caused by: java.lang.NullPointerException: **********  case2 deliveryCount 5  **********</param>
</CheckResult>

    </Node>


    <Node name="checkQueueCase2Redelivery1" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkQueueCase2Redelivery2" > 

<graphx>1034</graphx>
<graphy>10</graphy>
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
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>13235abc38c47c16b50ca1260c96a6a4</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd>{{jmspwd}}</secondLevelAuthPwd>
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
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 1</param>
</CheckResult>

    </Node>


    <Node name="checkQueueCase2Redelivery2" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkQueueCase2Redelivery3" > 

<graphx>1034</graphx>
<graphy>10</graphy>
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
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>13235abc38c47c16b50ca1260c96a6a4</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd>{{jmspwd}}</secondLevelAuthPwd>
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
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 2</param>
</CheckResult>

    </Node>


    <Node name="checkQueueCase2Redelivery3" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkQueueCase2Redelivery4" > 

<graphx>1034</graphx>
<graphy>10</graphy>
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
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>13235abc38c47c16b50ca1260c96a6a4</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd>{{jmspwd}}</secondLevelAuthPwd>
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
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 3</param>
</CheckResult>

    </Node>


    <Node name="checkQueueCase2Redelivery4" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkQueueCase2Redelivery5" > 

<graphx>1034</graphx>
<graphy>10</graphy>
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
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>13235abc38c47c16b50ca1260c96a6a4</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd>{{jmspwd}}</secondLevelAuthPwd>
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
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 4</param>
</CheckResult>

    </Node>


    <Node name="checkQueueCase2Redelivery5" log="check the response queue to verify that the (re)delivered massage reached Java1"
          type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkErrorQueueCase2" > 

<graphx>1034</graphx>
<graphy>10</graphy>
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
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>13235abc38c47c16b50ca1260c96a6a4</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>true</secondLevelAuthEnabled>
<secondLevelAuthUser>{{jmsuser}}</secondLevelAuthUser>
<secondLevelAuthPwd>{{jmspwd}}</secondLevelAuthPwd>
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
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>case2Java1 deliveryCount 5</param>
</CheckResult>

    </Node>


    <Node name="checkErrorQueueCase2" log="check this error queue to verify that after the max redelivery count was reached, the message got moved to this queue"
          type="com.itko.lisa.esb.tibco.TibcoDirectJMSStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>1090</graphx>
<graphy>1090</graphy>
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
<connectionType>TIBEMSDIRECT</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>tcp://{{emshost}}:7222</lisa.prefill.jndiServerURLs>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>55f8b9a6905f1928114a2cb468b8bbfb</lisa.prefill.jndiServerPWD_enc>
<mqPort></mqPort>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
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
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>5_13_ASYNC_KEY_1</asyncPropKey>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert351" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert351] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>DeliveryFailureReason={String:java.lang.NullPointerException: **********  case2 deliveryCount 5  **********</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>370</graphx>
<graphy>370</graphy>
    </Node>


</TestCase>
