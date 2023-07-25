<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Dec 19 10:02:13 CST 2012 -->


<TestCase name="checkAMXVersion" version="2">
<id>6bbe9dcf</id>
<Documentation>To see whether the auto-Deployment function works for this release.&#13;&#10;&#13;&#10;Default compare version is 3.2</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNzEwOTY3MTEy</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>TIBCO_AMX_HOME</key>
    <value></value>
    <name>TIBCO AMX Version</name>
    </Parameter>
    <Parameter>
    <key>ComparedVersion</key>
    <value>3.2</value>
    <name>Auto-Deployment works on this verion</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckVersion.rsp</key>
    <value>Set in Step CheckVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckVersion.rsp.time</key>
    <value>Set in Step CheckVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
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
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="CheckVersion" > 

<graphx>24</graphx>
<graphy>274</graphy>
      <log>To see {{TIBCO_AMX_HOME}} version</log>
    </Node>


    <Node name="CheckVersion" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>24</graphx>
<graphy>91</graphy>
<onerror>fail</onerror>
<script>String amxHome = testExec.getStateString(&quot;TIBCO_AMX_HOME&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#10;&#10;double comparedVersion = Double.parseDouble(testExec.getStateString(&quot;ComparedVersion&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;));&#10;&#10;String s_version = amxHome.substring(amxHome.lastIndexOf(&quot;amx&quot;) + 4);&#10;&#10;double d_version = Double.parseDouble(s_version);&#10;&#10;if(d_version &gt;= comparedVersion)&#10;    return &quot;true&quot;;&#10;else&#10;    return &quot;false&quot;;&#10;&#10;</script>

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

<graphx>-1</graphx>
<graphy>-1</graphy>
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


</TestCase>
