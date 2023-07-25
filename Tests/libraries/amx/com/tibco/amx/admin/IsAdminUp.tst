<?xml version="1.0" ?>

<TestCase name="IsAdminUp" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/04/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/06/2023" host="na2devasgaks01" />
</meta>

<id>56f3d3b4</id>
<Documentation>Returns true if Admin server is up and running.&#13;&#10;This sub-process will keep trying till timeout is reached, then return false.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTIwNzAwMTI0MjI=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>url</key>
    <value>http://localhost:8120</value>
    <name>Admin url. If provided 3 parameters below (host, port, secure) are ignored.</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>secure</key>
    <value>false</value>
    <name>Use SSL to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>user</key>
    <value>root</value>
    <name>User name to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>t</value>
    <name>User password to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>host2</key>
    <value></value>
    <name>host2</name>
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
    <key>lisa.getHost.rsp</key>
    <value></value>
    <name>lisa.getHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getHost.rsp.time</key>
    <value></value>
    <name>lisa.getHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getPort.rsp</key>
    <value></value>
    <name>lisa.getPort.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getPort.rsp.time</key>
    <value></value>
    <name>lisa.getPort.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getProtocol.rsp</key>
    <value></value>
    <name>lisa.getProtocol.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getProtocol.rsp.time</key>
    <value></value>
    <name>lisa.getProtocol.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value></value>
    <name>lisa.getTimeLimit.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value></value>
    <name>lisa.getTimeLimit.rsp.time</name>
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
    <key>lisa.repeatingCheckEnvService.rsp</key>
    <value></value>
    <name>lisa.repeatingCheckEnvService.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckEnvService.rsp.time</key>
    <value></value>
    <name>lisa.repeatingCheckEnvService.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckInitServlet.rsp</key>
    <value></value>
    <name>lisa.repeatingCheckInitServlet.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckInitServlet.rsp.time</key>
    <value></value>
    <name>lisa.repeatingCheckInitServlet.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp</key>
    <value></value>
    <name>lisa.repeatingSleep.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value></value>
    <name>lisa.repeatingSleep.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value></value>
    <name>lisa.success.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value></value>
    <name>lisa.success.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp</key>
    <value></value>
    <name>lisa.timeout.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value></value>
    <name>lisa.timeout.rsp.time</name>
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
    <key>port2</key>
    <value></value>
    <name>port2</name>
    </Parameter>
    <Parameter>
    <key>protocol2</key>
    <value></value>
    <name>protocol2</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="56f3d3b4-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Connecting to {{url}} &#13;&#10;{{=secure.equals(&quot;true&quot;)?&quot;https://&quot;:&quot;http://&quot;}}{{host}}:{{port}} &#13;&#10;</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-validate" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getHost" > 


      <!-- Assertions -->
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
        <param>Sub-Process Validation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String errorMsg = &quot;Sub-Process Validation Error&quot;; // Do not modify. Assertion exists on this string&#13;&#10;String successMsg = &quot;Sub-Process Validation Success&quot;;&#13;&#10;&#13;&#10;String hostStr;&#13;&#10;String portStr;&#13;&#10;String protocalStr;&#13;&#10;&#13;&#10;try {&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    hostStr = url2.getHost();&#13;&#10;    portStr = url2.getPort().toString();&#13;&#10;    protocolStr = url2.getProtocol();&#13;&#10;    if (!protocolStr.equals(&quot;http&quot;) &amp;&amp; !protocolStr.equals(&quot;https&quot;))&#13;&#10;        return errorMsg + &quot;: Protocol must be http or https&quot;;&#13;&#10;}&#13;&#10;else {&#13;&#10;    hostStr = testExec.parseInState(host.toString());&#13;&#10;    portStr = testExec.parseInState(port.toString());&#13;&#10;    if (!testExec.parseInState(secure.toString()).equals(&quot;true&quot;) &amp;&amp; !testExec.parseInState(secure.toString()).equals(&quot;false&quot;))&#13;&#10;        return errorMsg + &quot;: Secure parameter must be boolean: true or false&quot;;&#13;&#10;    protocolStr = (testExec.parseInState(secure.toString()).equals(&quot;true&quot;)?&quot;https&quot;:&quot;http&quot;);&#13;&#10;}&#13;&#10;&#13;&#10;&#13;&#10;if (hostStr.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Host is required&quot;;&#13;&#10;if (portStr.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Port is required&quot;;&#13;&#10;if (testExec.parseInState(user.toString()).equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: User is required&quot;;&#13;&#10;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    return errorMsg + e.toString();&#13;&#10;}</script>
    </Node>


    <Node name="getHost" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-getHost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getPort" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getHost.rsp</valueToFilterKey>
      <prop>host2</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String hostStr;&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    hostStr = url2.getHost();&#13;&#10;}&#13;&#10;else {&#13;&#10;    hostStr = testExec.parseInState(host.toString());&#13;&#10;}&#13;&#10;&#13;&#10;return hostStr;&#13;&#10;&#13;&#10;</script>
    </Node>


    <Node name="getPort" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-getPort" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getProtocol" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getPort.rsp</valueToFilterKey>
      <prop>port2</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String portStr;&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    portStr = url2.getPort().toString();&#13;&#10;}&#13;&#10;else {&#13;&#10;    portStr = testExec.parseInState(port.toString());&#13;&#10;}&#13;&#10;&#13;&#10;return portStr;&#13;&#10;</script>
    </Node>


    <Node name="getProtocol" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-getProtocol" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getTimeLimit" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getProtocol.rsp</valueToFilterKey>
      <prop>protocol2</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String protocolStr;&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    protocolStr = url2.getProtocol();&#13;&#10;}&#13;&#10;else {    &#13;&#10;    protocolStr = (testExec.parseInState(secure.toString()).equals(&quot;true&quot;)?&quot;https&quot;:&quot;http&quot;);&#13;&#10;}&#13;&#10;&#13;&#10;return protocolStr;&#13;&#10;</script>
    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-getTimeLimit" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="repeatingCheckInitServlet" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Calendar future = Calendar.getInstance();&#13;&#10;future.add(Calendar.SECOND, timeout.intValue());&#13;&#10;testExec.setStateValue(&quot;future&quot;, future);</script>
    </Node>


    <Node name="repeatingCheckInitServlet" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="56f3d3b4-repeatingCheckInitServlet" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingCheckEnvService" > 

<Documentation>Verify Init Servlet is up and running</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert272" type="com.itko.lisa.test.AssertByScript">
<log>Admin Server is not up</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Expected response code was 200. Got {{lisa.repeatingCheckInitServlet.http.responseCode}}</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<url>
<proto>{{protocol2}}</proto>
<host>{{host2}}</host>
<port>{{port2}}</port>
<path>/amxadministrator.httpbasic/AdminInitServlet</path>
<user>{{user}}</user>
<pass_enc>l48daae39b2e676c7d70b2547b4e2ef50f5dd727dde2abdd909897aeda139274b273502c98f23f233fd972c58</pass_enc>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="repeatingCheckEnvService" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="56f3d3b4-repeatingCheckEnvService" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="success" > 

<Documentation>Verify Environment service is up and running</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert307" type="com.itko.lisa.test.AssertByScript">
<log>Admin Server is not up</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Expected response code was 200. Got {{lisa.repeatingCheckEnvService.http.responseCode}}</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<url>
<proto>{{protocol2}}</proto>
<host>{{host2}}</host>
<port>{{port2}}</port>
<path>/amxadministrator.httpbasic/services/EnvService</path>
<query>wsdl</query>
<user>{{user}}</user>
<pass_enc>l004323e899e51ee2198915cac1c0503dc2ce25687bef1343198f7ce779f63a7b48571bc1e8d2482426afa30e</pass_enc>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>true</params-saved-as-unicode>
    </Node>


    <Node name="success" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-success" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;true&quot;;</script>
    </Node>


    <Node name="repeatingSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="56f3d3b4-repeatingSleep" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingCheckInitServlet" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>30</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>30</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="timeout" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="56f3d3b4-timeout" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;false&quot;;</script>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="56f3d3b4-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="56f3d3b4-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="BCE92904746111ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
