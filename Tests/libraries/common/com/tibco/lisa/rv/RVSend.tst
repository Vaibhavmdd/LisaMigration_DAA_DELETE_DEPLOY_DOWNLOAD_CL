<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Aug 12 11:24:19 PDT 2010 -->


<TestCase name="RVSend" version="2">
<id>c353bc8a</id>
<Documentation>Sends TIBCO Rendezvous message(s) on the specified subject</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0yMTIyNDExNzQ=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>service</key>
    <value></value>
    <name>Service</name>
    </Parameter>
    <Parameter>
    <key>network</key>
    <value></value>
    <name>Network</name>
    </Parameter>
    <Parameter>
    <key>daemon</key>
    <value></value>
    <name>Daemon</name>
    </Parameter>
    <Parameter>
    <key>subject</key>
    <value></value>
    <name>Subject for the message(s)</name>
    </Parameter>
    <Parameter>
    <key>messages</key>
    <value></value>
    <name>Message(s) to be published. Blank space separates messages: value &apos;message1 message2&apos; will publish two messages. Value &apos;&quot;message1 message2&quot;&apos; will publish one message.</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.rvSend.rsp</key>
    <value>Set in Step rvSend</value>
    </Parameter>
    <Parameter>
    <key>lisa.rvSend.rsp.time</key>
    <value>Set in Step rvSend</value>
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
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Sending RV message(s) on the following subject: {{subject}}&#10;RV Service:{{service}}&#10;RV Network:{{network}}&#10;RV Daemon:{{daemon}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="rvSend" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>return source(TIBCO_COMMON_LIBRARY + &quot;/com/tibco/lisa/rv/RVValidation.bsh&quot;);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert114" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>RV Validation has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert77" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>RV Validation Error</param>
</CheckResult>

    </Node>


    <Node name="rvSend" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import java.util.*;&#13;&#10;import com.tibco.tibrv.*;&#13;&#10;&#13;&#10;rvSend(String service, String network, String daemon, String subject, String messages) {&#13;&#10;   &#13;&#10;  String resultStr = &quot;&quot;;&#13;&#10;  // open Tibrv in native implementation&#13;&#10;  try {&#13;&#10;    Tibrv.open(Tibrv.IMPL_NATIVE);&#13;&#10;  }&#13;&#10;  catch (TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Failed to open RV in native implementation&quot;;&#13;&#10;  }&#13;&#10;&#13;&#10;  // Create RVD transport&#13;&#10;  TibrvTransport transport = null;&#13;&#10;  try {&#13;&#10;    transport = new TibrvRvdTransport(service, network, daemon);&#13;&#10;  }&#13;&#10;  catch (TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Failed to create RV Transport&quot;;&#13;&#10;  }&#13;&#10;&#13;&#10;  // Create the message&#13;&#10;  TibrvMsg msg = new TibrvMsg();&#13;&#10;&#13;&#10;  // Set send subject into the message&#13;&#10;  try {&#13;&#10;    msg.setSendSubject(subject);&#13;&#10;  }&#13;&#10;  catch (TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Failed to set send subject&quot;;&#13;&#10;  }&#13;&#10;  try {&#13;&#10;    // Send one message for each parameter&#13;&#10;    String[] message;&#13;&#10;    if (messages.startsWith(&quot;\&quot;&quot;) &amp;&amp; messages.endsWith(&quot;\&quot;&quot;)) {&#13;&#10;       message = new String[1];&#13;&#10;       message[0] = messages.substring(1, messages.length() -1);&#13;&#10;    }&#13;&#10;    else&#13;&#10;      message = messages.split(&quot; &quot;);&#13;&#10;    for (int i=0; i&lt; message.length; i++) {&#13;&#10;      msg.update(&quot;DATA&quot;, message[i]);&#13;&#10;      transport.send(msg);&#13;&#10;      resultStr = resultStr + &quot;Published: subject=&quot; + msg.getSendSubject()+ &quot; \&quot;&quot; + message[i] + &quot;\&quot;\n&quot;;&#13;&#10;    }&#13;&#10;  }&#13;&#10;  catch (TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Error sending a message&quot;;&#13;&#10;  }&#13;&#10;&#13;&#10;  // Close Tibrv, it will cleanup all underlying memory, destroy&#13;&#10;  // transport and guarantee delivery.&#13;&#10;  try {  &#13;&#10;    Tibrv.close();&#13;&#10;  }&#13;&#10;  catch(TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Exception while stopping RV&quot;;      &#13;&#10;  }&#13;&#10;  return resultStr;&#13;&#10;}&#13;&#10;// Main&#13;&#10;baseErrorMsg = &quot;Rendezvous Error&quot;; // Do not modify this string. Might be used in tc assertion.&#13;&#10;service = testExec.parseInState(service.toString());&#13;&#10;network = testExec.parseInState(network.toString());&#13;&#10;daemon = testExec.parseInState(daemon.toString());&#13;&#10;subject = testExec.parseInState(subject.toString());&#13;&#10;messages = testExec.parseInState(messages.toString());&#13;&#10;rvSend(service, network, daemon, subject, messages);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>RVSend has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert111" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.rvSend.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Rendezvous Error</param>
</CheckResult>

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


</TestCase>
