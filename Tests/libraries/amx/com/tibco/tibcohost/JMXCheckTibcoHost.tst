<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Jun 29 02:13:58 PDT 2010 -->


<TestCase name="JMXCheckTibcoHost" version="2">
<id>8df20be1</id>
<Documentation>Returns true if TIBCOHost is up and running.&#13;&#10;This sub-process performs a JMX call to the getStatus operation MBean.&#13;&#10;It will keep trying till timeout is reached, then return false.&#13;&#10;&#13;&#10;Note: It works with non-secure TIBCOHost only.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNDIxODQ2MTA0</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>TIBCOHost host name</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>6051</value>
    <name>TIBCOHost JMX port</name>
    </Parameter>
    <Parameter>
    <key>url</key>
    <value>service:jmx:jmxmp://localhost:6051</value>
    <name>JMX Url. If url is provided, host and port are ignored. Use JMXMP protocol.</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>120</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>TIBCOMBeanDomain</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingGetStatus.rsp</key>
    <value>Set in Step repeatingGetStatus</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingGetStatus.rsp.time</key>
    <value>Set in Step repeatingGetStatus</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value>Set in Step repeatingSleep</value>
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
    <key>lisa.repeatingSleep.rsp</key>
    <value>Set in Step repeatingSleep</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
    <Parameter>
    <key>TIBCOMBeanDomain</key>
    <value>TIBCO.AMX</value>
    <name>Name</name>
    </Parameter>
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
      <log>JMX call to TIBCOHost: {{=(url.equals(&quot;&quot;))?&quot;service:jmx:jmxmp://&quot;+testExec.parseInState(host)+&quot;:&quot;+testExec.parseInState(port.toString()):testExec.parseInState(url)}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTimeLimit" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>String errorMsg = &quot;TIBCOHost JMX call validation error&quot;;&#13;&#10;String successMsg = &quot;TIBCOHost JMX call validation success&quot;;&#13;&#10;&#13;&#10;if (host.equals(&quot;&quot;) &amp;&amp; port.toString().equals(&quot;&quot;) &amp;&amp; url.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;Either Host and Port are required or URL is required&quot;;&#13;&#10;if (host.equals(&quot;&quot;) &amp;&amp; url.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Host is required&quot;;&#13;&#10;if (port.toString().equals(&quot;&quot;) &amp;&amp; url.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Port is required&quot;;&#13;&#10;return successMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>TIBCOHost JMX call validation error</param>
</CheckResult>

    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="repeatingGetStatus" > 

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


    <Node name="repeatingGetStatus" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>305</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>import javax.management.*;&#13;&#10;import javax.management.remote.JMXConnector;&#13;&#10;import javax.management.remote.JMXConnectorFactory;&#13;&#10;import javax.management.remote.JMXServiceURL;&#13;&#10;&#13;&#10;boolean getStatus(url) {&#13;&#10;&#13;&#10;JMXConnector jmxc;&#13;&#10;&#13;&#10;HashMap env = new HashMap();&#13;&#10;&#13;&#10;JMXServiceURL jmxUrl = new JMXServiceURL(url);&#13;&#10;jmxc = JMXConnectorFactory.connect(jmxUrl, env);&#13;&#10;MBeanServerConnection mbsc = jmxc.getMBeanServerConnection();&#13;&#10;&#13;&#10;/*&#13;&#10;System.out.println(&quot;\nDomains:&quot;);&#13;&#10;String[] domains = mbsc.getDomains();&#13;&#10;Arrays.sort(domains);&#13;&#10;for (String domain : domains) {&#13;&#10;    System.out.println(&quot;\tDomain = &quot; + domain);&#13;&#10;}&#13;&#10;*/&#13;&#10;&#13;&#10;// Try to find the TIBCO MBean domain&#13;&#10;ObjectName MDBObjectName = null;&#13;&#10;Set names = new TreeSet(mbsc.queryNames(null, null));&#13;&#10;for (ObjectName name : names) {&#13;&#10;    //System.out.println(&quot;\tObjectName = &quot; + name);&#13;&#10;    if (name.toString().startsWith(testExec.parseInState(TIBCOMBeanDomain))) {&#13;&#10;        MDBObjectName = new ObjectName(name.toString());&#13;&#10;        break;&#13;&#10;    }&#13;&#10;}&#13;&#10;&#13;&#10;// If not found, fail&#13;&#10;if (MDBObjectName == null)&#13;&#10;    throw new Exception(&quot;TIBCO MBean Domain &apos;&quot; + testExec.parseInState(TIBCOMBeanDomain) + &quot;&apos; not found&quot;);&#13;&#10;&#13;&#10;String opName = &quot;getStatus&quot;;&#13;&#10;String[] opParams = {&quot;&quot;,&quot;&quot;};&#13;&#10;String[] opSignature = {String.class.getName(),String.class.getName()};&#13;&#10;&#13;&#10;String status = mbsc.invoke(MDBObjectName, opName, opParams, opSignature);&#13;&#10;jmxc.close();&#13;&#10;&#13;&#10;if (status.equals(&quot;RUNNING&quot;))&#13;&#10;    return true;&#13;&#10;else&#13;&#10;    return false;&#13;&#10;}&#13;&#10;&#13;&#10;// Main&#13;&#10;String jmxUrl;&#13;&#10;if (!testExec.parseInState(url).equals(&quot;&quot;))&#13;&#10;    jmxUrl = testExec.parseInState(url);&#13;&#10;else&#13;&#10;    jmxUrl = &quot;service:jmx:jmxmp://&quot; + testExec.parseInState(host) + &quot;:&quot; + testExec.parseInState(port.toString());&#13;&#10;try {&#13;&#10;    return getStatus(jmxUrl);&#13;&#10;}&#13;&#10;catch(java.net.ConnectException e) {&#13;&#10;    return &quot;connectException&quot;;&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.AssertByScript">
<log>Timeout is reached. TIBCOHost still not up</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert168" type="com.itko.lisa.test.CheckResultContains">
<log>java.net.ConnectException occured while connecting to TIBCOHost !</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>connectException</param>
</CheckResult>

    </Node>


    <Node name="repeatingSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatingGetStatus" > 

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
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>10</value>
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


</TestCase>
