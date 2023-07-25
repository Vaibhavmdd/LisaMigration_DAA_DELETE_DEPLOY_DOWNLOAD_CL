<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Apr 06 10:46:08 PDT 2010 -->


<TestCase name="StopAllTibcoHosts" version="2">
<id>42877299</id>
<Documentation>Stops all TibcoHosts on all the machines belonging to the specified environment.&#13;&#10;This sub-process stops tibcohosts remotely if necessary (as long as there is a LISA Simulator running on the remote machine).&#13;&#10;Note: Simulators must run on default port 2001.&#13;&#10;Note: Simulator name must be set to the hostname where the Simulator is running.&#13;&#10;Note: Always run this sub-process from local, do not execute remotely.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE5MTY2NzA4OTQ=</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>environment</key>
    <value>DevEnvironment</value>
    <name>Name of the ActiveMatrix environment</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>180</value>
    <name>timeout in seconds to wait for tibcohost to stop.</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAllMachines.rsp</key>
    <value>Set in Step getAllMachines</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAllMachines.rsp.time</key>
    <value>Set in Step getAllMachines</value>
    </Parameter>
    <Parameter>
    <key>machineMap</key>
    <value>Set in Step getAllMachines</value>
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
    <key>tibco.amx.datafile</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>baseErrorMsg</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.env1.machine2.hostName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.env1.machine2.tibcoHome</key>
    <value>Property From Config</value>
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
    <key>lisa.getMachinesAsArray.rsp</key>
    <value>Set in Step getMachinesAsArray</value>
    </Parameter>
    <Parameter>
    <key>lisa.getMachinesAsArray.rsp.time</key>
    <value>Set in Step getMachinesAsArray</value>
    </Parameter>
    <Parameter>
    <key>machineArray</key>
    <value>Set in Step getMachinesAsArray</value>
    </Parameter>
    <Parameter>
    <key>lisa.initMachineCount.rsp</key>
    <value>Set in Step initMachineCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initMachineCount.rsp.time</key>
    <value>Set in Step initMachineCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIsLISARunning.rsp</key>
    <value>Set in Step repeatIsLISARunning</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIsLISARunning.rsp.time</key>
    <value>Set in Step repeatIsLISARunning</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatKillDaemon.rsp</key>
    <value>Set in Step repeatKillDaemon</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatKillDaemon.rsp.time</key>
    <value>Set in Step repeatKillDaemon</value>
    </Parameter>
    <Parameter>
    <key>simulatorPort</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatGetSimulator.rsp</key>
    <value>Set in Step repeatGetSimulator</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatGetSimulator.rsp.time</key>
    <value>Set in Step repeatGetSimulator</value>
    </Parameter>
    <Parameter>
    <key>simulator</key>
    <value>Set in Step repeatGetSimulator</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStopDaemon.rsp</key>
    <value>Set in Step repeatStopDaemon</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStopDaemon.rsp.time</key>
    <value>Set in Step repeatStopDaemon</value>
    </Parameter>
    <Parameter>
    <key>result</key>
    <value>Set in Step repeatStopDaemon</value>
    </Parameter>
    <Parameter>
    <key>lisa.result.rsp</key>
    <value>Set in Step result</value>
    </Parameter>
    <Parameter>
    <key>lisa.result.rsp.time</key>
    <value>Set in Step result</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatResultCount.rsp</key>
    <value>Set in Step repeatResultCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatResultCount.rsp.time</key>
    <value>Set in Step repeatResultCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatKillCount.rsp</key>
    <value>Set in Step repeatKillCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatKillCount.rsp.time</key>
    <value>Set in Step repeatKillCount</value>
    </Parameter>
    <Parameter>
    <key>nbKill</key>
    <value>Set in Step repeatKillCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIncrementMachineCount.rsp</key>
    <value>Set in Step repeatIncrementMachineCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatIncrementMachineCount.rsp.time</key>
    <value>Set in Step repeatIncrementMachineCount</value>
    </Parameter>
    <Parameter>
    <key>machineCount</key>
    <value>Set in Step repeatIncrementMachineCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStopTibcoHost.rsp</key>
    <value>Set in Step repeatStopTibcoHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatStopTibcoHost.rsp.time</key>
    <value>Set in Step repeatStopTibcoHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.getSimulator.rsp</key>
    <value>Set in Step getSimulator</value>
    </Parameter>
    <Parameter>
    <key>lisa.getSimulator.rsp.time</key>
    <value>Set in Step getSimulator</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkMachineArraylength.rsp</key>
    <value>Set in Step checkMachineArraylength</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkMachineArraylength.rsp.time</key>
    <value>Set in Step checkMachineArraylength</value>
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
    <Parameter>
    <key>simulatorPort</key>
    <value>2001</value>
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

<graphx>182</graphx>
<graphy>682</graphy>
      <log>Stopping all TibcoHosts in environment &quot;{{environment}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getAllMachines" > 

<graphx>49</graphx>
<graphy>548</graphy>
<onerror>fail</onerror>
<script>if (environment.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: Environment is required.&quot;;&#13;&#10;&#13;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert222" type="com.itko.lisa.test.CheckResultContains">
<log>Environment is specified</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{baseErrorMsg}}</param>
</CheckResult>

    </Node>


    <Node name="getAllMachines" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkMachineArraylength" > 

<graphx>0</graphx>
<graphy>365</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/GetAllMachines.tst</Subprocess>
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
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>machineArray</prop>
      </Filter>

    </Node>


    <Node name="checkMachineArraylength" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="initMachineCount" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>if (machineArray == null || machineArray.length == 0) {&#13;&#10;&#9;return &quot;Fail&quot;;&#13;&#10;}&#13;&#10;return &quot;Pass&quot;;</script>

      <!-- Result Elements -->
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

    </Node>


    <Node name="initMachineCount" log="{{machineCount=-1}} {{nbKill=0}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getSimulator" > 

<graphx>183</graphx>
<graphy>49</graphy>
    </Node>


    <Node name="getSimulator" log="get the simulator for the host on which tibcohost should be stopped."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="repeatStopTibcoHost" > 

<graphx>366</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>if (machineArray.length == 0)&#13;&#10; throw new Exception(&quot;machineArray is empty!&quot;);&#13;&#10;&#13;&#10;if (machineArray[machineCount+1].equalsIgnoreCase(LISA_HOST) || machineArray[machineCount+1].equals(&quot;localhost&quot;) || machineArray[machineCount+1].equals(&quot;127.0.0.1&quot;))&#13;&#10; return &quot;local&quot;;&#13;&#10;else&#13;&#10; return &quot;rmi://&quot; + machineArray[machineCount+1] + &quot;:&quot; + simulatorPort + &quot;/&quot; + machineArray[machineCount+1];</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getSimulator.rsp</valueToFilterKey>
      <prop>simulator</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Getting Simulators has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="repeatStopTibcoHost" log="Stop the tibcohost on the specified host received from getMachineList() subprocess"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatIncrementMachineCount" > 

<graphx>682</graphx>
<graphy>183</graphy>
<Documentation>The tibcoHostHome value input can also be {{TIBCO_HOST_HOME}}. But leaving it to empty as that also works.</Documentation>
<remoteServer>{{simulator}}</remoteServer>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_INSTANCE}}</value>
    <name>TibcoHost instance directory</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Max number of seconds to wait to allow the TibcoHost to start</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>Host on which to stop the tibcohost</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatStopTibcoHost.rsp</valueToFilterKey>
      <prop>result</prop>
      </Filter>

    </Node>


    <Node name="repeatIncrementMachineCount" log="iterate the machine list by increasing the counter"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatKillCount" > 

<graphx>549</graphx>
<graphy>49</graphy>
<onerror>fail</onerror>
<script>machineCount = machineCount + 1;&#13;&#10;return machineCount;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatIncrementMachineCount.rsp</valueToFilterKey>
      <prop>machineCount</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="repeatKillCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getSimulator" > 

<graphx>732</graphx>
<graphy>366</graphy>
<onerror>fail</onerror>
<script>if (result.contains(&quot;SUCCESS&quot;))&#13;&#10; return (nbKill+1);&#13;&#10;else &#13;&#10; return nbKill;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatKillCount.rsp</valueToFilterKey>
      <prop>nbKill</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>ResultCount has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert107" type="com.itko.lisa.test.AssertByScript">
<log>Found {{=machineCount+1}} daemons in environment &quot;{{environment}}&quot;</log>
<then>result</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of array&#13;&#10;if (machineCount &gt;= machineArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="result" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>682</graphx>
<graphy>549</graphy>
<onerror>fail</onerror>
<script>return &quot;Found &quot; + (machineCount+1) + &quot; TibcoHosts(s) in environment &apos;&quot; + testExec.parseInState(environment) + &quot;&apos;. &quot; + nbKill + &quot; TibcoHost(s) were found running and were killed.&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Result step has thrown Exception</log>
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

<graphx>549</graphx>
<graphy>682</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>366</graphx>
<graphy>732</graphy>
    </Node>


</TestCase>
