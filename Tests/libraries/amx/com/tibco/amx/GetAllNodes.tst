<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Wed Jan 07 16:32:15 CST 2009 -->


<TestCase name="GetAllNodes" version="2">
<id>1711b74e</id>
<Documentation>Returns a HashMap of all nodes along with their properties belonging to the specified environment.&#10;The search for nodes occurs within the LISA configuration. This call does not connect to ActiveMatrix.</Documentation>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj00LjUuNSAoNC41LjUuMjcpJm5vZGVzPTgzNzQ2Nzg4</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>environment</key>
    <value></value>
    <name>Name of the ActiveMatrix environment</name>
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
    <key>baseErrorMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.env1.name</key>
    <value>Property From Config</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodes.rsp</key>
    <value>Set in Step getNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodes.rsp.time</key>
    <value>Set in Step getNodes</value>
    </Parameter>
    <Parameter>
    <key>nodeList</key>
    <value>Set in Step getNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodeProperties.rsp</key>
    <value>Set in Step getNodeProperties</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodeProperties.rsp.time</key>
    <value>Set in Step getNodeProperties</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
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
      <log>Getting all nodes from environment &quot;{{environment}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getNodes" > 

<graphx>24</graphx>
<graphy>91</graphy>
<onerror>fail</onerror>
<script>if (environment.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: Environment is required.&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert78" type="com.itko.lisa.test.CheckResultContains" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{baseErrorMsg}}</param>
</CheckResult>

    </Node>


    <Node name="getNodes" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getNodeProperties" > 

<graphx>183</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>&#10; List nodes = new ArrayList();&#10; // Get all the properties in testcase&#10; Map map = testExec.getAllState(); &#10; Set s = map.keySet();&#10; String key;&#10; // Loop over each property&#10; Iterator itr = s.iterator();&#10; while(itr.hasNext()) {&#10;  key = itr.next();&#10;  System.out.println(&quot;KEY - ALL FROM STATE = &quot; + key);&#10;  // Match tibco.amx.env&lt;envIndex&gt;.name&#10;  if (key.matches(&quot;tibco\\.amx\\.env[0-9]*\\.name&quot;)) {&#10;   try {&#10;    System.out.println(&quot;KEY - AMX ENV NAME = &quot; + key);&#10;    if (((String)map.get(key)).equals(environment)) {&#10;     // envKey = tibco.amx.env&lt;envIndex&gt;&#10;     String envKey = key.substring(0, key.indexOf(&quot;.name&quot;));&#10;     String key2;&#10;     Iterator itr2 = s.iterator();&#10;     while(itr2.hasNext()) {&#10;      key2 = itr2.next();&#10;      // Match tibco.amx.env&lt;envIndex&gt;.node&lt;nodeIndex&gt;.something&#10;      if (key2.matches(envKey.replace(&quot;\\.&quot;, &quot;\\\\.&quot;) + &quot;\\.node[0-9]*\\..*&quot;)) {&#10;       // Construct node=tibco.amx.env&lt;envIndex&gt;.node&lt;nodeIndex&gt;&#10;       String node = key2.substring(0, key2.indexOf(&quot;.&quot;, (envKey+&quot;node&quot;).length()+1));&#10;       System.out.println(&quot;KEY - NODE = &quot; + node);&#10;       if (!nodes.contains(node))&#10;        nodes.add(node);&#10;      }&#10;     }&#10;    }&#10;   }&#10;   // We are swallowing this exception in case users enter wrong pattern property.&#10;   // So test case won&apos;t fail, property will just be ignored.&#10;   catch (java.lang.StringIndexOutOfBoundsException e) {&#10;     e.printStackTrace();&#10;   }&#10;  }&#10; }&#10; return nodes;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>nodeList</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getNodeProperties" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>341</graphx>
<graphy>91</graphy>
<onerror>fail</onerror>
<script> Map nodeMap = new HashMap();&#10; // Loop over each node&#10; Iterator itr = nodeList.iterator();&#10; while(itr.hasNext()) {&#10;  String node = itr.next();&#10;  Map nodeProperties = new HashMap();&#10;  nodeProperties.put(&quot;name&quot;, testExec.getStateValue(node + &quot;.name&quot;));&#10;  nodeProperties.put(&quot;description&quot;, testExec.getStateValue(node + &quot;.description&quot;));&#10;  nodeProperties.put(&quot;hostName&quot;, testExec.getStateValue(node + &quot;.hostName&quot;));&#10;  nodeProperties.put(&quot;tibcoHome&quot;, testExec.getStateValue(node + &quot;.tibcoHome&quot;));&#10;  nodeMap.put(node.substring(node.lastIndexOf(&quot;.&quot;)+1), nodeProperties);&#10; }&#10;return nodeMap;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx" >
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

<graphx>341</graphx>
<graphy>274</graphy>
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


</TestCase>
