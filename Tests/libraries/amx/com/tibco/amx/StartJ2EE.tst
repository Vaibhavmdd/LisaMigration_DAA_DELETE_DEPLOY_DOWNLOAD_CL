<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Oct 09 10:26:29 PDT 2009 -->


<TestCase name="StartJ2EE" version="2">
<id>b38e0c85</id>
<Documentation>This subprocess starts the J2EE server by taking the host and the server type.&#13;&#10;It starts the server at the specified j2eeHome. &#13;&#10;If the host is not localhost, the value for j2eeHome should be set to the location which is available on the host specified. &#13;&#10;If j2eeHome is not specified:&#13;&#10;&#9;If type is tibcohost, then the value of variable TIBCO_HOST_HOME on the appropriate host will be used.&#13;&#10;The default type is tibcohost.&#13;&#10;The default host is localhost.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNCAoNC42LjQuNykmbm9kZXM9MTM0NDcyMzY5Ng==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>type</key>
    <value>tibcohost</value>
    <name>type of the server. Currently the following are supported: tibcohost</name>
    </Parameter>
    <Parameter>
    <key>j2eeHome</key>
    <value></value>
    <name>J2EE Server Home Directory. If host is remote, specify the location on the remote host.</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>180</value>
    <name>time in seconds to fait for checking the server is started</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value>TIBCO-4C8D6952A</value>
    <name>Host on which the J2EE Server should be started</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>baseErrorMsg</key>
    <value>Property From Config</value>
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
    <key>lisa.getServerType.rsp</key>
    <value>Set in Step getServerType</value>
    </Parameter>
    <Parameter>
    <key>lisa.getServerType.rsp.time</key>
    <value>Set in Step getServerType</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTibcoHost.rsp</key>
    <value>Set in Step startTibcoHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTibcoHost.rsp.time</key>
    <value>Set in Step startTibcoHost</value>
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
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value>Validation Success</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>baseErrorMsg</key>
    <value>Validation Error</value>
    <name>Name</name>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="log" log="log thlese input variab"
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="validate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>The Following variables are used as input&#10;    type = {{type}}&#13;&#10;    j2eeHome = {{j2eeHome}}&#10;    host = {{host}}&#13;&#10;    timeout = {{timeout}}&#10;&#10;Note: Variables specified for values are resolved on localhost for this log message. The actual values used for variables will be resolved on the host specified.</log>
    </Node>


    <Node name="validate" log="validate the input properties are set correctly."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getServerType" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>if (type.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: type is required.&quot;;&#13;&#10;&#13;&#10;&#10;if (!type.equals(&quot;tibcohost&quot;))&#13;&#10; return baseErrorMsg + &quot;: type is not valid.&quot;;&#13;&#10;&#13;&#10;if (host.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: host is required.&quot;;&#13;&#10;&#13;&#10;if (timeout.equals(&quot;&quot;))&#13;&#10;    timeout=&quot;180&quot;;&#13;&#10;&#13;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert83" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{baseErrorMsg}}</param>
</CheckResult>

    </Node>


    <Node name="getServerType" log="get the type of the server and decide which subprocess to invoke"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>return type;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="checkTibcoHost" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert291] fired true of type Result as String Contains Given String</log>
<then>startTibcoHost</then>
<valueToAssertKey></valueToAssertKey>
        <param>tibcohost</param>
</CheckResult>

    </Node>


    <Node name="startTibcoHost" log="start  the tibcohosts on the specified host"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StartTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>tibcoHostHome</key>
    <value>{{j2eeHome}}</value>
    <name>TibcoHost home directory. If host is remote, specify the tibcohost location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Max number of seconds to wait to allow the TibcoHost to start</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value>{{host}}</value>
    <name>Host on which the tibcohost should be started</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
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
