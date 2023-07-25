<?xml version="1.0" ?>

<TestCase name="CreateUserOracle" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
</meta>

<id>8b395b99</id>
<Documentation>Create given user in Oracle DB.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTE5NDczMTMxMjg=</sig>
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
    <key>sid</key>
    <value></value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value></value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value></value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>Oracle user that is created</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>password for the user that is created</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.createUser.rsp</key>
    <value></value>
    <name>lisa.createUser.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.createUser.rsp.time</key>
    <value></value>
    <name>lisa.createUser.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value></value>
    <name>lisa.end.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value></value>
    <name>lisa.end.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value></value>
    <name>lisa.fail.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value></value>
    <name>lisa.fail.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.grantUserPermission.rsp</key>
    <value></value>
    <name>lisa.grantUserPermission.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.grantUserPermission.rsp.time</key>
    <value></value>
    <name>lisa.grantUserPermission.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>lisa.log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnCreateUserSQLError.rsp</key>
    <value></value>
    <name>lisa.returnCreateUserSQLError.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnCreateUserSQLError.rsp.time</key>
    <value></value>
    <name>lisa.returnCreateUserSQLError.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnGrantPermSQLError.rsp</key>
    <value></value>
    <name>lisa.returnGrantPermSQLError.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnGrantPermSQLError.rsp.time</key>
    <value></value>
    <name>lisa.returnGrantPermSQLError.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnSuccessString.rsp</key>
    <value></value>
    <name>lisa.returnSuccessString.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnSuccessString.rsp.time</key>
    <value></value>
    <name>lisa.returnSuccessString.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value></value>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value></value>
    <name>lisa.validate.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validatePassword.rsp</key>
    <value></value>
    <name>lisa.validatePassword.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validatePassword.rsp.time</key>
    <value></value>
    <name>lisa.validatePassword.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateUser.rsp</key>
    <value></value>
    <name>lisa.validateUser.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateUser.rsp.time</key>
    <value></value>
    <name>lisa.validateUser.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>password2</key>
    <value></value>
    <name>password2</name>
    </Parameter>
    <Parameter>
    <key>test</key>
    <value></value>
    <name>test</name>
    </Parameter>
    <Parameter>
    <key>username2</key>
    <value></value>
    <name>username2</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.itko.lisa.test.ClassLoaderSandbox" >
<dir>%TIBCO_COMMON_LIBRARY%\lib\ojdbc6.jar</dir>
<hot>true</hot>
      </Companion>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="8b395b99-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Creating user &apos;{{username}}&apos;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-validate" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validateUser" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Oracle validation has thrown uncaught Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Oracle Validation Error Then Fail" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Oracle Validation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import oracle.jdbc.driver.OracleDriver;&#13;&#10;&#13;&#10;String successMsg = &quot;Oracle Validation Success&quot;; // Do not modify, assertions on these strings might exist.&#13;&#10;String errorMsg = &quot;Oracle Validation Error&quot;;&#13;&#10;&#13;&#10;try {&#13;&#10; Class.forName(&quot;oracle.jdbc.driver.OracleDriver&quot;);&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10; return errorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage();&#13;&#10;}&#13;&#10;&#13;&#10;if (hostname.equals(&quot;&quot;) || hostname.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: hostname is required.&quot;;&#13;&#10;&#13;&#10;if (port.equals(&quot;&quot;) || port.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: port is required.&quot;;&#13;&#10;&#13;&#10;if (sid.equals(&quot;&quot;) || sid.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: sid is required.&quot;;&#13;&#10;&#13;&#10;if (adminusername.equals(&quot;&quot;) || adminusername.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: adminusername is required.&quot;;&#13;&#10;&#13;&#10;if (adminpassword.equals(&quot;&quot;) || adminpassword.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: adminpassword is required.&quot;;&#13;&#10;&#13;&#10;if (username.equals(&quot;&quot;) || username.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: username is required.&quot;;&#13;&#10;&#13;&#10;if (password.equals(&quot;&quot;) || password.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: password is required.&quot;;&#13;&#10;&#13;&#10;return successMsg;</script>
    </Node>


    <Node name="validateUser" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-validateUser" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validatePassword" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.validateUser.rsp</valueToFilterKey>
      <prop>username2</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>// Oracle does no like username/pwd that contains &quot;.&quot;, &quot;-&quot;&#13;&#10;/*&#13;&#10;if (testExec.parseInState(username).contains(&quot;.&quot;))&#13;&#10; return &quot;\&quot;&quot; + testExec.parseInState(username) + &quot;\&quot;&quot;;&#13;&#10;else if (testExec.parseInState(username).contains(&quot;-&quot;))&#13;&#10; return &quot;\&quot;&quot; + testExec.parseInState(username) + &quot;\&quot;&quot;;&#13;&#10; return testExec.parseInState(username);&#13;&#10;*/&#13;&#10;import org.apache.commons.lang.StringEscapeUtils;&#13;&#10;return StringEscapeUtils.unescapeHtml(testExec.parseInState(username)); </script>
    </Node>


    <Node name="validatePassword" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-validatePassword" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createUser" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.validatePassword.rsp</valueToFilterKey>
      <prop>password2</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>// Oracle does no like username/pwd that contains &quot;.&quot;, &quot;-&quot;&#13;&#10;/*&#13;&#10;if (testExec.parseInState(password).contains(&quot;.&quot;))&#13;&#10; return &quot;\&quot;&quot; + testExec.parseInState(password) + &quot;\&quot;&quot;;&#13;&#10;else if (testExec.parseInState(password).contains(&quot;-&quot;))&#13;&#10; return &quot;\&quot;&quot; + testExec.parseInState(password) + &quot;\&quot;&quot;;&#13;&#10; return testExec.parseInState(password);&#13;&#10;*/&#13;&#10;import org.apache.commons.lang.StringEscapeUtils;&#13;&#10;return StringEscapeUtils.unescapeHtml(testExec.parseInState(password)); </script>
    </Node>


    <Node name="createUser" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="8b395b99-createUser" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="grantUserPermission" > 

<Documentation>Create user {{username}}</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{adminusername}}</user>
<password_enc>l2019dc297bda9eccfa3e6673c49f36405631eae9dc4943fe7151d5f52fdc585ef1f098f25387cc3d825dd583097f6411de</password_enc>
<onSQLError>returnCreateUserSQLError</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>CREATE USER {{username2}} IDENTIFIED BY {{password2}} DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="grantUserPermission" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="8b395b99-grantUserPermission" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="returnSuccessString" > 

<Documentation>Grant permissions for user {{username}}</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{adminusername}}</user>
<password_enc>lddc5973ee50779dbb9486dbc8c499f2132731db1348f0067f27139bda542f647241188bb6be483571ae15e1c154bfe1109</password_enc>
<onSQLError>returnGrantPermSQLError</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>GRANT CONNECT, RESOURCE TO {{username2}}</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="returnSuccessString" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-returnSuccessString" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<onerror>abort</onerror>
<script>return &quot;Oracle user &quot; + (username2) + &quot; created successfully&quot;;</script>
    </Node>


    <Node name="returnCreateUserSQLError" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-returnCreateUserSQLError" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<onerror>abort</onerror>
<script>return &quot;Oracle user creation failed&quot;;</script>
    </Node>


    <Node name="returnGrantPermSQLError" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-returnGrantPermSQLError" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<onerror>abort</onerror>
<script>return &quot;Oracle user grant failed&quot;;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="B21F4593722A11ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="8b395b99-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="8b395b99-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
