<?xml version="1.0" ?>

<TestCase name="StartAllTibcoHosts" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/27/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/27/2023" host="na2devasgaks01" />
</meta>

<id>42877299</id>
<Documentation>Starts all TibcoHosts on all the machines belonging to the specified environment.&#13;&#10;&#13;&#10;This sub-process starts TibcoHosts remotely if necessary (as long as there is a LISA Simulator running on the remote machine).&#13;&#10;On each machine, the sub-process tries to kill the tibcohost first, clean up the logs, then start the tibcohost.&#13;&#10;&#13;&#10;Note: Simulators must run on default port 2001.&#13;&#10;Note: Simulator name must be set to the hostname where the Simulator is running.&#13;&#10;Note: Always run this sub-process from local, do not execute remotely.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MjAxNDcwNzc4Ng==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>timeout</key>
    <value>180</value>
    <name>Max number of seconds to wait to allow the each daemon to start</name>
    </Parameter>
    <Parameter>
    <key>environment</key>
    <value>DevEnvironment</value>
    <name>Name of the ActiveMatrix environment</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>baseErrorMsg</key>
    <value></value>
    <name>baseErrorMsg</name>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value></value>
    <name>baseSuccessMsg</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkMachineArraylength.rsp</key>
    <value></value>
    <name>lisa.checkMachineArraylength.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkMachineArraylength.rsp.time</key>
    <value></value>
    <name>lisa.checkMachineArraylength.rsp.time</name>
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
    <key>lisa.getAllMachines.rsp</key>
    <value></value>
    <name>lisa.getAllMachines.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getAllMachines.rsp.time</key>
    <value></value>
    <name>lisa.getAllMachines.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getMachinesAsArray.rsp</key>
    <value></value>
    <name>lisa.getMachinesAsArray.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getMachinesAsArray.rsp.time</key>
    <value></value>
    <name>lisa.getMachinesAsArray.rsp.time</name>
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
    <key>lisa.getSimulatorForSystemRunningAdministrator.rsp</key>
    <value></value>
    <name>lisa.getSimulatorForSystemRunningAdministrator.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getSimulatorForSystemRunningAdministrator.rsp.time</key>
    <value></value>
    <name>lisa.getSimulatorForSystemRunningAdministrator.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.initMachineCount.rsp</key>
    <value></value>
    <name>lisa.initMachineCount.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.initMachineCount.rsp.time</key>
    <value></value>
    <name>lisa.initMachineCount.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>lisa.log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logMachineCount.rsp</key>
    <value></value>
    <name>lisa.logMachineCount.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logMachineCount.rsp.time</key>
    <value></value>
    <name>lisa.logMachineCount.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatGetSimulator.rsp</key>
    <value></value>
    <name>lisa.repeatGetSimulator.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatGetSimulator.rsp.time</key>
    <value></value>
    <name>lisa.repeatGetSimulator.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIncrementMachineCount.rsp</key>
    <value></value>
    <name>lisa.repeatIncrementMachineCount.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIncrementMachineCount.rsp.time</key>
    <value></value>
    <name>lisa.repeatIncrementMachineCount.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIsLISARunning.rsp</key>
    <value></value>
    <name>lisa.repeatIsLISARunning.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIsLISARunning.rsp.time</key>
    <value></value>
    <name>lisa.repeatIsLISARunning.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatKillDaemon.rsp</key>
    <value></value>
    <name>lisa.repeatKillDaemon.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatKillDaemon.rsp.time</key>
    <value></value>
    <name>lisa.repeatKillDaemon.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStartDaemon.rsp</key>
    <value></value>
    <name>lisa.repeatStartDaemon.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStartDaemon.rsp.time</key>
    <value></value>
    <name>lisa.repeatStartDaemon.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStartTibcoHost.rsp</key>
    <value></value>
    <name>lisa.repeatStartTibcoHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStartTibcoHost.rsp.time</key>
    <value></value>
    <name>lisa.repeatStartTibcoHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStopDaemon.rsp</key>
    <value></value>
    <name>lisa.repeatStopDaemon.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStopDaemon.rsp.time</key>
    <value></value>
    <name>lisa.repeatStopDaemon.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.result.rsp</key>
    <value></value>
    <name>lisa.result.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.result.rsp.time</key>
    <value></value>
    <name>lisa.result.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.startAdminTibcoHost.rsp</key>
    <value></value>
    <name>lisa.startAdminTibcoHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.startAdminTibcoHost.rsp.time</key>
    <value></value>
    <name>lisa.startAdminTibcoHost.rsp.time</name>
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
    <key>machineArray</key>
    <value></value>
    <name>machineArray</name>
    </Parameter>
    <Parameter>
    <key>machineCount</key>
    <value></value>
    <name>machineCount</name>
    </Parameter>
    <Parameter>
    <key>machineMap</key>
    <value></value>
    <name>machineMap</name>
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
    <key>tibco.amx.datafile</key>
    <value></value>
    <name>tibco.amx.datafile</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.env1.machine2.hostName</key>
    <value></value>
    <name>tibco.amx.env1.machine2.hostName</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.env1.machine2.tibcoHome</key>
    <value></value>
    <name>tibco.amx.env1.machine2.tibcoHome</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="42877299-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Starting all TibcoHosts in environment &quot;{{environment}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="42877299-validate" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="getAllMachines" > 


      <!-- Assertions -->
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

<onerror>abort</onerror>
<script>if (environment.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: Environment is required.&quot;;&#13;&#10;&#13;&#10;return baseSuccessMsg;</script>
    </Node>


    <Node name="getAllMachines" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="42877299-getAllMachines" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkMachineArraylength" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>machineArray</prop>
      </Filter>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/GetAllMachines.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>environment</key>
    <value>{{environment}}</value>
    <name>Name of the ActiveMatrix environment</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="checkMachineArraylength" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="42877299-checkMachineArraylength" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="initMachineCount" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert743" type="com.itko.lisa.test.CheckResultContains">
<log>The machine list is empty.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (machineArray == null || machineArray.length == 0) {&#13;&#10;&#9;return &quot;Fail&quot;;&#13;&#10;}&#13;&#10;return &quot;Pass&quot;;</script>
    </Node>


    <Node name="initMachineCount" log="{{machineCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          uid="42877299-initMachineCount" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getSimulator" > 

    </Node>


    <Node name="getSimulator" log="get the simulator for the host on which tibcohost should be started. Machinecount is: {{machineCount}}. Simulator used is: {{simulator}}"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="42877299-getSimulator" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="logMachineCount" > 


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
<script>if (machineArray.length == 0)&#13;&#10; throw new Exception(&quot;machineArray is empty!&quot;);&#13;&#10;&#13;&#10;if (machineArray[machineCount+1].equalsIgnoreCase(LISA_HOST) || machineArray[machineCount+1].equals(&quot;localhost&quot;) || machineArray[machineCount+1].equals(&quot;127.0.0.1&quot;))&#13;&#10; return &quot;local&quot;;&#13;&#10;else&#13;&#10; return &quot;rmi://&quot; + machineArray[machineCount+1] + &quot;:&quot; + simulatorPort + &quot;/&quot; + machineArray[machineCount+1];</script>
    </Node>


    <Node name="logMachineCount" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="42877299-logMachineCount" 
          think="500-1000" 
          useFilters="true" 
          quiet="true" 
          next="repeatStartTibcoHost" > 

<log>machineCount={{machineCount}}&#13;&#10;simulator used={{simulator}}</log>
    </Node>


    <Node name="repeatStartTibcoHost" log="Starting tibcohost on {{simulator}}. machine count = {{machineCount}}"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="42877299-repeatStartTibcoHost" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="repeatIncrementMachineCount" > 

<remoteServer>{{simulator}}</remoteServer>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StartTibcoHost.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>Host on which the TIBCOHost should be started</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/&lt;yourTHInstanceFolder&gt;/host</value>
    <name>TIBCOHost instance directory. If host is remote, specify the TIBCOHost instance location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{tibcoHostinstance}}/logs/tibcohost.log</value>
    <name>TIBCOHost log file to monitor to insure proper start-up</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to start</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="repeatIncrementMachineCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="42877299-repeatIncrementMachineCount" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getSimulator" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatIncrementMachineCount.rsp</valueToFilterKey>
      <prop>machineCount</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert137" type="com.itko.lisa.test.AssertByScript">
<log>Started Tibcohost</log>
<then>result</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of array&#13;&#10;if (machineCount &gt;= machineArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<onerror>abort</onerror>
<script>machineCount = machineCount + 1;&#13;&#10;return machineCount;</script>
    </Node>


    <Node name="result" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="42877299-result" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;Started &quot; + (machineCount+1) + &quot; tibcohosts(s) for environment &apos;&quot; + testExec.parseInState(environment) + &quot;&apos;.&quot;;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="A7C69C2A9E4011ED8E7C506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="42877299-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="42877299-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
