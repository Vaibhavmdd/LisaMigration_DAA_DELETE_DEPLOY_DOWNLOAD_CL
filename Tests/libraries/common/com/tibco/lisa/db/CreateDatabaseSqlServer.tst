<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Jun 29 10:04:37 PDT 2010 -->


<TestCase name="createDatabaseSqlServer" version="2">
<id>8b395b99</id>
<Documentation>Create given databse for SQL Server.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS03ODE2ODU0NDk=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostname</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value></value>
    <name>Database to be created</name>
    </Parameter>
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
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.successLog.rsp</key>
    <value>Set in Step successLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.successLog.rsp.time</key>
    <value>Set in Step successLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnString.rsp</key>
    <value>Set in Step returnString</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnString.rsp.time</key>
    <value>Set in Step returnString</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.createDatabase.rsp</key>
    <value>Set in Step createDatabase</value>
    </Parameter>
    <Parameter>
    <key>lisa.createDatabase.rsp.time</key>
    <value>Set in Step createDatabase</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>125</graphx>
<graphy>551</graphy>
      <log>Creating database &apos;{{database}}&apos;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createDatabase" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import com.microsoft.sqlserver.jdbc.SQLServerDriver;&#13;&#10;&#13;&#10;String successMsg = &quot;SQL Server Validation Success&quot;; // Do not modify, assertions on these strings might exist.&#13;&#10;String errorMsg = &quot;SQL Server Validation Error&quot;;&#13;&#10;&#13;&#10;try {&#13;&#10; Class.forName(&quot;com.microsoft.sqlserver.jdbc.SQLServerDriver&quot;);&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10; return errorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage();&#13;&#10;}&#13;&#10;&#13;&#10;if (hostname.equals(&quot;&quot;) || hostname.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: hostname is required.&quot;;&#13;&#10;&#13;&#10;if (port.equals(&quot;&quot;) || port.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: port is required.&quot;;&#13;&#10;&#13;&#10;if (username.equals(&quot;&quot;) || username.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: username is required.&quot;;&#13;&#10;&#13;&#10;if (password.equals(&quot;&quot;) || password.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: password is required.&quot;;&#13;&#10;&#13;&#10;if (database.equals(&quot;&quot;) || database.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: database is required.&quot;;&#13;&#10;&#13;&#10;return successMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Sql Server validation has thrown uncaught Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="SQL Server Validation Error Then Fail" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SQL Server Validation Error</param>
</CheckResult>

    </Node>


    <Node name="createDatabase" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="successLog" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Create Database {{database}}...</Documentation>
<driver>com.microsoft.sqlserver.jdbc.SQLServerDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:sqlserver://{{hostname}}:{{port}}</connect>
<user>{{username}}</user>
<password>{{password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>CREATE DATABASE {{database}} &#13;&#10;</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.dynexec.FilterConvertObjToLastResponse">
        <valueToFilterKey>lisa.createDatabase.rsp</valueToFilterKey>
      <toXML>false</toXML>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Sql Server validation has thrown uncaught Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any SQL Exception" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>java.sql.SQLException</param>
</CheckResult>

    </Node>


    <Node name="successLog" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="returnString" > 

<graphx>125</graphx>
<graphy>551</graphy>
      <log>Sucessfully created database &apos;{{database}}&apos;.</log>
    </Node>


    <Node name="returnString" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>595</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>return &quot;Database {{database}} Created Successfully&quot;;</script>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>305</graphx>
<graphy>610</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>484</graphx>
<graphy>551</graphy>
    </Node>


</TestCase>
