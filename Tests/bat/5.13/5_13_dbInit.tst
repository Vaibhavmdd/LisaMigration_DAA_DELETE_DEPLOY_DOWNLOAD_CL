<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Feb 25 14:42:51 PST 2014 -->


<TestCase name="5_13_dbInit" version="2">
<id>7edec5cb</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTExODI5MzYwNjI=</sig>
<rootNode>randomGen</rootNode>
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
    <key>lisa.dropUser.rsp</key>
    <value>Set in Step dropUser</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropUser.rsp.time</key>
    <value>Set in Step dropUser</value>
    </Parameter>
    <Parameter>
    <key>index</key>
    <value>Set in Step dropUser</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSchema-User1.rsp</key>
    <value>Set in Step createSchema-User1</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSchema-User1.rsp.time</key>
    <value>Set in Step createSchema-User1</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSchema-User2.rsp</key>
    <value>Set in Step createSchema-User2</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSchema-User2.rsp.time</key>
    <value>Set in Step createSchema-User2</value>
    </Parameter>
    <Parameter>
    <key>lisa.createUser.rsp</key>
    <value>Set in Step createUser</value>
    </Parameter>
    <Parameter>
    <key>lisa.createUser.rsp.time</key>
    <value>Set in Step createUser</value>
    </Parameter>
    <Parameter>
    <key>userCreationMessage</key>
    <value>Set in Step createUser</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSchema-User3.rsp</key>
    <value>Set in Step createSchema-User3</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSchema-User3.rsp.time</key>
    <value>Set in Step createSchema-User3</value>
    </Parameter>
    <Parameter>
    <key>lisa.storeUserNames.rsp</key>
    <value>Set in Step storeUserNames</value>
    </Parameter>
    <Parameter>
    <key>lisa.storeUserNames.rsp.time</key>
    <value>Set in Step storeUserNames</value>
    </Parameter>
    <Parameter>
    <key>lisa.grantPermissionByUser2.rsp</key>
    <value>Set in Step grantPermissionByUser2</value>
    </Parameter>
    <Parameter>
    <key>lisa.grantPermissionByUser2.rsp.time</key>
    <value>Set in Step grantPermissionByUser2</value>
    </Parameter>
    <Parameter>
    <key>lisa.randomGen.rsp</key>
    <value>Set in Step randomGen</value>
    </Parameter>
    <Parameter>
    <key>lisa.randomGen.rsp.time</key>
    <value>Set in Step randomGen</value>
    </Parameter>
    <Parameter>
    <key>randomId</key>
    <value>Set in Step randomGen</value>
    </Parameter>
    <Parameter>
    <key>lisa.grantPermissionByUser3.rsp</key>
    <value>Set in Step grantPermissionByUser3</value>
    </Parameter>
    <Parameter>
    <key>lisa.grantPermissionByUser3.rsp.time</key>
    <value>Set in Step grantPermissionByUser3</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
</resultState>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="randomGen" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="dropUser" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>// create 4 digit random no..&#13;&#10;import java.io.*;&#13;&#10;import java.util.Calendar;&#13;&#10;&#13;&#10;int value = (int)(Math.random() * 8847);&#13;&#10;return value;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>randomId</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropUser" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createUser" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteUserOracle.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>createUser</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{hostname}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{portnumber}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>system</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>Tibco#123</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{=&quot;BAT5_13_&quot; + &quot;_&quot; + randomId + &quot;_&quot; + index}}</value>
    <name>Oracle user that is deleted</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{orclpwd1}}</value>
    <name>password for the user that is deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Data Sets -->
<readrec>DataSet1</readrec>
    </Node>


    <Node name="createUser" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="storeUserNames" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateUserOracle.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{hostname}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{portnumber}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>system</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>Tibco#123</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{=&quot;BAT5_13_&quot; + &quot;_&quot; + randomId + &quot;_&quot; + index}}</value>
    <name>Oracle user that is created</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>password</value>
    <name>password for the user that is created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.createUser.rsp</valueToFilterKey>
      <prop>userCreationMessage</prop>
      </Filter>

    </Node>


    <Node name="storeUserNames" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="dropUser" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>&#13;&#10;String str=userCreationMessage;&#13;&#10;&#13;&#10;int endIndex = str.indexOf(&quot; created successfully&quot;);&#13;&#10;String str1 = str.substring(0,endIndex);&#13;&#10;int startIndex = str1.lastIndexOf(&quot; &quot;);&#13;&#10;String userName = str1.substring(startIndex+1,endIndex);&#13;&#10;testExec.setStateValue(&quot;orcluser&quot; + index, userName);&#13;&#10;return userName;&#13;&#10;&#13;&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="createSchema-User1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createSchema-User2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Grant permissions for user {{username}}</Documentation>
<driver>com.tibco.tpcl.gen.db2.jdbc</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://jpandya-dt:50000/amxbat</connect>
<user>db2admin</user>
<password>db2admin</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>CREATE TABLE table_1 ( country character varying(20) PRIMARY KEY,  gdp character varying(20))</sql>
    </Node>


    <Node name="createSchema-User2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createSchema-User3" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Grant permissions for user {{username}}</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser2}}</user>
<password>password</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>CREATE TABLE table_2( country character varying(20) PRIMARY KEY,  currency character varying(20))</sql>
    </Node>


    <Node name="createSchema-User3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="grantPermissionByUser2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Grant permissions for user {{username}}</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser3}}</user>
<password>password</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>CREATE TABLE table_3( country character varying(20) PRIMARY KEY, capital character varying(20))</sql>
    </Node>


    <Node name="grantPermissionByUser2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="grantPermissionByUser3" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Grant permissions for user {{username}}</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser2}}</user>
<password>password</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>GRANT SELECT,INSERT,UPDATE,DELETE ON {{orcluser2}}.TABLE_2 TO {{orcluser1}}&#13;&#10;</sql>
    </Node>


    <Node name="grantPermissionByUser3" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Grant permissions for user {{username}}</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{portnumber}}:{{sid}}</connect>
<user>{{orcluser3}}</user>
<password>password</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>GRANT SELECT,INSERT,UPDATE,DELETE ON {{orcluser3}}.TABLE_3 TO {{orcluser1}}&#13;&#10;</sql>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <DataSet type="com.itko.lisa.test.CounterDataSet" name="DataSet1" atend="createSchema-User1" local="false" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVz
aG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAAFaW5kZXh0AAExeA==</sample>
    <propKey>index</propKey>
    <countFrom>1</countFrom>
    <countTo>3</countTo>
    <countIncrement>1</countIncrement>
    </DataSet>

</TestCase>
