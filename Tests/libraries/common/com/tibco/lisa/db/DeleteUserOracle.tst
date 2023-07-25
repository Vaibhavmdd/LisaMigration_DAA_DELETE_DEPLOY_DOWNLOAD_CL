<?xml version="1.0" ?>

<TestCase name="DeleteUserOracle" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/04/2022" host="na2devasgaks01" />
</meta>

<id>8b395b99</id>
<Documentation>Delete given user.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTUxMDQ0OTgzNw==</sig>
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
    <name>Oracle user that is deleted</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>password for the user that is deleted</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value></value>
    <name>lisa.Log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUser.rsp</key>
    <value></value>
    <name>lisa.deleteUser.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUser.rsp.time</key>
    <value></value>
    <name>lisa.deleteUser.rsp.time</name>
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
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnDropUserSQLError.rsp</key>
    <value></value>
    <name>lisa.returnDropUserSQLError.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnDropUserSQLError.rsp.time</key>
    <value></value>
    <name>lisa.returnDropUserSQLError.rsp.time</name>
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

<log>Deleting user &apos;{{username}}&apos;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-validate" 
          think="0" 
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
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deleteUser" > 


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


    <Node name="deleteUser" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="8b395b99-deleteUser" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="returnSuccessString" > 

<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{adminusername}}</user>
<password_enc>la7f285d8d0a9b40de82463f13e55dc68eea2ed0175af694aec8e40cd5990b65c77dc4d3255e72445dd6822e0278fefb2cd</password_enc>
<onSQLError>returnDropUserSQLError</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>DROP USER {{username2}} CASCADE</sql>
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
<script>return &quot;Oracle user &quot; + (username2) + &quot; dropped successfully&quot;;</script>
    </Node>


    <Node name="returnDropUserSQLError" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="8b395b99-returnDropUserSQLError" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<onerror>abort</onerror>
<script>return &quot;Oracle user drop failed&quot;;</script>
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


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="CC1EE433722B11ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
