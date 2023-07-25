<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="5.6_original" version="2">
<id>CEB3DC9D958B11EDA13F506B8D8BDEB5</id>
<Documentation>SOAP over JMS with Nested composite.&#xd;
Pass properties through nested composites.&#xd;
JMS RT with inline credentials imported from design-time.&#xd;
&#xd;
Scenario: SOAP(JMS) &lt;-&gt; Composite1 &lt;-&gt; Composite2 &lt;-&gt; SOAP(JMS) | SOAP(JMS) &lt;-&gt; Java&#xd;
          Nested Composite: SOAP &lt;-&gt; Java&#xd;
MEP: In-Out</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0zNzE2MDU1ODc=</sig>
<rootNode>deleteQueue1</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.invoke-BW-Service.rsp</key>
    <value>Set in Step invoke-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-BW-Service.rsp.time</key>
    <value>Set in Step invoke-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-AMX-Service.rsp</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-BW-Service.rsp</key>
    <value>Set in Step DeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-BW-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-BW-Service.rsp</key>
    <value>Set in Step UnDeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-BW-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>UnDeclaredFaultCondition</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Consumer-DeclaredFault.rsp</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Consumer-DeclaredFault.rsp.time</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-HelloWorldService.rsp.time</key>
    <value>Set in Step invoke-HelloWorldService</value>
    </Parameter>
    <Parameter>
    <key>_site.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>wizards.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>_local.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>reports</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>setLISA_HOME.bat</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logging.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>embedded_servers</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>webreckeys.ks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>DemoServer</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>doc</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>rmi-truststore.jks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lib</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.lisa.properties.lock</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpbrowsers.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>contenttypes.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bin</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.install4j</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>rmi-keystore.jks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.local.properties.lock</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>derby.log</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>datePatterns.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>configure.bat</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>incontainer</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>j2eeservers.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>uninstall.exe</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jre</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>typemap.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>build.log</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>sql</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>appletviewer.policy</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mibdefs.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hotDeploy</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>snmp</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>examples</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>addons</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmp</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>licenses</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>examples_ejb3</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.permissions</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port8</key>
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
    <key>lisa.Valid-invokeSayHelloInOut.rsp.time</key>
    <value>Set in Step Valid-invokeSayHelloInOut</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invalid-Read-invokeSayHelloInOut.rsp.time</key>
    <value>Set in Step Invalid-Read-invokeSayHelloInOut</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invalid-Write-invokeSayHelloInOut.rsp.time</key>
    <value>Set in Step Invalid-Write-invokeSayHelloInOut</value>
    </Parameter>
    <Parameter>
    <key>lisa.Valid-invokeSayHelloFault.rsp.time</key>
    <value>Set in Step Valid-invokeSayHelloFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Fault1-invokeSayHelloFault.rsp.time</key>
    <value>Set in Step Fault1-invokeSayHelloFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Fault2-invokeSayHelloFault.rsp.time</key>
    <value>Set in Step Fault2-invokeSayHelloFault</value>
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
    <key>port7</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port6</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port5</key>
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
    <key>host2</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
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
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
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
    <key>lisa.Valid-invokeSayHelloFault.rsp</key>
    <value>Set in Step Valid-invokeSayHelloFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Fault1-invokeSayHelloFault.rsp</key>
    <value>Set in Step Fault1-invokeSayHelloFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Fault2-invokeSayHelloFault.rsp</key>
    <value>Set in Step Fault2-invokeSayHelloFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp.time</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>emsCreateQueues</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsDeleteQueues</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactorySSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuserSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
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
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwdSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
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
    <key>lisa.end.rsp.time</key>
    <value>Set in Step createQueue2</value>
    </Parameter>
    <Parameter>
    <key>lisa.createQueue1.rsp.time</key>
    <value>Set in Step createQueue1</value>
    </Parameter>
    <Parameter>
    <key>lisa.createQueue3.rsp.time</key>
    <value>Set in Step createQueue3</value>
    </Parameter>
    <Parameter>
    <key>lisa.createQueue1.rsp</key>
    <value>Set in Step createQueue1</value>
    </Parameter>
    <Parameter>
    <key>lisa.createQueue3.rsp</key>
    <value>Set in Step createQueue3</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueue1.rsp</key>
    <value>Set in Step deleteQueue1</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueue1.rsp.time</key>
    <value>Set in Step deleteQueue1</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueue2.rsp</key>
    <value>Set in Step deleteQueue2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueue2.rsp.time</key>
    <value>Set in Step deleteQueue2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueue3.rsp</key>
    <value>Set in Step deleteQueue3</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueue3.rsp.time</key>
    <value>Set in Step deleteQueue3</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSOAPoverJMSService2.rsp</key>
    <value>Set in Step invokeSOAPoverJMSService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSOAPoverJMSService2.rsp.time</key>
    <value>Set in Step invokeSOAPoverJMSService2</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
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
    <key>lisa.invokeSOAPoverJMSService.rsp</key>
    <value>Set in Step invokeSOAPoverJMSService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSOAPoverJMSService.rsp.time</key>
    <value>Set in Step invokeSOAPoverJMSService</value>
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

      <Companion type="com.tibco.lisa.amx.AmxCompanion">
    <datafile>{{LISA_TC_PATH}}/cli_data.xml</datafile>
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
</Configurations>
    <Node log="" name="deleteQueue1" next="deleteQueue2" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DC9E958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
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


    <Node log="" name="deleteQueue2" next="deleteQueue3" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DC9F958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
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


    <Node log="" name="deleteQueue3" next="createQueue1" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA0958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueue.tst</Subprocess>
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


    <Node log="" name="createQueue1" next="createQueue2" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA1958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
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


    <Node log="" name="createQueue2" next="createQueue3" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA2958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
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


    <Node log="" name="createQueue3" next="deployApp" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA3958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/CreateQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
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


    <Node log="" name="deployApp" next="invokeSOAPoverJMSService" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA4958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>361</graphx>
<graphy>1066</graphy>
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
    <value/>
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
    <value/>
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
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
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
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node log="" name="invokeSOAPoverJMSService" next="invokeSOAPoverJMSService2" quiet="false" think="0-0" type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" uid="CEB3DCA5958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>250</graphx>
<graphy>250</graphy>
<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>true</repTempQ>
<pubWithTrans>false</pubWithTrans>
<subWithTrans>false</subWithTrans>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>34217a08786790ce9aa26862f7885c16</lisa.prefill.jndiServerPWD_enc>
<mqPort/>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan/>
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
<pubDestination>{{queueName2}}</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{queueName2}}</subDestination>
<subTimeout>60</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:new="http://www.example.org/NewWSDLFile/"&gt;&#xd;
   &lt;soapenv:Header/&gt;&#xd;
   &lt;soapenv:Body&gt;&#xd;
      &lt;new:NewOperation&gt;&#xd;
         &lt;in&gt;{{input}}&lt;/in&gt;&#xd;
      &lt;/new:NewOperation&gt;&#xd;
   &lt;/soapenv:Body&gt;&#xd;
&lt;/soapenv:Envelope&gt;</sendMessage>
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
<simpleVal>&lt;?xml version="1.0" encoding="UTF-8"?&gt; &lt;Body xmlns="http://www.tibco.com/namespaces/ws/jms"&gt;&lt;Fault&gt;&lt;detail&gt;org.osoa.sca.ServiceRuntimeException: java.lang.NullPointerException&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:237)&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.ProxyInvocationHandler.invoke(ProxyInvocationHandler.java:522)&amp;#xd; 	at $Proxy31.invoke(Unknown Source)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.endpoint.AbstractJMSInboundBindingEngine$InternalMessageListener.onMessage(AbstractJMSInboundBindingEngine.java:414)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; 	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; 	at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.invoke(JMSBindingMessageEndpointFactory.java:132)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.access$0(JMSBindingMessageEndpointFactory.java:123)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory$MessageEndpointInvocationHandler.invoke(JMSBindingMessageEndpointFactory.java:147)&amp;#xd; 	at $Proxy32.onMessage(Unknown Source)&amp;#xd; 	at com.stc.jmsjca.core.XMessageEndpoint.onMessage(XMessageEndpoint.java:60)&amp;#xd; 	at com.stc.jmsjca.core.Delivery.deliverToEndpoint(Delivery.java:1070)&amp;#xd; 	at com.stc.jmsjca.tibco.TibcoCCDelivery.deliverToEndpoint(TibcoCCDelivery.java:46)&amp;#xd; 	at com.stc.jmsjca.core.WorkContainer.deliver(WorkContainer.java:309)&amp;#xd; 	at com.stc.jmsjca.core.WorkContainer.run(WorkContainer.java:233)&amp;#xd; 	at org.apache.geronimo.connector.work.WorkerContext.run(WorkerContext.java:290)&amp;#xd; 	at org.apache.geronimo.connector.work.pool.NamedRunnable.run(NamedRunnable.java:32)&amp;#xd; 	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)&amp;#xd; 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)&amp;#xd; 	at java.lang.Thread.run(Thread.java:619)&amp;#xd; Caused by: java.lang.NullPointerException&amp;#xd; 	at com.sample.bat_5_10.Java3.sRTestOperation(Java3.java:48)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; 	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; 	at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.OperationHandler.invokeMethodWithThreadContext(OperationHandler.java:503)&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:95)&amp;#xd; 	... 21 more&amp;#xd; &lt;/detail&gt;&lt;/Fault&gt;&lt;/Body&gt;</simpleVal>
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
<onExNode>fail</onExNode>
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

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="AssertResponse" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find "{response}}" in SOAP response</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{response}}</param>
</CheckResult>

    </Node>


    <Node log="" name="invokeSOAPoverJMSService2" next="undeployApp" quiet="false" think="0-0" type="com.itko.lisa.esb.jndi.GeneralJndiJmsStep" uid="CEB3DCA6958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>250</graphx>
<graphy>250</graphy>
<Documentation>Invoke again.</Documentation>
<msgVersion>2</msgVersion>
<autoExtractPayLoad>true</autoExtractPayLoad>
<pubEnabledType>true</pubEnabledType>
<subEnabledType>true</subEnabledType>
<repEnabledType>false</repEnabledType>
<repTempQ>true</repTempQ>
<pubWithTrans>false</pubWithTrans>
<subWithTrans>false</subWithTrans>
<keepConnection>false</keepConnection>
<sharePublisher>false</sharePublisher>
<connectionType>JNDI</connectionType>
<lisa.prefill.jndiFactories>com.tibco.tibjms.naming.TibjmsInitialContextFactory</lisa.prefill.jndiFactories>
<lisa.prefill.jndiServerURLs>{{jndicontexturl}}</lisa.prefill.jndiServerURLs>
<jndiDataSourceName>{{jndiconnectionfactory}}</jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{jndiuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>34217a08786790ce9aa26862f7885c16</lisa.prefill.jndiServerPWD_enc>
<mqPort/>
<mqCCID>-1</mqCCID>
<mqConnMode>JMS</mqConnMode>
<mqOverrideQMan/>
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
<pubDestination>{{queueName2}}</pubDestination>
<subDestType>Queue</subDestType>
<subDestination>{{queueName2}}</subDestination>
<subTimeout>60</subTimeout>
<repDestType>Queue</repDestType>
<sendMsgType>Text</sendMsgType>
<sendMessage>&lt;soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:new="http://www.example.org/NewWSDLFile/"&gt;&#xd;
   &lt;soapenv:Header/&gt;&#xd;
   &lt;soapenv:Body&gt;&#xd;
      &lt;new:NewOperation&gt;&#xd;
         &lt;in&gt;{{input}}&lt;/in&gt;&#xd;
      &lt;/new:NewOperation&gt;&#xd;
   &lt;/soapenv:Body&gt;&#xd;
&lt;/soapenv:Envelope&gt;</sendMessage>
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
<simpleVal>&lt;?xml version="1.0" encoding="UTF-8"?&gt; &lt;Body xmlns="http://www.tibco.com/namespaces/ws/jms"&gt;&lt;Fault&gt;&lt;detail&gt;org.osoa.sca.ServiceRuntimeException: java.lang.NullPointerException&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:237)&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.ProxyInvocationHandler.invoke(ProxyInvocationHandler.java:522)&amp;#xd; 	at $Proxy31.invoke(Unknown Source)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.endpoint.AbstractJMSInboundBindingEngine$InternalMessageListener.onMessage(AbstractJMSInboundBindingEngine.java:414)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; 	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; 	at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.invoke(JMSBindingMessageEndpointFactory.java:132)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory.access$0(JMSBindingMessageEndpointFactory.java:123)&amp;#xd; 	at com.tibco.amf.runtime.bindingtype.jms.core.transport.JMSBindingMessageEndpointFactory$MessageEndpointInvocationHandler.invoke(JMSBindingMessageEndpointFactory.java:147)&amp;#xd; 	at $Proxy32.onMessage(Unknown Source)&amp;#xd; 	at com.stc.jmsjca.core.XMessageEndpoint.onMessage(XMessageEndpoint.java:60)&amp;#xd; 	at com.stc.jmsjca.core.Delivery.deliverToEndpoint(Delivery.java:1070)&amp;#xd; 	at com.stc.jmsjca.tibco.TibcoCCDelivery.deliverToEndpoint(TibcoCCDelivery.java:46)&amp;#xd; 	at com.stc.jmsjca.core.WorkContainer.deliver(WorkContainer.java:309)&amp;#xd; 	at com.stc.jmsjca.core.WorkContainer.run(WorkContainer.java:233)&amp;#xd; 	at org.apache.geronimo.connector.work.WorkerContext.run(WorkerContext.java:290)&amp;#xd; 	at org.apache.geronimo.connector.work.pool.NamedRunnable.run(NamedRunnable.java:32)&amp;#xd; 	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)&amp;#xd; 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)&amp;#xd; 	at java.lang.Thread.run(Thread.java:619)&amp;#xd; Caused by: java.lang.NullPointerException&amp;#xd; 	at com.sample.bat_5_10.Java3.sRTestOperation(Java3.java:48)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)&amp;#xd; 	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)&amp;#xd; 	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)&amp;#xd; 	at java.lang.reflect.Method.invoke(Method.java:597)&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.OperationHandler.invokeMethodWithThreadContext(OperationHandler.java:503)&amp;#xd; 	at com.tibco.amf.platform.runtime.componentframework.internal.proxies.operation.AsyncToSyncOperationHandler.invoke(AsyncToSyncOperationHandler.java:95)&amp;#xd; 	... 21 more&amp;#xd; &lt;/detail&gt;&lt;/Fault&gt;&lt;/Body&gt;</simpleVal>
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
<onExNode>fail</onExNode>
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

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="AssertResponse" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find "{response}}" in SOAP response</log>
<then>fail</then>
<valueToAssertKey/>
        <param>{{response}}</param>
</CheckResult>

    </Node>


    <Node log="" name="undeployApp" next="Re-Deploy" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA7958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

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
    <value/>
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
    <value/>
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
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
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
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
<then>fail</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node log="" name="Re-Deploy" next="end" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="CEB3DCA8958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>361</graphx>
<graphy>1066</graphy>
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
    <value/>
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
    <value/>
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
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
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
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node log="" name="fail" next="unknown" quiet="true" think="0-0" type="com.itko.lisa.test.Abend" uid="CEB3DCA9958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>1026</graphx>
<graphy>275</graphy>
    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0-0" type="com.itko.lisa.test.NormalEnd" uid="CEB3DCAA958B11EDA13F506B8D8BDEB5" useFilters="true" version="1"> 

<graphx>903</graphx>
<graphy>128</graphy>
    </Node>


</TestCase>