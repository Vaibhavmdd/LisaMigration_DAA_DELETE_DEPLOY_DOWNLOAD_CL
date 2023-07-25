<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu May 16 22:46:04 PDT 2013 -->


<TestCase name="TestKillProcessByName" version="2">
<id>47cfddfd</id>
<Documentation>Kill a process by passing a name.&#13;&#10;This operation performs a taskkill on Windows and a kill -9 on Unix.&#13;&#10;&#13;&#10;The sub-process returns &quot;SUCCESS: &lt;success message&gt;&quot; or &quot;ERROR: &lt;error message&gt;&quot;&#13;&#10;You can perform assertions on these two key words &quot;SUCCESS&quot; or &quot;ERROR&quot;.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTUyMTY0NTQxNw==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>processName</key>
    <value></value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
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
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
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
    <key>lisa.OSSelection.rsp</key>
    <value>Set in Step OSSelection</value>
    </Parameter>
    <Parameter>
    <key>lisa.OSSelection.rsp.time</key>
    <value>Set in Step OSSelection</value>
    </Parameter>
    <Parameter>
    <key>lisa.killOnWindows.rsp</key>
    <value>Set in Step killOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.killOnWindows.rsp.time</key>
    <value>Set in Step killOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step killOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step killOnWindows</value>
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
    <key>lisa.killOnUnix.rsp</key>
    <value>Set in Step killOnUnix</value>
    </Parameter>
    <Parameter>
    <key>lisa.killOnUnix.rsp.time</key>
    <value>Set in Step killOnUnix</value>
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
    <key>resultMsg</key>
    <value>Set in Step killOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.killOk.rsp</key>
    <value>Set in Step killOk</value>
    </Parameter>
    <Parameter>
    <key>lisa.killOk.rsp.time</key>
    <value>Set in Step killOk</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnixSelector.rsp</key>
    <value>Set in Step UnixSelector</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnixSelector.rsp.time</key>
    <value>Set in Step UnixSelector</value>
    </Parameter>
    <Parameter>
    <key>processName2</key>
    <value>Set in Step UnixSelector</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnixProcessModifier.rsp</key>
    <value>Set in Step UnixProcessModifier</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnixProcessModifier.rsp.time</key>
    <value>Set in Step UnixProcessModifier</value>
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

<graphx>46</graphx>
<graphy>345</graphy>
      <log>Attempting to kill process &quot;{{processName}}&quot;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="OSSelection" > 

<graphx>5</graphx>
<graphy>165</graphy>
<onerror>fail</onerror>
<script>String baseErrorMsg = &quot;Kill process validation error&quot;;&#10;String baseSuccessMsg = &quot;Kill process validation success&quot;;&#10;&#10;if (processName.equals(&quot;&quot;) || processName.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: processName is required&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert80" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Kill process validation error</param>
</CheckResult>

    </Node>


    <Node name="OSSelection" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UnixProcessModifier" > 

<graphx>120</graphx>
<graphy>21</graphy>
<onerror>fail</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10; return &quot;windows&quot;;&#13;&#10;else&#13;&#10; return &quot;unix&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert134" type="com.itko.lisa.test.CheckResultContains">
<log>OS is Windows</log>
<then>killOnWindows</then>
<valueToAssertKey></valueToAssertKey>
        <param>windows</param>
</CheckResult>

    </Node>


    <Node name="killOnWindows" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>305</graphx>
<graphy>21</graphy>
<cmd>taskkill /f /im {{processName}}.exe</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>resultMsg</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert310" type="com.itko.lisa.test.CheckResultContains">
<log>{{processName}}.exe killed successfully</log>
<then>killOk</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

    </Node>


    <Node name="UnixProcessModifier" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killOnUnix" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>// ps -e command used to get the PID has some restriction on some Unix platforms:&#13;&#10;// The process name might truncated.&#13;&#10;&#13;&#10;processName2 = processName;&#13;&#10;&#13;&#10;// Linux ps -e command returns 15 characters max&#13;&#10;if (os_name.equals(&quot;Linux&quot;)) {&#13;&#10; if (testExec.parseInState(processName).length() &gt; 15)&#13;&#10;  processName2 = testExec.parseInState(processName).substring(0,15);&#13;&#10;}&#13;&#10;// HP-UX ps -e command returns 14 characters max&#13;&#10;else if (os_name.equals(&quot;HP-UX&quot;)) {&#13;&#10; if (testExec.parseInState(processName).length() &gt; 14)&#13;&#10;  processName2 = testExec.parseInState(processName).substring(0,14);&#13;&#10;}&#13;&#10;// Solaris ps -e command returns 8 characters max&#13;&#10;else if (os_name.equals(&quot;SunOS&quot;)) {&#13;&#10; if (testExec.parseInState(processName).length() &gt; 8)&#13;&#10;  processName2 = testExec.parseInState(processName).substring(0,8);&#13;&#10;}&#13;&#10;// AIX does not have limitation.&#13;&#10;return processName2;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>processName2</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="killOnUnix" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>420</graphx>
<graphy>165</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<cmd>sh TestKillProcessByName.sh {{processName2}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.killOnUnix.rsp</valueToFilterKey>
      <prop>resultMsg</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert337" type="com.itko.lisa.test.CheckResultContains">
<log>{{processName}} killed successfully</log>
<then>killOk</then>
<valueToAssertKey></valueToAssertKey>
        <param>Killed process</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert127" type="com.itko.lisa.test.CheckResultContains">
<log>Error: Not allowed to kill {{processName}} - Please check permissions</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>ERROR: Not allowed to kill</param>
</CheckResult>

    </Node>


    <Node name="killOk" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10; return resultMsg;&#13;&#10;else&#13;&#10; return &quot;SUCCESS: &quot; + resultMsg;&#13;&#10;</script>

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

<graphx>213</graphx>
<graphy>426</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>379</graphx>
<graphy>345</graphy>
    </Node>


</TestCase>
