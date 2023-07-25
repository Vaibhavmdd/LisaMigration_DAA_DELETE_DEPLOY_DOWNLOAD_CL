<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Mar 23 17:31:26 PDT 2010 -->


<TestCase name="StopAllJ2EE" version="2">
<id>b38e0c85</id>
<Documentation>This subprocess stops the server by taking the environment and the server type.&#13;&#10;It then stops all the servers of this type in the given environment.&#13;&#10;The list of tibcohosts systems are retrieved from the data file used.&#13;&#10;On each system, If the Servertype is tibcohost, the tibcohost located under TIBCO_HOST_HOME will be stopped through LISA simulator.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE5OTM3ODcyMzQ=</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>type</key>
    <value>tibcohost</value>
    <name>type of the server. Currently the following are supported: tibcohost</name>
    </Parameter>
    <Parameter>
    <key>environment</key>
    <value>DevEnvironment</value>
    <name>Name of the AMX environment this server belongs</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>180</value>
    <name>time in seconds to fait for checking the server is started</name>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
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
    <key>lisa.getServerType.rsp</key>
    <value>Set in Step getServerType</value>
    </Parameter>
    <Parameter>
    <key>lisa.getServerType.rsp.time</key>
    <value>Set in Step getServerType</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopAllTibcoHosts.rsp</key>
    <value>Set in Step stopAllTibcoHosts</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopAllTibcoHosts.rsp.time</key>
    <value>Set in Step stopAllTibcoHosts</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
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
    <Node name="log" log="log thlese input variables"
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="validate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>The Following variables are used as input:&#13;&#10;    type = {{type}}&#13;&#10;    environment = {{environment}}&#13;&#10;    timeout = {{timeout}}    </log>
    </Node>


    <Node name="validate" log="validate the input properties are set correctly."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getServerType" > 

<graphx>301</graphx>
<graphy>938</graphy>
<onerror>fail</onerror>
<script>if (environment.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: Environment is required.&quot;;&#13;&#10;&#13;&#10;if (type.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: type is required.&quot;;&#13;&#10;&#13;&#10;if (!type.equalsIgnoreCase(&quot;tibcohost&quot;))&#13;&#10; return baseErrorMsg + &quot;: type is not valid.&quot;;&#13;&#10;&#13;&#10;if (timeout.equals(&quot;&quot;))&#13;&#10;    timeout=&quot;180&quot;;&#13;&#10;&#13;&#10;return baseSuccessMsg;</script>

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

<graphx>0</graphx>
<graphy>487</graphy>
<onerror>fail</onerror>
<script>return type.toLowerCase();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert291" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert291] fired true of type Result as String Contains Given String</log>
<then>stopAllTibcoHosts</then>
<valueToAssertKey></valueToAssertKey>
        <param>tibcohost</param>
</CheckResult>

    </Node>


    <Node name="stopAllTibcoHosts" log="stop all the tibcohosts specified in the amx environment"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>488</graphx>
<graphy>0</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopAllTibcoHosts.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>environment</key>
    <value>{{environment}}</value>
    <name>Name of the ActiveMatrix environment</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>timeout in seconds to wait for tibcohost to stop.</name>
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

<graphx>488</graphx>
<graphy>976</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>938</graphx>
<graphy>301</graphy>
    </Node>


</TestCase>
