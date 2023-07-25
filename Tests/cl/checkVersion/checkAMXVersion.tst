<?xml version="1.0" ?>

<TestCase name="checkAMXVersion" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="06/26/2023" host="na2devasgora03" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="06/26/2023" host="na2devasgora03" />
</meta>

<id>6bbe9dcf</id>
<Documentation>To see whether the auto-Deployment function works for this release.&#13;&#10;&#13;&#10;Default compare version is 3.2</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNjE4MzU1NzM2</sig>
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
    <key>lisa.CheckVersion.rsp</key>
    <value></value>
    <name>lisa.CheckVersion.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.CheckVersion.rsp.time</key>
    <value></value>
    <name>lisa.CheckVersion.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value></value>
    <name>lisa.Log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value></value>
    <name>lisa.Log.rsp.time</name>
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
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="6bbe9dcf-Log" 
          think="500-1000" 
          useFilters="true" 
          quiet="true" 
          next="CheckVersion" > 

<log>To see {{TIBCO_AMX_HOME}} version</log>
    </Node>


    <Node name="CheckVersion" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="6bbe9dcf-CheckVersion" 
          think="500-1000" 
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
<script>String amxHome = testExec.getStateString(&quot;TIBCO_AMX_HOME&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#10;&#10;double comparedVersion = Double.parseDouble(testExec.getStateString(&quot;ComparedVersion&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;));&#10;&#10;String s_version = amxHome.substring(amxHome.lastIndexOf(&quot;amx&quot;) + 4);&#10;&#10;double d_version = Double.parseDouble(s_version);&#10;&#10;if(d_version &gt;= comparedVersion)&#10;    return &quot;true&quot;;&#10;else&#10;    return &quot;false&quot;;&#10;&#10;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="33C2CC5E13FA11EE8675506B8DD34562" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="6bbe9dcf-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="6bbe9dcf-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
