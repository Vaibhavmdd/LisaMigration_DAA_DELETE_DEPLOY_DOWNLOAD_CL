<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Apr 06 10:53:47 PDT 2010 -->


<TestCase name="CheckLISASimulators" version="2">
<id>42877299</id>
<Documentation>Checks whether there is a LISA entity on each machine of the specified environment.&#10;If just one LISA is not detected, this sub-process will fail.&#10;&#10;Note: Simulators must run on default port 2001.&#10;Note: Always run this sub-process from local, do not execute remotely.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTcyNTExMzI4MQ==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>environment</key>
    <value></value>
    <name>Name of the ActiveMatrix environment</name>
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
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>71</graphx>
<graphy>416</graphy>
      <log>Checking LISA Simulators for environment &quot;{{environment}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="getAllMachines" > 

<graphx>0</graphx>
<graphy>243</graphy>
<onerror>fail</onerror>
<script>if (environment.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: Environment is required.&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getAllMachines" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getMachinesAsArray" > 

<graphx>71</graphx>
<graphy>71</graphy>
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
              <prop>machineMap</prop>
      </Filter>

    </Node>


    <Node name="getMachinesAsArray" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="initMachineCount" > 

<graphx>244</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>List hostList = new ArrayList();&#13;&#10;&#13;&#10;Set machineSet = machineMap.keySet();&#13;&#10;Iterator machineItr = machineSet.iterator();&#13;&#10;while(machineItr.hasNext()) {&#13;&#10; String machineName = machineItr.next();&#13;&#10; Map machine = (Map)machineMap.get(machineName);&#13;&#10; String hostname = (String)machine.get(&quot;hostName&quot;);&#13;&#10; hostList.add(hostname);&#13;&#10;}&#13;&#10;return hostList.toArray();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getMachinesAsArray.rsp</valueToFilterKey>
      <prop>machineArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert137" type="com.itko.lisa.test.AssertByScript">
<log>Checked number of machines</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Do not start the loop if the machine array is empty&#10;return (machineArray.length == 0);&#10;</script>
</CheckResult>

    </Node>


    <Node name="initMachineCount" log="{{machineCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatIsLISARunning" > 

<graphx>416</graphx>
<graphy>71</graphy>
    </Node>


    <Node name="repeatIsLISARunning" log="{{machineCount=machineCount+1}}"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatIsLISARunning" > 

<graphx>488</graphx>
<graphy>244</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/isLISARunning.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{=machineArray[machineCount]}}</value>
    <name>Host where you want to check whether LISA is running</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>2001</value>
    <name>Port used by LISA</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert166" type="com.itko.lisa.test.CheckResultContains">
<log>LISA is not running on {{=machineArray[machineCount]}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert137" type="com.itko.lisa.test.AssertByScript">
<log>Checked LISA on {{=machineCount+1}} machines</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of array&#10;if (machineCount &gt;= machineArray.length-1)&#10; return true;&#10;else &#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>416</graphx>
<graphy>416</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>244</graphx>
<graphy>488</graphy>
    </Node>


</TestCase>
