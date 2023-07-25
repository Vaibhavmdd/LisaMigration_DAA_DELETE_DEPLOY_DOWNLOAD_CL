<?xml version="1.0" ?>

<TestCase name="5.13" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/24/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/26/2023" host="na2devasgaks01" />
</meta>

<id>da2793a6</id>
<Documentation>One way Transaction intent with Oracle 11g.&#13;&#10;Provision and remove Oracle JDBC feature.&#13;&#10;Validate database rollback and message redelivery both for &#13;&#10;Java and Spring components&#13;&#10;&#13;&#10;Scenario: SOAP(HTTP) &lt;-&gt; Java &lt;-&gt; Spring &lt;-&gt; Java &#13;&#10;&#13;&#10;MEP: In-Only &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Doc/Literal/Type</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE3MjMzMjg2ODg=</sig>
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
          uid="41CE62D99C6811ED8E7C506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="setupOracleDriver" > 

<file>{{LISA_TC_PATH}}/data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="setupOracleDriver" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-setupOracleDriver" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="CreateRI" > 


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
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.oracle11g.driver</value>
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
    <name>waitForCompletion</name>
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


    <Node name="CreateRI" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-CreateRI" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 


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
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.ri</value>
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
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="cleanup_schema_1" > 


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
    </Node>


    <Node name="cleanup_schema_1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-cleanup_schema_1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="cleanup_schema_2" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>lbd0931a0d652ea4944d846fe1ae3fbcd66b059df7f0ad43ce6eab7019ae04d036cb7e3a140474121adb15545</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>delete from {{orcluser1}}.TABLE_1&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="cleanup_schema_2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-cleanup_schema_2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="cleanup_schema_3" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l00634093a83f817708e66e1c7e7e330dcf8d2f214db21102b5891da597f3059129cab701752eb684981bd64bcb</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>delete from {{orcluser2}}.TABLE_2&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="cleanup_schema_3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-cleanup_schema_3" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="insert_schema_1" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>lba2181331b657f02487ad9750a71428832cb6f2cd2e7e327eb146e59bbe11be08d2d2d19442a06b2a4d17c877a</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>delete from {{orcluser3}}.TABLE_3&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="insert_schema_1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-insert_schema_1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="insert_schema_2" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l4a08c402f5d28922f19b813d7044dae1aa87d24bdc66d607bff891cc7df48ab605690b1adfd877d24d376e1f2c</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>INSERT INTO {{orcluser1}}.table_1(country, gdp) VALUES (&apos;India&apos;, &apos;success&apos;)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="insert_schema_2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-insert_schema_2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="insert_schema_3" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l6d0ad150303c2da7c633ad414a9c7ec39278a09844a9f97b3c554f362c056f2aa1c8d19ce012c6276f52174aaf</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>INSERT INTO {{orcluser2}}.table_2(country, currency) VALUES (&apos;India&apos;, &apos;success&apos;)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="insert_schema_3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-insert_schema_3" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrQueue_Spring_IT" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l6bf4d6d7668e1e9f9c53bff84c3ef5ae977a1f026dde73b46646450122817297f4e926eea4e00bdf74cc4c2d9b</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>INSERT INTO {{orcluser3}}.table_3(country, capital) VALUES (&apos;India&apos;, &apos;success&apos;)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="deleteErrQueue_Spring_IT" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-deleteErrQueue_Spring_IT" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrQueue_Java_IT" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/server_root.cert.pem</value>
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
          uid="da2793a6-deleteErrQueue_Java_IT" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="QueryDb_1" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/server_root.cert.pem</value>
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
          uid="da2793a6-QueryDb_1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="RollbackAfterFirstUpdate" > 


      <!-- Assertions -->
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

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l087e976a05efd7a378424e5b29c44d40312f764c0dfdf6e620e8fd85e3cd106fe88aae43ea9d0cb98483e29d</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>false</usePool>
<sql>select T1.gdp, T2.currency, T3.capital from {{orcluser1}}.TABLE_1 T1, {{orcluser2}}.TABLE_2 T2, {{orcluser3}}.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="RollbackAfterFirstUpdate" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="da2793a6-RollbackAfterFirstUpdate" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 

<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhlbGxvUmVxdWVzdD5jYXNlMTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSubscriber" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="da2793a6-invokeSubscriber" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="consumeMessage" > 

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
<lisa.prefill.jndiServerURLs>tcp://{{emshost}}:{{emsport_tcp}}</lisa.prefill.jndiServerURLs>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>le59c1330c9f99f4d5ce0071c12b8d8bf064356f40b31f69aee92487c1a7b2f3246cca22245643c9ce1b0</lisa.prefill.jndiServerPWD_enc>
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
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{java.queue.name}}</subDestination>
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


    <Node name="consumeMessage" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          uid="da2793a6-consumeMessage" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="QueryDb_2" > 

<wrapperKeyName>5_13_ASYNC_KEY_1</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>abort</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-QueryDb_2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrQueue_Java_IT_1" > 


      <!-- Assertions -->
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

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l182f67624f67a4a26d640186e327275e995f51dbb57977ccc0a0f8c2207a9d58899695505f6eb59d5b29ccfd</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>false</usePool>
<sql>select T1.gdp, T2.currency, T3.capital from {{orcluser1}}.TABLE_1 T1, {{orcluser2}}.TABLE_2 T2, {{orcluser3}}.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="deleteErrQueue_Java_IT_1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-deleteErrQueue_Java_IT_1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="RollbackAfterSecondUpdate" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
          uid="da2793a6-RollbackAfterSecondUpdate" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="wait_1" > 

<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhlbGxvUmVxdWVzdD5jYXNlMjwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait_1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-wait_1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSubscriber_1" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="da2793a6-invokeSubscriber_1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="consumeMessage_1" > 

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
<lisa.prefill.jndiServerURLs>tcp://{{emshost}}:{{emsport_tcp}}</lisa.prefill.jndiServerURLs>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l79281bc7d09da5b7902182301ae956635dd44fdc45a28f37245484cab6322d51b352c740206260dcf34b</lisa.prefill.jndiServerPWD_enc>
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
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{java.queue.name}}</subDestination>
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
<asyncPropKey>5_13_ASYNC_KEY_2</asyncPropKey>
    </Node>


    <Node name="consumeMessage_1" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          uid="da2793a6-consumeMessage_1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="QueryDb_3" > 

<wrapperKeyName>5_13_ASYNC_KEY_2</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>abort</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-QueryDb_3" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrQueue_Java_IT_2" > 


      <!-- Assertions -->
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

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l24f12bf81d75787c887064fbc611a5f032a16d5b75ad55681d8af0f18bc3323d76fb5dedc3caaab6ca643551</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>false</usePool>
<sql>select T1.gdp, T2.currency, T3.capital from {{orcluser1}}.TABLE_1 T1, {{orcluser2}}.TABLE_2 T2, {{orcluser3}}.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="deleteErrQueue_Java_IT_2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-deleteErrQueue_Java_IT_2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/server_root.cert.pem</value>
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
          uid="da2793a6-RollbackInSpring_IT" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="wait_2" > 

<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhlbGxvUmVxdWVzdD5jYXNlMzwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait_2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-wait_2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSubscriber_2" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="da2793a6-invokeSubscriber_2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="consumeMessage_2" > 

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
<lisa.prefill.jndiServerURLs>tcp://{{emshost}}:{{emsport_tcp}}</lisa.prefill.jndiServerURLs>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>l8f895cc011f79d22b1bca1d27227a2b6d4a1025fe6bd791f16af9fc6f54a3c1265ec39e6295dae854a8f</lisa.prefill.jndiServerPWD_enc>
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
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{spring.queue.name}}</subDestination>
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
<asyncPropKey>5_13_ASYNC_KEY_3</asyncPropKey>
    </Node>


    <Node name="consumeMessage_2" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          uid="da2793a6-consumeMessage_2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="QueryDb_4" > 

<wrapperKeyName>5_13_ASYNC_KEY_3</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>abort</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_4" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-QueryDb_4" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrQueue_Spring_IT_1" > 


      <!-- Assertions -->
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

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>lc77a96a9a91e0877bf13b96d1aacb6c2327575a0e7b67b2141a2548fbeba8e7825eaed4c92c3519b2d922bd0</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>false</usePool>
<sql>select T1.gdp, T2.currency, T3.capital from {{orcluser1}}.TABLE_1 T1, {{orcluser2}}.TABLE_2 T2, {{orcluser3}}.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="deleteErrQueue_Spring_IT_1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-deleteErrQueue_Spring_IT_1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="RollbackAfterReferenceCall" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/server_root.cert.pem</value>
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
          uid="da2793a6-RollbackAfterReferenceCall" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="wait_3" > 

<url>http://{{host1}}:{{port3}}/oneWayTransaction/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhlbGxvUmVxdWVzdD5jYXNlNDwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="wait_3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-wait_3" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeSubscriber_3" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="da2793a6-invokeSubscriber_3" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="consumeMessage_3" > 

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
<lisa.prefill.jndiServerURLs>tcp://{{emshost}}:{{emsport_tcp}}</lisa.prefill.jndiServerURLs>
<lisa.prefill.jndiServerUsers>{{emsuser}}</lisa.prefill.jndiServerUsers>
<lisa.prefill.jndiServerPWD_enc>lcbcb4cd269129db29f31b53638414fffef15fa41e866dc83e4df084c2d8de8473d599b7850d8889edde1</lisa.prefill.jndiServerPWD_enc>
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
<subDestType>Queue - ASYNC</subDestType>
<subDestination>{{java.queue.name}}</subDestination>
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
<asyncPropKey>5_13_ASYNC_KEY_3</asyncPropKey>
    </Node>


    <Node name="consumeMessage_3" log=""
          type="com.itko.lisa.jms.AsyncConsumerNode" 
          version="1" 
          uid="da2793a6-consumeMessage_3" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="QueryDb_5" > 

<wrapperKeyName>5_13_ASYNC_KEY_3</wrapperKeyName>
<waitTimeOut>60</waitTimeOut>
<messageDynObj>
</messageDynObj>
<onExNode>abort</onExNode>
<autoExtractPayLoad>false</autoExtractPayLoad>
    </Node>


    <Node name="QueryDb_5" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="da2793a6-QueryDb_5" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="deleteErrQueue_Java_IT_3" > 


      <!-- Assertions -->
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

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser1}}</user>
<password_enc>l2fd1aeb75cd100684cb6bb151d99a1604ecbd33f3bde06e54ce45b6c058f7eb35badf46b2813bf2c7c0d1eb4</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>false</usePool>
<sql>select T1.gdp, T2.currency, T3.capital from {{orcluser1}}.TABLE_1 T1, {{orcluser2}}.TABLE_2 T2, {{orcluser3}}.TABLE_3 T3 where (T1.Country=T2.Country AND T2.Country=T3.Country)&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="deleteErrQueue_Java_IT_3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-deleteErrQueue_Java_IT_3" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/server_root.cert.pem</value>
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
          uid="da2793a6-undeployApp" 
          think="0-0" 
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
    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="da2793a6-Re-Deploy" 
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
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="8221493B9C6611ED8E7C506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="da2793a6-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="da2793a6-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
