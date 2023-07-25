<?xml version="1.0" ?>

<TestCase name="StopTibcoHost" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/27/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/27/2023" host="na2devasgaks01" />
</meta>

<id>aa488cd</id>
<Documentation>Stops TIBCOHost.&#13;&#10;This sub-process performs first a tibcohost -stop&#13;&#10;It can be executed on a remote TIBCOHost as well as long as there is a LISA simulator running on the remote host.&#13;&#10;&#13;&#10;Note: LISA simulator port must be 2001 on the remote machine.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE2MjU1MjE0Njk=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>Host on which to stop the TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/&lt;yourTHInstanceFolder&gt;/host</value>
    <name>TIBCOHost instance directory</name>
    </Parameter>
    <Parameter>
    <key>mode</key>
    <value></value>
    <name>Stop mode used for stopping the node (normal - immediate - abort). Default is normal.</name>
    </Parameter>
    <Parameter>
    <key>wait</key>
    <value></value>
    <name>If set to true the wait becomes synchronous and only returns when all node processes were stopped. Default is false</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>180</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to stop</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.buildStopCommand.rsp</key>
    <value></value>
    <name>lisa.buildStopCommand.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.buildStopCommand.rsp.time</key>
    <value></value>
    <name>lisa.buildStopCommand.rsp.time</name>
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
    <key>lisa.getSimulator.rsp</key>
    <value></value>
    <name>lisa.getSimulator.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getSimulator.rsp.time</key>
    <value></value>
    <name>lisa.getSimulator.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.startTibcoHost.rsp</key>
    <value></value>
    <name>lisa.startTibcoHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.stopTibcoHost.rsp</key>
    <value></value>
    <name>lisa.stopTibcoHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.stopTibcoHost.rsp.time</key>
    <value></value>
    <name>lisa.stopTibcoHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInputVariables.rsp</key>
    <value></value>
    <name>lisa.validateInputVariables.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInputVariables.rsp.time</key>
    <value></value>
    <name>lisa.validateInputVariables.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>simulator</key>
    <value></value>
    <name>simulator</name>
    </Parameter>
    <Parameter>
    <key>simulatorPort</key>
    <value></value>
    <name>simulatorPort</name>
    </Parameter>
    <Parameter>
    <key>stopCommand</key>
    <value></value>
    <name>stopCommand</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="aa488cd-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getSimulator" > 

<log>Stopping TIBCOHost on host {{host}} at {{tibcoHostinstance}} ...</log>
    </Node>


    <Node name="getSimulator" log="get the simulator for the host on which tibcohost should be stopped."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="aa488cd-getSimulator" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="validateInputVariables" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getSimulator.rsp</valueToFilterKey>
      <prop>simulator</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Getting Simulators has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (host == null || host.equals(&quot;&quot;))&#13;&#10; throw new Exception(&quot;host is empty!&quot;);&#13;&#10;&#13;&#10;if (host.equalsIgnoreCase(LISA_HOST) || host.equals(&quot;localhost&quot;) || host.equals(&quot;127.0.0.1&quot;))&#13;&#10; return &quot;local&quot;;&#13;&#10;else&#13;&#10; return &quot;rmi://&quot; + host + &quot;:&quot; + simulatorPort + &quot;/&quot; + host;</script>
    </Node>


    <Node name="validateInputVariables" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="aa488cd-validateInputVariables" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="buildStopCommand" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert215" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>TIBCOHost Stop Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;String errorMsg = &quot;TIBCOHost Stop Error&quot;;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;File thFile = null;&#13;&#10;&#13;&#10;    if ((tibcoHostinstance == null) || (tibcoHostinstance.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: tibcoHostinstance is required&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;if ((host == null) || (host.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: host is required&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;if ((timeout == null) || (timeout.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: timeout is required&quot;;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;    thFile = new File(testExec.parseInState(tibcoHostinstance).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#13;&#10;&#9;if (!thFile.exists()) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: tibcoHostinstance is not found.&quot;;&#13;&#10;&#9;}&#13;&#10;    if (!thFile.canRead()) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: tibcoHostinstance cannot be read.&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;if (!thFile.isDirectory()) {&#13;&#10;&#9;&#9;return errorMsg + &quot;tibcoHostinstance is not a directory.&quot;;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#9;return &quot;TIBCOHost Start-up Validation Success&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="buildStopCommand" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="aa488cd-buildStopCommand" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="stopTibcoHost" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.buildStopCommand.rsp</valueToFilterKey>
      <prop>stopCommand</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>String str = &quot;stop&quot;;&#13;&#10;if (!mode.equals(&quot;&quot;))&#13;&#10;    str = str + &quot; -mode &quot; + mode;&#13;&#10;if (!wait.equals(&quot;&quot;))&#13;&#10;    str = str + &quot; -wait &quot; + wait;&#13;&#10;&#13;&#10;return str;</script>
    </Node>


    <Node name="stopTibcoHost" log="Stop the tibcohost."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="aa488cd-stopTibcoHost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert159" type="com.itko.lisa.test.CheckResultContains">
<log>Verify if the tibcohost.exe is present</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>does not exist.</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert124" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert124] fired true of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Exception</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert160" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert160] fired true of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Try &quot;help&quot;</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert204" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert204] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Stopped TIBCO Host</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{tibcoHostinstance}}/bin/tibcohost</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value></value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{tibcoHostinstance}}/bin/tibcohost.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>{{stopCommand}}</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{tibcoHostinstance}}/bin</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for the command to complete (true or false)</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>{{timeout}}</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>{{timeout}}</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="A29CE47F9E4011ED8E7C506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="aa488cd-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="aa488cd-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
