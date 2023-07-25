<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Apr 25 13:36:57 PDT 2012 -->


<TestCase name="5.13_Invoke" version="2">
<id>da2793a6</id>
<Documentation>One way Transaction intent with Oracle 11g.&#13;&#10;Provision and remove Oracle JDBC feature.&#13;&#10;Validate database rollback and message redelivery both for &#13;&#10;Java and Spring components&#13;&#10;&#13;&#10;Scenario: SOAP(HTTP) &lt;-&gt; Java &lt;-&gt; Spring &lt;-&gt; Java &#13;&#10;&#13;&#10;MEP: In-Only &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Doc/Literal/Type&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE0NDE2OTg3MTg=</sig>
<rootNode>cleanup_schema_1</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>bwport1</key>
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
    <key>bwhost1</key>
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
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
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
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
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
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
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
    <key>amx.sv.queuePrefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
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
    <key>jmsuser</key>
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
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
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
    <key>lisa.deleteErrQueue_Java_IT.rsp.time</key>
    <value>Set in Step deleteErrQueue_Java_IT</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkDb.rsp.time</key>
    <value>Set in Step checkDb</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp.time</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage.rsp.time</key>
    <value>Set in Step consumeMessage</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT_1.rsp.time</key>
    <value>Set in Step deleteErrQueue_Java_IT_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait_1.rsp.time</key>
    <value>Set in Step wait_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage_1.rsp.time</key>
    <value>Set in Step consumeMessage_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT_2.rsp.time</key>
    <value>Set in Step deleteErrQueue_Java_IT_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait_2.rsp.time</key>
    <value>Set in Step wait_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage_2.rsp.time</key>
    <value>Set in Step consumeMessage_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Spring_IT_1.rsp.time</key>
    <value>Set in Step deleteErrQueue_Spring_IT_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait_3.rsp.time</key>
    <value>Set in Step wait_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage_3.rsp.time</key>
    <value>Set in Step consumeMessage_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT_3.rsp.time</key>
    <value>Set in Step deleteErrQueue_Java_IT_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Spring_IT.rsp</key>
    <value>Set in Step deleteErrQueue_Spring_IT</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Spring_IT.rsp.time</key>
    <value>Set in Step deleteErrQueue_Spring_IT</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT.rsp</key>
    <value>Set in Step deleteErrQueue_Java_IT</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_1.rsp</key>
    <value>Set in Step QueryDb_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_1.rsp.time</key>
    <value>Set in Step QueryDb_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackAfterFirstUpdate.rsp</key>
    <value>Set in Step RollbackAfterFirstUpdate</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackAfterFirstUpdate.rsp.time</key>
    <value>Set in Step RollbackAfterFirstUpdate</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber.rsp</key>
    <value>Set in Step invokeSubscriber</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber.rsp.time</key>
    <value>Set in Step invokeSubscriber</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage.rsp</key>
    <value>Set in Step consumeMessage</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_2.rsp</key>
    <value>Set in Step QueryDb_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_2.rsp.time</key>
    <value>Set in Step QueryDb_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT_1.rsp</key>
    <value>Set in Step deleteErrQueue_Java_IT_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackAfterSecondUpdate.rsp</key>
    <value>Set in Step RollbackAfterSecondUpdate</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackAfterSecondUpdate.rsp.time</key>
    <value>Set in Step RollbackAfterSecondUpdate</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait_1.rsp</key>
    <value>Set in Step wait_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber_1.rsp</key>
    <value>Set in Step invokeSubscriber_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber_1.rsp.time</key>
    <value>Set in Step invokeSubscriber_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage_1.rsp</key>
    <value>Set in Step consumeMessage_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_3.rsp</key>
    <value>Set in Step QueryDb_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_3.rsp.time</key>
    <value>Set in Step QueryDb_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT_2.rsp</key>
    <value>Set in Step deleteErrQueue_Java_IT_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackInSpring_IT.rsp</key>
    <value>Set in Step RollbackInSpring_IT</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackInSpring_IT.rsp.time</key>
    <value>Set in Step RollbackInSpring_IT</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait_2.rsp</key>
    <value>Set in Step wait_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber_2.rsp</key>
    <value>Set in Step invokeSubscriber_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber_2.rsp.time</key>
    <value>Set in Step invokeSubscriber_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage_2.rsp</key>
    <value>Set in Step consumeMessage_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_4.rsp</key>
    <value>Set in Step QueryDb_4</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_4.rsp.time</key>
    <value>Set in Step QueryDb_4</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Spring_IT_1.rsp</key>
    <value>Set in Step deleteErrQueue_Spring_IT_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackAfterReferenceCall.rsp</key>
    <value>Set in Step RollbackAfterReferenceCall</value>
    </Parameter>
    <Parameter>
    <key>lisa.RollbackAfterReferenceCall.rsp.time</key>
    <value>Set in Step RollbackAfterReferenceCall</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait_3.rsp</key>
    <value>Set in Step wait_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber_3.rsp</key>
    <value>Set in Step invokeSubscriber_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeSubscriber_3.rsp.time</key>
    <value>Set in Step invokeSubscriber_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.consumeMessage_3.rsp</key>
    <value>Set in Step consumeMessage_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_5.rsp</key>
    <value>Set in Step QueryDb_5</value>
    </Parameter>
    <Parameter>
    <key>lisa.QueryDb_5.rsp.time</key>
    <value>Set in Step QueryDb_5</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteErrQueue_Java_IT_3.rsp</key>
    <value>Set in Step deleteErrQueue_Java_IT_3</value>
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
    <key>lisa.cleanup_schema_2.rsp</key>
    <value>Set in Step cleanup_schema_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanup_schema_2.rsp.time</key>
    <value>Set in Step cleanup_schema_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanup_schema_3.rsp</key>
    <value>Set in Step cleanup_schema_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanup_schema_3.rsp.time</key>
    <value>Set in Step cleanup_schema_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.insert_schema_1.rsp</key>
    <value>Set in Step insert_schema_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.insert_schema_1.rsp.time</key>
    <value>Set in Step insert_schema_1</value>
    </Parameter>
    <Parameter>
    <key>lisa.insert_schema_2.rsp</key>
    <value>Set in Step insert_schema_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.insert_schema_2.rsp.time</key>
    <value>Set in Step insert_schema_2</value>
    </Parameter>
    <Parameter>
    <key>lisa.insert_schema_3.rsp</key>
    <value>Set in Step insert_schema_3</value>
    </Parameter>
    <Parameter>
    <key>lisa.insert_schema_3.rsp.time</key>
    <value>Set in Step insert_schema_3</value>
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

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
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
</Configurations>
    <Node name="cleanup_schema_1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="cleanup_schema_2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orclpwd1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>delete from AMXUSER1.TABLE_1&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
    </Node>


    <Node name="cleanup_schema_2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="cleanup_schema_3" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>delete from AMXUSER2.TABLE_2&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
    </Node>


    <Node name="cleanup_schema_3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="insert_schema_1" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>delete from AMXUSER3.TABLE_3&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
    </Node>


    <Node name="insert_schema_1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="insert_schema_2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>INSERT INTO AMXUSER1.table_1(country, gdp) VALUES (&apos;India&apos;, &apos;success&apos;)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
    </Node>


    <Node name="insert_schema_2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="insert_schema_3" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>INSERT INTO AMXUSER2.table_2(country, currency) VALUES (&apos;India&apos;, &apos;success&apos;)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
    </Node>


    <Node name="insert_schema_3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="deleteErrQueue_Spring_IT" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>INSERT INTO AMXUSER3.table_3(country, capital) VALUES (&apos;India&apos;, &apos;success&apos;)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
    </Node>


    <Node name="deleteErrQueue_Spring_IT" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteErrQueue_Java_IT" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>{{spring.queue.name}}</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteErrQueue_Java_IT" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="QueryDb_1" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>{{java.queue.name}}</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="QueryDb_1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="RollbackAfterFirstUpdate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>select T1.gdp, T2.currency, T3.capital from AMXUSER1.TABLE_1 T1, AMXUSER2.TABLE_2 T2, AMXUSER3.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert321" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_1.GDP</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>GDP</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert322" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_2.CURRENCY </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CURRENCY</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert323" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_3.CAPITAL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CAPITAL</column>
        <regEx>success</regEx>
</CheckResult>

    </Node>


    <Node name="RollbackAfterFirstUpdate" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>850</graphx>
<graphy>850</graphy>
<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8i
Pg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhl
bGxvUmVxdWVzdD5jYXNlMTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0K
PC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeSubscriber" > 

<graphx>970</graphx>
<graphy>970</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeSubscriber" log=""
          type="com.itko.lisa.esb.tibco.TibcoDirectJMSStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="consumeMessage" > 

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
<jndiDataSourceName></jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>55f8b9a6905f1928114a2cb468b8bbfb</lisa.prefill.jndiServerPWD_enc>
<mqHost></mqHost>
<mqPort></mqPort>
<mqChannel></mqChannel>
<mqQManager></mqQManager>
<mqCCID>-1</mqCCID>
<mqSecurityExit></mqSecurityExit>
<mqSendExit></mqSendExit>
<mqReceiveExit></mqReceiveExit>
<mqConnMode>JMS</mqConnMode>
<mqReplyToQMgrName></mqReplyToQMgrName>
<mqTempQModel></mqTempQModel>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvNetwork></tibRvNetwork>
<tibRvDaemon></tibRvDaemon>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvSendFieldName></tibRvSendFieldName>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>false</secondLevelAuthEnabled>
<secondLevelAuthUser></secondLevelAuthUser>
<secondLevelAuthPwd></secondLevelAuthPwd>
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
<sonicBrokerPwd></sonicBrokerPwd>
<jcapsHost></jcapsHost>
<jcapsPort></jcapsPort>
<pubDestType>Queue</pubDestType>
<pubDestination></pubDestination>
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{java.queue.name}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<durableSessionKey></durableSessionKey>
<sendMsgType>Empty</sendMsgType>
<sendMessage></sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>5_13_ASYNC_KEY_1</asyncPropKey>
    </Node>


    <Node name="consumeMessage" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="QueryDb_2" > 

<graphx>1210</graphx>
<graphy>1210</graphy>
<wrapperKeyName>5_13_ASYNC_KEY_1</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="deleteErrQueue_Java_IT_1" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>select T1.gdp, T2.currency, T3.capital from AMXUSER1.TABLE_1 T1, AMXUSER2.TABLE_2 T2, AMXUSER3.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert321" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_1.GDP</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>GDP</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert322" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_2.CURRENCY </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CURRENCY</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert323" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_3.CAPITAL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CAPITAL</column>
        <regEx>success</regEx>
</CheckResult>

    </Node>


    <Node name="deleteErrQueue_Java_IT_1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="RollbackAfterSecondUpdate" > 

<graphx>1450</graphx>
<graphy>1450</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>Java1_queue_5_13</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="RollbackAfterSecondUpdate" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait_1" > 

<graphx>1570</graphx>
<graphy>1570</graphy>
<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8i
Pg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhl
bGxvUmVxdWVzdD5jYXNlMjwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0K
PC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait_1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeSubscriber_1" > 

<graphx>1690</graphx>
<graphy>1690</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeSubscriber_1" log=""
          type="com.itko.lisa.esb.tibco.TibcoDirectJMSStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="consumeMessage_1" > 

<graphx>1810</graphx>
<graphy>1810</graphy>
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
<jndiDataSourceName></jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>55f8b9a6905f1928114a2cb468b8bbfb</lisa.prefill.jndiServerPWD_enc>
<mqHost></mqHost>
<mqPort></mqPort>
<mqChannel></mqChannel>
<mqQManager></mqQManager>
<mqCCID>-1</mqCCID>
<mqSecurityExit></mqSecurityExit>
<mqSendExit></mqSendExit>
<mqReceiveExit></mqReceiveExit>
<mqConnMode>JMS</mqConnMode>
<mqReplyToQMgrName></mqReplyToQMgrName>
<mqTempQModel></mqTempQModel>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvNetwork></tibRvNetwork>
<tibRvDaemon></tibRvDaemon>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvSendFieldName></tibRvSendFieldName>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>false</secondLevelAuthEnabled>
<secondLevelAuthUser></secondLevelAuthUser>
<secondLevelAuthPwd></secondLevelAuthPwd>
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
<sonicBrokerPwd></sonicBrokerPwd>
<jcapsHost></jcapsHost>
<jcapsPort></jcapsPort>
<pubDestType>Queue</pubDestType>
<pubDestination></pubDestination>
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{java.queue.name}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<durableSessionKey></durableSessionKey>
<sendMsgType>Empty</sendMsgType>
<sendMessage></sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>5_13_ASYNC_KEY_2</asyncPropKey>
    </Node>


    <Node name="consumeMessage_1" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="QueryDb_3" > 

<graphx>1930</graphx>
<graphy>1930</graphy>
<wrapperKeyName>5_13_ASYNC_KEY_2</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="deleteErrQueue_Java_IT_2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>select T1.gdp, T2.currency, T3.capital from AMXUSER1.TABLE_1 T1, AMXUSER2.TABLE_2 T2, AMXUSER3.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert321" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_1.GDP</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>GDP</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert322" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_2.CURRENCY </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CURRENCY</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert323" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_3.CAPITAL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CAPITAL</column>
        <regEx>success</regEx>
</CheckResult>

    </Node>


    <Node name="deleteErrQueue_Java_IT_2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="RollbackInSpring_IT" > 

<graphx>2170</graphx>
<graphy>2170</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>Java1_queue_5_13</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="RollbackInSpring_IT" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait_2" > 

<graphx>2290</graphx>
<graphy>2290</graphy>
<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8i
Pg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhl
bGxvUmVxdWVzdD5jYXNlMzwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0K
PC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait_2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeSubscriber_2" > 

<graphx>2410</graphx>
<graphy>2410</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeSubscriber_2" log=""
          type="com.itko.lisa.esb.tibco.TibcoDirectJMSStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="consumeMessage_2" > 

<graphx>2530</graphx>
<graphy>2530</graphy>
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
<jndiDataSourceName></jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>55f8b9a6905f1928114a2cb468b8bbfb</lisa.prefill.jndiServerPWD_enc>
<mqHost></mqHost>
<mqPort></mqPort>
<mqChannel></mqChannel>
<mqQManager></mqQManager>
<mqCCID>-1</mqCCID>
<mqSecurityExit></mqSecurityExit>
<mqSendExit></mqSendExit>
<mqReceiveExit></mqReceiveExit>
<mqConnMode>JMS</mqConnMode>
<mqReplyToQMgrName></mqReplyToQMgrName>
<mqTempQModel></mqTempQModel>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvNetwork></tibRvNetwork>
<tibRvDaemon></tibRvDaemon>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvSendFieldName></tibRvSendFieldName>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>false</secondLevelAuthEnabled>
<secondLevelAuthUser></secondLevelAuthUser>
<secondLevelAuthPwd></secondLevelAuthPwd>
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
<sonicBrokerPwd></sonicBrokerPwd>
<jcapsHost></jcapsHost>
<jcapsPort></jcapsPort>
<pubDestType>Queue</pubDestType>
<pubDestination></pubDestination>
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{spring.queue.name}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<durableSessionKey></durableSessionKey>
<sendMsgType>Empty</sendMsgType>
<sendMessage></sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>5_13_ASYNC_KEY_3</asyncPropKey>
    </Node>


    <Node name="consumeMessage_2" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="QueryDb_4" > 

<graphx>2650</graphx>
<graphy>2650</graphy>
<wrapperKeyName>5_13_ASYNC_KEY_3</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_4" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="deleteErrQueue_Spring_IT_1" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>select T1.gdp, T2.currency, T3.capital from AMXUSER1.TABLE_1 T1, AMXUSER2.TABLE_2 T2, AMXUSER3.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert321" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_1.GDP</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>GDP</column>
        <regEx>case3</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert322" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_2.CURRENCY </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CURRENCY</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert323" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_3.CAPITAL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CAPITAL</column>
        <regEx>case3</regEx>
</CheckResult>

    </Node>


    <Node name="deleteErrQueue_Spring_IT_1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="RollbackAfterReferenceCall" > 

<graphx>2890</graphx>
<graphy>2890</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>Spring_queue_5_13</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="RollbackAfterReferenceCall" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait_3" > 

<graphx>3010</graphx>
<graphy>3010</graphy>
<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8i
Pg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhl
bGxvUmVxdWVzdD5jYXNlNDwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0K
PC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait_3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeSubscriber_3" > 

<graphx>3130</graphx>
<graphy>3130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>100</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeSubscriber_3" log=""
          type="com.itko.lisa.esb.tibco.TibcoDirectJMSStep" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="consumeMessage_3" > 

<graphx>3250</graphx>
<graphy>3250</graphy>
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
<jndiDataSourceName></jndiDataSourceName>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>55f8b9a6905f1928114a2cb468b8bbfb</lisa.prefill.jndiServerPWD_enc>
<mqHost></mqHost>
<mqPort></mqPort>
<mqChannel></mqChannel>
<mqQManager></mqQManager>
<mqCCID>-1</mqCCID>
<mqSecurityExit></mqSecurityExit>
<mqSendExit></mqSendExit>
<mqReceiveExit></mqReceiveExit>
<mqConnMode>JMS</mqConnMode>
<mqReplyToQMgrName></mqReplyToQMgrName>
<mqTempQModel></mqTempQModel>
<mqOverrideQMan></mqOverrideQMan>
<mqUseCorrelationIDOnSubscribe>false</mqUseCorrelationIDOnSubscribe>
<mqEnvProperties>
</mqEnvProperties>
<mqExtMsgProperties>
</mqExtMsgProperties>
<tibRvService>7522:7524</tibRvService>
<tibRvNetwork></tibRvNetwork>
<tibRvDaemon></tibRvDaemon>
<tibRvConnMode>Native Client</tibRvConnMode>
<tibRvSendFieldName></tibRvSendFieldName>
<tibRvUseCMsg>false</tibRvUseCMsg>
<tibRvInBoxType>false</tibRvInBoxType>
<tibRvInBoxReplyMode>false</tibRvInBoxReplyMode>
<tibRvCmConfirmAdvisorySubject>_RV.INFO.RVCM.DELIVERY.CONFIRM.&gt;</tibRvCmConfirmAdvisorySubject>
<secondLevelAuthEnabled>false</secondLevelAuthEnabled>
<secondLevelAuthUser></secondLevelAuthUser>
<secondLevelAuthPwd></secondLevelAuthPwd>
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
<sonicBrokerPwd></sonicBrokerPwd>
<jcapsHost></jcapsHost>
<jcapsPort></jcapsPort>
<pubDestType>Queue</pubDestType>
<pubDestination></pubDestination>
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{java.queue.name}}</subDestination>
<subTimeout>30</subTimeout>
<repDestType>Queue</repDestType>
<durableSessionKey></durableSessionKey>
<sendMsgType>Empty</sendMsgType>
<sendMessage></sendMessage>
<jmsMessageObject>
</jmsMessageObject>
<onExNode>fail</onExNode>
<customProperties>
</customProperties>
<customConnProperties>
</customConnProperties>
<asyncPropKey>5_13_ASYNC_KEY_3</asyncPropKey>
    </Node>


    <Node name="consumeMessage_3" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="QueryDb_5" > 

<graphx>3370</graphx>
<graphy>3370</graphy>
<wrapperKeyName>5_13_ASYNC_KEY_3</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>fail</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_5" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="deleteErrQueue_Java_IT_3" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password>{{orcluser1}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>select T1.gdp, T2.currency, T3.capital from AMXUSER1.TABLE_1 T1, AMXUSER2.TABLE_2 T2, AMXUSER3.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert321" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_1.GDP</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>GDP</column>
        <regEx>case3</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert322" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_2.CURRENCY </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CURRENCY</column>
        <regEx>success</regEx>
</CheckResult>

<CheckResult assertTrue="false" name="Assert323" type="com.itko.lisa.jdbc.CheckResultJDBCValue">
<log>Fetch Table_3.CAPITAL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>CAPITAL</column>
        <regEx>case3</regEx>
</CheckResult>

    </Node>


    <Node name="deleteErrQueue_Java_IT_3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>3610</graphx>
<graphy>3610</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>Java1_queue_5_13</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Re-Deploy" > 

<graphx>3328</graphx>
<graphy>419</graphy>
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
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Undeploy failed</log>
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

<graphx>10</graphx>
<graphy>10</graphy>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
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
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>3730</graphx>
<graphy>3730</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>3850</graphx>
<graphy>3850</graphy>
    </Node>


</TestCase>
