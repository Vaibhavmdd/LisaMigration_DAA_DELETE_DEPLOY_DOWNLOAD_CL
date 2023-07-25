<?xml version="1.0" ?>

<TestCase name="KillProcessByName" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
</meta>

<id>47cfddfd</id>
<Documentation>Kill a process by passing a name.&#13;&#10;This operation performs a taskkill on Windows and a kill -9 on Unix.&#13;&#10;&#13;&#10;The sub-process returns &quot;SUCCESS: &lt;success message&gt;&quot; or &quot;ERROR: &lt;error message&gt;&quot;&#13;&#10;You can perform assertions on these two key words &quot;SUCCESS&quot; or &quot;ERROR&quot;.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTYxNDI1Njc5Mw==</sig>
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
    <key>lisa.OSSelection.rsp</key>
    <value></value>
    <name>lisa.OSSelection.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.OSSelection.rsp.time</key>
    <value></value>
    <name>lisa.OSSelection.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.UnixProcessModifier.rsp</key>
    <value></value>
    <name>lisa.UnixProcessModifier.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.UnixProcessModifier.rsp.time</key>
    <value></value>
    <name>lisa.UnixProcessModifier.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.UnixSelector.rsp</key>
    <value></value>
    <name>lisa.UnixSelector.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.UnixSelector.rsp.time</key>
    <value></value>
    <name>lisa.UnixSelector.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value></value>
    <name>lisa.command.exit.code</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value></value>
    <name>lisa.command.pid_handle</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value></value>
    <name>lisa.continue.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value></value>
    <name>lisa.continue.rsp.time</name>
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
    <Parameter>
    <key>lisa.killOk.rsp</key>
    <value></value>
    <name>lisa.killOk.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.killOk.rsp.time</key>
    <value></value>
    <name>lisa.killOk.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.killOnUnix.rsp</key>
    <value></value>
    <name>lisa.killOnUnix.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.killOnUnix.rsp.time</key>
    <value></value>
    <name>lisa.killOnUnix.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.killOnWindows.rsp</key>
    <value></value>
    <name>lisa.killOnWindows.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.killOnWindows.rsp.time</key>
    <value></value>
    <name>lisa.killOnWindows.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value></value>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value></value>
    <name>lisa.validate.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>processName2</key>
    <value></value>
    <name>processName2</name>
    </Parameter>
    <Parameter>
    <key>resultMsg</key>
    <value></value>
    <name>resultMsg</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="47cfddfd-Log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Attempting to kill process &quot;{{processName}}&quot;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="47cfddfd-validate" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="OSSelection" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert80" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Kill process validation error</param>
</CheckResult>

<onerror>abort</onerror>
<script>String baseErrorMsg = &quot;Kill process validation error&quot;;&#10;String baseSuccessMsg = &quot;Kill process validation success&quot;;&#10;&#10;if (processName.equals(&quot;&quot;) || processName.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: processName is required&quot;;&#10;&#10;return baseSuccessMsg;</script>
    </Node>


    <Node name="OSSelection" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="47cfddfd-OSSelection" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="UnixProcessModifier" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert134" type="com.itko.lisa.test.CheckResultContains">
<log>OS is Windows</log>
<then>killOnWindows</then>
<valueToAssertKey></valueToAssertKey>
        <param>windows</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#10; return &quot;windows&quot;;&#10;else&#10; return &quot;unix&quot;;</script>
    </Node>


    <Node name="UnixProcessModifier" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="47cfddfd-UnixProcessModifier" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="killOnUnix" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>processName2</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>// ps -e command used to get the PID has some restriction on some Unix platforms:&#10;// The process name might truncated.&#10;&#10;processName2 = processName;&#10;&#10;// Linux ps -e command returns 15 characters max&#10;if (os_name.equals(&quot;Linux&quot;)) {&#10; if (testExec.parseInState(processName).length() &gt; 15)&#10;  processName2 = testExec.parseInState(processName).substring(0,15);&#10;}&#10;// HP-UX ps -e command returns 14 characters max&#10;else if (os_name.equals(&quot;HP-UX&quot;)) {&#10; if (testExec.parseInState(processName).length() &gt; 14)&#10;  processName2 = testExec.parseInState(processName).substring(0,14);&#10;}&#10;// Solaris ps -e command returns 8 characters max&#10;else if (os_name.equals(&quot;SunOS&quot;)) {&#10; if (testExec.parseInState(processName).length() &gt; 8)&#10;  processName2 = testExec.parseInState(processName).substring(0,8);&#10;}&#10;// AIX does not have limitation.&#10;return processName2;</script>
    </Node>


    <Node name="killOnUnix" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="47cfddfd-killOnUnix" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>resultMsg</prop>
      </Filter>


      <!-- Assertions -->
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

<cmd>sh KillProcessByName.sh {{processName2}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="killOk" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="47cfddfd-killOk" 
          think="0-0" 
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
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10; return resultMsg;&#13;&#10;else&#13;&#10; return &quot;SUCCESS: &quot; + resultMsg;&#13;&#10;</script>
    </Node>


    <Node name="killOnWindows" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="47cfddfd-killOnWindows" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>resultMsg</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert310" type="com.itko.lisa.test.CheckResultContains">
<log>{{processName}}.exe killed successfully</log>
<then>killOk</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

<cmd>taskkill /f /im {{processName}}.exe</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="F3E875B4640711EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="47cfddfd-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="47cfddfd-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
