<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Apr 21 14:26:37 CST 2015 -->


<TestCase name="addParaIntoNodeTRA" version="2">
<id>bb733d4a</id>
<Documentation>Adding external parameter into Node.tra file</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTI3MzY4NjczMg==</sig>
<rootNode>CheckAMXVesion</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>NodeName</key>
    <value>SystemNode</value>
    <name>Which node tra will be operated</name>
    </Parameter>
    <Parameter>
    <key>key</key>
    <value></value>
    <name>Parameters will been writed into</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value></value>
    <name>Parameters will been writed into</name>
    </Parameter>
</initState>

<resultState>
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
    <key>lisa.CheckAMXVesion.rsp</key>
    <value>Set in Step CheckAMXVesion</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckAMXVesion.rsp.time</key>
    <value>Set in Step CheckAMXVesion</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1(320+).rsp</key>
    <value>Set in Step Step1(320+)</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1(320+).rsp.time</key>
    <value>Set in Step Step1(320+)</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2(315).rsp</key>
    <value>Set in Step Step2(315)</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2(315).rsp.time</key>
    <value>Set in Step Step2(315)</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
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
    <Node name="CheckAMXVesion" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Step1(320+)" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/checkAMXVersion.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>TIBCO_AMX_HOME</key>
    <value>{{TIBCO_AMX_HOME}}</value>
    <name>TIBCO AMX Version</name>
    </Parameter>
    <Parameter>
    <key>ComparedVersion</key>
    <value>3.2</value>
    <name>Auto-Deployment works on this verion</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check Version" type="com.itko.lisa.test.CheckResultContains">
<log>Check Version of AMX</log>
<then>Step2(315)</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="Step1(320+)" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileNotFoundException;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.IOException;&#13;&#10;import java.util.Properties;&#13;&#10;&#13;&#10;String NodeName = testExec.getStateString(&quot;NodeName&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;String TRAFile = &quot;tibamx_&quot; + NodeName + &quot;.tra&quot;;&#13;&#10;String key = testExec.getStateString(&quot;key&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;String value = testExec.getStateString(&quot;value&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;&#13;&#10;&#13;&#10;Properties traP = new Properties();&#13;&#10;try {&#13;&#10;&#9;traP.load(new FileInputStream(&quot;{{TIBCO_HOST_CONFIG}}/{{host.instance}}/data_3.2.x/nodes/&quot;+NodeName + &quot;/bin/&quot; + TRAFile));&#13;&#10;&#9;FileOutputStream fos = new FileOutputStream(&quot;{{TIBCO_HOST_CONFIG}}/{{host.instance}}/data_3.2.x/nodes/&quot;+NodeName + &quot;/bin/&quot; + TRAFile);&#13;&#10;&#9;traP.setProperty(key, value);&#13;&#10;&#9;traP.store(fos, &quot;Adding external parameters&quot;);&#13;&#10;    return true;&#13;&#10;} catch (FileNotFoundException e) {&#13;&#10;&#9;return e.toString();&#13;&#10;} catch (IOException e) {&#13;&#10;&#9;return e.toString();&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="Step2(315)" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileNotFoundException;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.IOException;&#13;&#10;import java.util.Properties;&#13;&#10;&#13;&#10;String NodeName = testExec.getStateString(&quot;NodeName&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;String TRAFile = &quot;tibamx_&quot; + NodeName + &quot;.tra&quot;;&#13;&#10;String key = testExec.getStateString(&quot;key&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;String value = testExec.getStateString(&quot;value&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;&#13;&#10;&#13;&#10;Properties traP = new Properties();&#13;&#10;try {&#13;&#10;&#9;traP.load(new FileInputStream(&quot;{{TIBCO_HOST_CONFIG}}/{{host.instance}}/nodes/&quot;+NodeName + &quot;/bin/&quot; + TRAFile));&#13;&#10;&#9;FileOutputStream fos = new FileOutputStream(&quot;{{TIBCO_HOST_CONFIG}}/{{host.instance}}/nodes/&quot;+NodeName + &quot;/bin/&quot; + TRAFile);&#13;&#10;&#9;traP.setProperty(key, value);&#13;&#10;&#9;traP.store(fos, &quot;Adding external parameters&quot;);&#13;&#10;    return true;&#13;&#10;} catch (FileNotFoundException e) {&#13;&#10;&#9;return e.toString();&#13;&#10;} catch (IOException e) {&#13;&#10;&#9;return e.toString();&#13;&#10;}</script>

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
