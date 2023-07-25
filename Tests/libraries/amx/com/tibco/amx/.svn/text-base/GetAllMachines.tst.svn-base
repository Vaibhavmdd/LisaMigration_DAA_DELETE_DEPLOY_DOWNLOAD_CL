<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon Feb 08 15:43:06 PST 2010 -->


<TestCase name="GetAllMachines" version="2">
<id>2e670f16</id>
<Documentation>Returns an array of all machines belonging to the specified environment. &#13;&#10;The machine list is constructed from the JMX URL specified for hosts in that environment.&#13;&#10;The list also includes the machine name of the tibcohost on which the administrator is running.&#13;&#10;The search for machines occurs within the LISA configuration. This call does not connect to ActiveMatrix.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNjk0NzAzNzEy</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>environment</key>
    <value>DevEnvironment</value>
    <name>Name of the ActiveMatrix environment</name>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>baseErrorMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
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
    <key>lisa.getMachines.rsp</key>
    <value>Set in Step getMachines</value>
    </Parameter>
    <Parameter>
    <key>lisa.getMachines.rsp.time</key>
    <value>Set in Step getMachines</value>
    </Parameter>
    <Parameter>
    <key>machineList</key>
    <value>Set in Step getMachines</value>
    </Parameter>
    <Parameter>
    <key>lisa.getMachineProperties.rsp</key>
    <value>Set in Step getMachineProperties</value>
    </Parameter>
    <Parameter>
    <key>lisa.getMachineProperties.rsp.time</key>
    <value>Set in Step getMachineProperties</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.host1.password</key>
    <value>Property From Config</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>Config</name>
<external>false</external>
<props>
    <Parameter>
    <key>baseErrorMsg</key>
    <value>Validation Error</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value>Validation Success</value>
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

<graphx>24</graphx>
<graphy>274</graphy>
      <log>Getting machines from environment &quot;{{environment}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getMachines" > 

<graphx>24</graphx>
<graphy>91</graphy>
<onerror>fail</onerror>
<script>if (environment == null || environment.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: Environment is required.&quot;;&#13;&#10;&#13;&#10;return baseSuccessMsg;</script>

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


    <Node name="getMachines" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>183</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>&#9;Object[] getMachines() {&#13;&#10;&#9;&#9;boolean envFound = false;&#13;&#10;&#9;&#9;boolean hostInEnvFound = false;&#13;&#10;&#9;&#9;boolean hostInEnvDetailsFound = false;&#13;&#10;&#9;&#9;boolean adminHostDetailsFound = false;&#9;&#9;&#9;&#13;&#10;&#13;&#10;&#9;&#9;List machineNames = new ArrayList();&#13;&#10;&#9;&#9;// Get all the properties in testcase&#13;&#10;&#9;&#9;Map map = testExec.getAllState();&#13;&#10;&#9;&#9;Set s = map.keySet();&#13;&#10;&#9;&#9;String key1;&#13;&#10;&#9;&#9;// Loop over each property to search for com.tibco.env*&#13;&#10;&#9;&#9;Iterator envItr = s.iterator();&#13;&#10;&#9;&#9;while (envItr.hasNext()) {&#13;&#10;&#9;&#9;&#9;key1 = (String) envItr.next();&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;if (key1.matches(&quot;tibco\\.amx\\.admin\\.configuration1\\.tibcohostconfig1\\.jmxUrl&quot;)) {&#13;&#10;&#9;&#9;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;&#9;&#9;adminHostDetailsFound = true;&#13;&#10;&#9;&#9;&#9;&#9;&#9;String mgmtUrlValue = (String) map.get(key1);&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;String[] machineName = mgmtUrlValue.split(&quot;:&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;machineName[3] = trimPrefix(machineName[3], &quot;/&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;machineName = machineName[3].split(&quot;/&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;if (!machineNames.contains(machineName[0])) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;machineNames.add(machineName[0].toLowerCase());&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;}catch(java.lang.StringIndexOutOfBoundsException e) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;e.printStackTrace();&#13;&#10;&#9;&#9;&#9;&#9;&#9;//ignore&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;if (key1.matches(&quot;tibco\\.amx\\.env[0-9]*\\.name&quot;)) {&#13;&#10;&#9;&#9;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;&#9;&#9;if (((String) map.get(key1)).equals(environment)) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;envFound = true;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;String envKey = key1.substring(0, key1.indexOf(&quot;.name&quot;));&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;String key2;&#13;&#10;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;Iterator itr2 = s.iterator();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;// Loop over each property to search for&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;// com.tibco.env*.host*&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;while (itr2.hasNext()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;key2 = (String) itr2.next();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;if (key2.matches(envKey.replace(&quot;\\.&quot;, &quot;\\\\.&quot;)&#9;+ &quot;\\.host[0-9]*\\..*&quot;)) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;hostInEnvFound = true; // verifies atleast one host is found in the environment specified.&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String envHostKey = key2.substring(0, key2.indexOf(&quot;.&quot;, (envKey + &quot;host&quot;).length() + 1))+ &quot;.name&quot;;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String envHostKeyValue = (String) map.get(envHostKey);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String key3;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;Iterator itr3 = s.iterator();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;// Loop over each property to search for&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;// com.tibco.host*&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;hostInEnvDetailsFound = false; //reset &#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;while (itr3.hasNext()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;key3 = (String) itr3.next();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;if (key3.matches(&quot;tibco\\.amx\\.host[0-9]*\\.name&quot;)) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;if (((String) map.get(key3)).equals(envHostKeyValue)) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;hostInEnvDetailsFound = true; //verifies that the host name specified in env is found along with the details like mgmt url etc. &#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String entHostKey = key3.substring(0, key3.indexOf(&quot;.name&quot;));&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String entHostMgmtUrlValue = (String) map.get(entHostKey+ &quot;.managementUrl&quot;);&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String[] machineName = entHostMgmtUrlValue.split(&quot;:&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;machineName[3] = trimPrefix(machineName[3], &quot;/&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;machineName = machineName[3].split(&quot;/&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;if (!machineNames.contains(machineName[0])) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;machineNames.add(machineName[0]); //.toLowerCase()&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;if (hostInEnvDetailsFound == false) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;//throw new Exception(&quot;Found host in specified environment. But did not find the host details.&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if (hostInEnvFound == false) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;//throw new Exception(&quot;Environment specified is found. But did not find any hosts defined for this environment.&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;// We are swallowing this exception in case users enter wrong&#13;&#10;&#9;&#9;&#9;&#9;// pattern property.&#13;&#10;&#9;&#9;&#9;&#9;// So test case won&apos;t fail, property will just be ignored.&#13;&#10;&#9;&#9;&#9;&#9;catch (java.lang.StringIndexOutOfBoundsException e) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;e.printStackTrace();&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;if (envFound == false) {&#13;&#10;&#9;&#9;&#9;// throw new Exception(&quot;Environment specified is not found.&quot;);&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;if (adminHostDetailsFound == false) {&#13;&#10;&#9;&#9;&#9;// throw new Exception(&quot;The tibcohost details for the administrator node are not found.&quot;);&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;if (machineNames.contains(&quot;127.0.0.1&quot;) &amp;&amp; machineNames.contains(&quot;localhost&quot;)) {&#13;&#10;&#9;&#9;&#9;machineNames.remove(&quot;127.0.0.1&quot;);&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return machineNames.toArray();&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#9;String trimPrefix(String s, String prefix) {&#13;&#10;&#9;&#9;while (s.startsWith(prefix))&#13;&#10;&#9;&#9;&#9;s = s.substring(prefix.length());&#13;&#10;&#9;&#9;return s;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return getMachines();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>machineList</prop>
      </Filter>


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

<graphx>183</graphx>
<graphy>366</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>341</graphx>
<graphy>274</graphy>
    </Node>


</TestCase>
