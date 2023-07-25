<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Sep 15 16:43:11 PDT 2010 -->


<TestCase name="IsAdminUp" version="2">
<id>56f3d3b4</id>
<Documentation>Returns true if Admin server is up and running.&#13;&#10;This sub-process will keep trying till timeout is reached, then return false.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTIxMzIzNDM0OTg=</sig>
<rootNode>log</rootNode>
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
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
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
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckInitServlet.rsp.time</key>
    <value>Set in Step repeatingCheckInitServlet</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHost.rsp</key>
    <value>Set in Step getHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHost.rsp.time</key>
    <value>Set in Step getHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>host2</key>
    <value>Set in Step getHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPort.rsp</key>
    <value>Set in Step getPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPort.rsp.time</key>
    <value>Set in Step getPort</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>Set in Step getPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp</key>
    <value>Set in Step repeatingSleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckEnvService.rsp.time</key>
    <value>Set in Step repeatingCheckEnvService</value>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value>Set in Step success</value>
    </Parameter>
    <Parameter>
    <key>lisa.getProtocol.rsp</key>
    <value>Set in Step getProtocol</value>
    </Parameter>
    <Parameter>
    <key>lisa.getProtocol.rsp.time</key>
    <value>Set in Step getProtocol</value>
    </Parameter>
    <Parameter>
    <key>protocol2</key>
    <value>Set in Step getProtocol</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckInitServlet.rsp</key>
    <value>Set in Step repeatingCheckInitServlet</value>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp</key>
    <value>Set in Step timeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value>Set in Step timeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value>Set in Step repeatingSleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckEnvService.rsp</key>
    <value>Set in Step repeatingCheckEnvService</value>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value>Set in Step success</value>
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
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>125</graphx>
<graphy>551</graphy>
      <log>Connecting to {{url}} &#13;&#10;{{=secure.equals(&quot;true&quot;)?&quot;https://&quot;:&quot;http://&quot;}}{{host}}:{{port}} &#13;&#10;</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getHost" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String errorMsg = &quot;Sub-Process Validation Error&quot;; // Do not modify. Assertion exists on this string&#13;&#10;String successMsg = &quot;Sub-Process Validation Success&quot;;&#13;&#10;&#13;&#10;String hostStr;&#13;&#10;String portStr;&#13;&#10;String protocalStr;&#13;&#10;&#13;&#10;try {&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    hostStr = url2.getHost();&#13;&#10;    portStr = url2.getPort().toString();&#13;&#10;    protocolStr = url2.getProtocol();&#13;&#10;    if (!protocolStr.equals(&quot;http&quot;) &amp;&amp; !protocolStr.equals(&quot;https&quot;))&#13;&#10;        return errorMsg + &quot;: Protocol must be http or https&quot;;&#13;&#10;}&#13;&#10;else {&#13;&#10;    hostStr = testExec.parseInState(host.toString());&#13;&#10;    portStr = testExec.parseInState(port.toString());&#13;&#10;    if (!testExec.parseInState(secure.toString()).equals(&quot;true&quot;) &amp;&amp; !testExec.parseInState(secure.toString()).equals(&quot;false&quot;))&#13;&#10;        return errorMsg + &quot;: Secure parameter must be boolean: true or false&quot;;&#13;&#10;    protocolStr = (testExec.parseInState(secure.toString()).equals(&quot;true&quot;)?&quot;https&quot;:&quot;http&quot;);&#13;&#10;}&#13;&#10;&#13;&#10;&#13;&#10;if (hostStr.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Host is required&quot;;&#13;&#10;if (portStr.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Port is required&quot;;&#13;&#10;if (testExec.parseInState(user.toString()).equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: User is required&quot;;&#13;&#10;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    return errorMsg + e.toString();&#13;&#10;}</script>

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
        <param>Sub-Process Validation Error</param>
</CheckResult>

    </Node>


    <Node name="getHost" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getPort" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String hostStr;&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    hostStr = url2.getHost();&#13;&#10;}&#13;&#10;else {&#13;&#10;    hostStr = testExec.parseInState(host.toString());&#13;&#10;}&#13;&#10;&#13;&#10;return hostStr;&#13;&#10;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getHost.rsp</valueToFilterKey>
      <prop>host2</prop>
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
          next="getProtocol" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String portStr;&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    portStr = url2.getPort().toString();&#13;&#10;}&#13;&#10;else {&#13;&#10;    portStr = testExec.parseInState(port.toString());&#13;&#10;}&#13;&#10;&#13;&#10;return portStr;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getPort.rsp</valueToFilterKey>
      <prop>port2</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getProtocol" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTimeLimit" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import java.net.URL;&#13;&#10;&#13;&#10;String protocolStr;&#13;&#10;&#13;&#10;if (!url.equals(&quot;&quot;)) {&#13;&#10;    URL url2 = new URL(testExec.parseInState(url.toString()));&#13;&#10;    protocolStr = url2.getProtocol();&#13;&#10;}&#13;&#10;else {    &#13;&#10;    protocolStr = (testExec.parseInState(secure.toString()).equals(&quot;true&quot;)?&quot;https&quot;:&quot;http&quot;);&#13;&#10;}&#13;&#10;&#13;&#10;return protocolStr;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getProtocol.rsp</valueToFilterKey>
      <prop>protocol2</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="repeatingCheckInitServlet" > 

<graphx>142</graphx>
<graphy>142</graphy>
<onerror>fail</onerror>
<script>Calendar future = Calendar.getInstance();&#13;&#10;future.add(Calendar.SECOND, timeout.intValue());&#13;&#10;testExec.setStateValue(&quot;future&quot;, future);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="repeatingCheckInitServlet" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatingCheckEnvService" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Verify Init Servlet is up and running</Documentation>
<url>
<proto>{{protocol2}}</proto>
<host>{{host2}}</host>
<port>{{port2}}</port>
<path>/amxadministrator.httpbasic/AdminInitServlet</path>
<user>{{user}}</user>
<pass_enc>084f7acbe9528725afbb32fe2621086a</pass_enc>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert272" type="com.itko.lisa.test.AssertByScript">
<log>Admin Server is not up</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
</CheckResult>

<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Expected response code was 200. Got {{lisa.repeatingCheckInitServlet.http.responseCode}}</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

    </Node>


    <Node name="repeatingCheckEnvService" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="success" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Verify Environment service is up and running</Documentation>
<url>
<proto>{{protocol2}}</proto>
<host>{{host2}}</host>
<port>{{port2}}</port>
<path>/amxadministrator.httpbasic/services/EnvService</path>
<query>wsdl</query>
<user>{{user}}</user>
<pass_enc>084f7acbe9528725afbb32fe2621086a</pass_enc>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert307" type="com.itko.lisa.test.AssertByScript">
<log>Admin Server is not up</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
</CheckResult>

<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Expected response code was 200. Got {{lisa.repeatingCheckEnvService.http.responseCode}}</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

    </Node>


    <Node name="repeatingSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatingCheckInitServlet" > 

<graphx>301</graphx>
<graphy>37</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
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
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>938</graphx>
<graphy>674</graphy>
<onerror>fail</onerror>
<script>return &quot;false&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="success" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>938</graphx>
<graphy>674</graphy>
<onerror>fail</onerror>
<script>return &quot;true&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>595</graphx>
<graphy>399</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>305</graphx>
<graphy>610</graphy>
    </Node>


</TestCase>
