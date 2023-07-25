<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Tue Sep 11 16:25:49 PDT 2007 -->


<TestCase name="isLISARunning" version="2">
<id>4b93d8b1</id>
<Documentation>Checks whether there is a LISA entity running on the specified host.&#10;Returns boolean.&#10;If the hostname is a remote host, the presence of LISA Simulator is checked on that remote host.&#10;If the hostname is the local host it will return true.</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tMTUyMjE0ODc1NQ==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Host where you want to check whether LISA is running</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>2001</value>
    <name>Port used by LISA</name>
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
    <key>lisa.doNothing.rsp</key>
    <value>Set in Step doNothing</value>
    </Parameter>
    <Parameter>
    <key>lisa.doNothing.rsp.time</key>
    <value>Set in Step doNothing</value>
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
    <key>lisa.checkHostAndPort.rsp</key>
    <value>Set in Step checkHostAndPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkHostAndPort.rsp.time</key>
    <value>Set in Step checkHostAndPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkLocalhost.rsp</key>
    <value>Set in Step checkLocalhost</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkLocalhost.rsp.time</key>
    <value>Set in Step checkLocalhost</value>
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
    <key>baseErrorMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Checking LISA on {{host}}:{{port}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkHostAndPort" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>if (host.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: Host is required&quot;;&#10;&#10;if (port.equals(&quot;&quot;))&#10; return baseErrorMsg +  &quot;: Port is required&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert157" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>{{baseErrorMsg}}</param>
</CheckResult>

    </Node>


    <Node name="checkHostAndPort" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/CheckPort.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{host}}</value>
    <name>Name of the host</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{port}}</value>
    <name>Port number to be checked</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert78" >
<log>checking localhost...</log>
<then>checkLocalhost</then>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="checkLocalhost" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>if (host.equals(LISA_HOST))&#10; return true;&#10;else&#10; return false;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
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
