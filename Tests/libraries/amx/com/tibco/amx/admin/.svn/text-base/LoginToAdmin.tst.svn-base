<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri May 04 13:33:08 PDT 2012 -->


<TestCase name="LoginToAdmin" version="2">
<id>ccfd4b3c</id>
<Documentation>Login to Admin Server&#13;&#10;Returns true if login is successful, false otherwise.&#13;&#10;Enable the following properties in your test case:&#13;&#10;- welcomePageContent to access the welcome page content&#13;&#10;- jessionidCookie to access the JSESSIONID cookie&#13;&#10;- ssoidCookie to access the SSO_ID cookie</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNjUyODQwMDAz</sig>
<rootNode>validate</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>adminURL</key>
    <value>http://localhost:8120</value>
    <name>AMX Admin URL</name>
    </Parameter>
    <Parameter>
    <key>user</key>
    <value>root</value>
    <name>User name to login to Admin server</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>t</value>
    <name>User password to login to Admin server</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>jsessionidCookie</key>
    <value>Set in Step getJSessionIDCookie</value>
    </Parameter>
    <Parameter>
    <key>welcomePageContent</key>
    <value>Set in Step adminWelcome</value>
    </Parameter>
    <Parameter>
    <key>ssoidCookie</key>
    <value>Set in Step getSSOIDCookie</value>
    </Parameter>
    <Parameter>
    <key>protocol</key>
    <value>Value</value>
    <name>http or https</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value>Value</value>
    <name>admin host</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>Value</value>
    <name>admin port</name>
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
      <Filter type="com.itko.lisa.test.SimpleWebFilter">
              <onErrorNode>fail</onErrorNode>
      </Filter>

    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getProtocol" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String errorMsg = &quot;Login Validation Error&quot;; // Do not modify. Assertion exists on this string&#13;&#10;String successMsg = &quot;Login Validation Success&quot;;&#13;&#10;&#13;&#10;String protocalStr;&#13;&#10;&#13;&#10;try {&#13;&#10;&#13;&#10;    if (testExec.parseInState(adminURL.toString()).equals(&quot;&quot;)) &#13;&#10;        return errorMsg + &quot;: adminURL is required&quot;;&#13;&#10;&#13;&#10;    if (testExec.parseInState(user.toString()).equals(&quot;&quot;))&#13;&#10;        return errorMsg + &quot;: User is required&quot;;&#13;&#10;&#13;&#10;    URL url = new URL(testExec.parseInState(adminURL.toString()));&#13;&#10;    protocolStr = url.getProtocol();&#13;&#10;    if (!protocolStr.equals(&quot;http&quot;) &amp;&amp; !protocolStr.equals(&quot;https&quot;))&#13;&#10;        return errorMsg + &quot;: Protocol must be http or https&quot;;&#13;&#10;    return successMsg;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    return errorMsg + &quot;: &quot; + e.toString();&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert106" type="com.itko.lisa.test.CheckResultRegEx">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Login Validation Error</param>
</CheckResult>

    </Node>


    <Node name="getProtocol" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getHost" > 

<graphx>490</graphx>
<graphy>490</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;url = new URL(testExec.parseInState(adminURL.toString()));&#13;&#10;&#13;&#10;return url.getProtocol();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getProtocol.rsp</valueToFilterKey>
      <prop>protocol</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getHost" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getPort" > 

<graphx>610</graphx>
<graphy>610</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;url = new URL(testExec.parseInState(adminURL.toString()));&#13;&#10;&#13;&#10;return url.getHost();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getHost.rsp</valueToFilterKey>
      <prop>host</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getPort" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="adminSecurityCheck" > 

<graphx>730</graphx>
<graphy>730</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;url = new URL(testExec.parseInState(adminURL.toString()));&#13;&#10;&#13;&#10;return url.getPort();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getPort.rsp</valueToFilterKey>
      <prop>port</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="adminSecurityCheck" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="adminWelcome" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>
<proto>{{protocol}}</proto>
<host>{{host}}</host>
<port>{{port}}</port>
<path>/amxadministrator/j_security_check</path>
</url>
<images>false</images>
<postList>
    <Parameter>
    <key>j_username</key>
    <value>{{user}}</value>
    </Parameter>
    <Parameter>
    <key>j_password</key>
    <value>{{password}}</value>
    </Parameter>
</postList>
<postEnc>application/x-www-form-urlencoded</postEnc>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterLisaProps">
              </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert70" type="com.itko.lisa.test.CheckResultAny">
<log>Assert [Assert71] fired false of type Any Non-Empty Result</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
</CheckResult>

<CheckResult assertTrue="false" name="Assert141" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>HTTP Response Code 200 was expected but did not get it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert188" type="com.itko.lisa.test.CheckResultContains">
<log>Wrong credentials or invalid login</log>
<then>loginFailure</then>
<valueToAssertKey></valueToAssertKey>
        <param>Wrong credentials or invalid login</param>
</CheckResult>

    </Node>


    <Node name="adminWelcome" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getJSESSIONIDCookie" > 

<graphx>250</graphx>
<graphy>250</graphy>
<url>
<proto>{{protocol}}</proto>
<host>{{host}}</host>
<port>{{port}}</port>
<path>/amxadministrator/admin.jsp</path>
</url>
<images>false</images>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.adminWelcome.rsp</valueToFilterKey>
      <prop>welcomePageContent</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert71" type="com.itko.lisa.test.CheckResultAny">
<log>Assert [Assert71] fired false of type Any Non-Empty Result</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
</CheckResult>

<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>HTTP Response Code 200 was expected but did not get it</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

    </Node>


    <Node name="getJSESSIONIDCookie" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getSSOIDCookie" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import org.apache.commons.httpclient.Cookie;&#13;&#10;&#13;&#10;try {&#13;&#10;    Cookie lisaCookie = testExec.getStateObject(&quot;LISA_COOKIE_&quot; + host + &quot;/amxadministrator/JSESSIONID&quot;);&#13;&#10;    return lisaCookie.getName() + &quot;=&quot; + lisaCookie.getValue();&#13;&#10;}&#13;&#10;catch(NullPointerException e) {&#13;&#10;    return &quot;Error: JSESSIONID cookie was not set. Login might have failed...&quot;;&#13;&#10;}&#13;&#10;catch(Exception e) {&#13;&#10;    return &quot;Error: &quot; + e.getMessage();&#13;&#10;}&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getJSESSIONIDCookie.rsp</valueToFilterKey>
      <prop>jsessionidCookie</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert117" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>loginFailure</then>
<valueToAssertKey></valueToAssertKey>
        <param>Error: JSESSIONID cookie was not set</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert217" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Error</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getSSOIDCookie" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="loginSuccess" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import org.apache.commons.httpclient.Cookie;&#13;&#10;&#13;&#10;try {&#13;&#10;    Cookie lisaCookie = testExec.getStateObject(&quot;LISA_COOKIE_&quot; + host + &quot;/SSO_ID&quot;);&#13;&#10;    return lisaCookie.getName() + &quot;=&quot; + lisaCookie.getValue();&#13;&#10;}&#13;&#10;catch(NullPointerException e) {&#13;&#10;    return &quot;Error: SSO_ID cookie was not set. Login might have failed...&quot;;&#13;&#10;}&#13;&#10;catch(Exception e) {&#13;&#10;    return &quot;Error: &quot; + e.getMessage();&#13;&#10;}&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getSSOIDCookie.rsp</valueToFilterKey>
      <prop>ssoidCookie</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert118" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>loginFailure</then>
<valueToAssertKey></valueToAssertKey>
        <param>ErrorError: SSO_ID cookie was not set</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert218" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Error</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="loginSuccess" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>250</graphx>
<graphy>250</graphy>
<onerror>fail</onerror>
<script>return true;</script>
    </Node>


    <Node name="loginFailure" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>370</graphx>
<graphy>370</graphy>
<onerror>fail</onerror>
<script>return false;</script>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>850</graphx>
<graphy>850</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>970</graphx>
<graphy>970</graphy>
    </Node>


</TestCase>
