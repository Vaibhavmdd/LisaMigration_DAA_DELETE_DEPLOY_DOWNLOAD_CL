<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Aug 12 11:39:24 PDT 2010 -->


<TestCase name="RVListen" version="2">
<id>f00e3d70</id>
<Documentation>Listen for TIBCO Rendezvous messages on specified subject(s).&#13;&#10;Once all the subjects are consumed the sub-process returns and the flow of the calling test case will continue.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE0NDY5MTQ2MDE=</sig>
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
    <key>subjects</key>
    <value></value>
    <name>Listen for inbound messages on specified subjects. To listen on several subjects, separate them with blank space. The empty string is not a legal subject name. </name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>30</value>
    <name>Maximum time (in seconds) that this call can block while waiting for an event to arrive in the queue.  Zero indicates no blocking (immediate timeout).  -1 indicates no timeout.</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.rvListen.rsp</key>
    <value>Set in Step rvListen</value>
    </Parameter>
    <Parameter>
    <key>lisa.rvListen.rsp.time</key>
    <value>Set in Step rvListen</value>
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
      <log>RV listening on the following subjects: &quot;{{subjects}}&quot; ...&#13;&#10;RV Service:{{service}}&#13;&#10;RV Network:{{network}}&#13;&#10;RV Daemon:{{daemon}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="rvListen" > 

<graphx>50</graphx>
<graphy>17</graphy>
<onerror>fail</onerror>
<script>return source(TIBCO_COMMON_LIBRARY + &quot;/com/tibco/lisa/rv/RVValidation.bsh&quot;);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>RV Validation has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>RV Validation Error</param>
</CheckResult>

    </Node>


    <Node name="rvListen" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.util.*;&#13;&#10;import com.tibco.tibrv.*;&#13;&#10;&#13;&#10;rvListen(String service, String network, String daemon, String subjects, double timeout) {&#13;&#10;&#13;&#10;  String[] subject;&#13;&#10;  List consumedSubject = new ArrayList();&#13;&#10;  String resultStr = &quot;&quot;;&#13;&#10;  boolean keepConsuming = true;&#13;&#10;&#13;&#10;  // Define the object that will process inbound messages&#13;&#10;  TibrvMsgCallback tibrvlisten = new TibrvMsgCallback() {&#13;&#10;    // callback function&#13;&#10;    onMsg(TibrvListener listener, TibrvMsg msg) {&#13;&#10;      if (!consumedSubject.contains(msg.getSendSubject())) {&#13;&#10;        consumedSubject.add(msg.getSendSubject());&#13;&#10;        resultStr = resultStr + &quot;subject=&quot; + msg.getSendSubject() + &quot;, message=&quot; + msg.toString() + &quot;\n&quot;;&#13;&#10;      }&#13;&#10;      if (consumedSubject.size() &gt;= subject.length)&#13;&#10;        keepConsuming = false;&#13;&#10;      System.out.flush();&#13;&#10;    }&#13;&#10;  };&#13;&#10;  // Open Tibrv in native implementation&#13;&#10;  try {&#13;&#10;    Tibrv.open(Tibrv.IMPL_NATIVE);&#13;&#10;  }&#13;&#10;  catch (TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Failed to open RV in native implementation&quot;;&#13;&#10;  }&#13;&#10;  // Create RVD transport&#13;&#10;  TibrvTransport transport = null;&#13;&#10;  try {&#13;&#10;    transport = new TibrvRvdTransport(service, network, daemon);&#13;&#10;  }&#13;&#10;  catch (TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Failed to create RV Transport&quot;;&#13;&#10;  }&#13;&#10;  // Create listeners for specified subjects&#13;&#10;  subject = subjects.split(&quot; &quot;);&#13;&#10;  for (int i=0; i&lt;subject.length; i++) {&#13;&#10;    try {&#13;&#10;      new TibrvListener(Tibrv.defaultQueue(), tibrvlisten, transport, subject[i], null);&#13;&#10;    }&#13;&#10;    catch (TibrvException e) {&#13;&#10;      return baseErrorMsg + &quot;: Failed to create RV listener&quot;;&#13;&#10;    }&#13;&#10;  }&#13;&#10;  // Dispatch Tibrv events &#13;&#10;  while(keepConsuming) {&#13;&#10;    try {&#13;&#10;      if (!Tibrv.defaultQueue().timedDispatch(timeout))&#13;&#10;        return resultStr + &quot;\n&quot; + baseErrorMsg + &quot;: Event dispatching timed out&quot;;&#13;&#10;    }&#13;&#10;    catch(TibrvException e) {&#13;&#10;      return baseErrorMsg + &quot;: Exception dispatching default queue&quot;;&#13;&#10;    }&#13;&#10;  }&#13;&#10;  // Destroy Rendezvous machinery&#13;&#10;  try {&#13;&#10;    Tibrv.close();&#13;&#10;  }&#13;&#10;  catch(TibrvException e) {&#13;&#10;    return baseErrorMsg + &quot;: Exception while stopping RV&quot;;&#13;&#10;  }&#13;&#10;  return resultStr;&#13;&#10;}&#13;&#10;// Main&#13;&#10;baseErrorMsg = &quot;Rendezvous Error&quot;; // Do not modify this string. Might be used in tc assertion.&#13;&#10;service = testExec.parseInState(service.toString());&#13;&#10;network = testExec.parseInState(network.toString());&#13;&#10;daemon = testExec.parseInState(daemon.toString());&#13;&#10;subjects = testExec.parseInState(subjects.toString());&#13;&#10;rvListen(service, network, daemon, subjects, (new Double(timeout)).doubleValue());</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>RVListen has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert166" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.rvListen.rsp}}</log>
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

<graphx>350</graphx>
<graphy>43</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>75</graphx>
<graphy>267</graphy>
    </Node>


</TestCase>
