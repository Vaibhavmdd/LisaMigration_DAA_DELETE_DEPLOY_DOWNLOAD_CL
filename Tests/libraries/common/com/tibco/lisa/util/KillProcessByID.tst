<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Wed Jul 04 23:13:50 PDT 2007 -->


<TestCase name="KillProcessByID" version="2">
<id>47cfddfd</id>
<Documentation>Kill a process by passing a pid.&#10;This operation performs a taskkill on Windows and a kill -9 on Unix.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjZhICg0MDQ2KSZub2Rlcz03NTA5NTQ0NDU=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>processID</key>
    <value></value>
    <name>Id of the process to be killed</name>
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
      <log>Attempting to kill pid &quot;{{processID}}&quot;...</log>
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
<script>String baseErrorMsg = &quot;Kill process validation error&quot;;&#10;String baseSuccessMsg = &quot;Kill process validation success&quot;;&#10;&#10;if (processID.equals(&quot;&quot;) || processID.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: processID is required&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert80" >
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
        <param>Kill process validation error</param>
</CheckResult>

    </Node>


    <Node name="OSSelection" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killOnUnix" > 

<graphx>120</graphx>
<graphy>21</graphy>
<script>if(System.getProperty(&quot;os.name&quot;).toLowerCase().startsWith(&quot;windows&quot;))&#10; return &quot;windows&quot;;&#10;else&#10; return &quot;unix&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert134" >
<log>OS is Windows</log>
<then>killOnWindows</then>
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
<cmd>taskkill /f /pid {{processID}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util</basedir>
<toNode>fail</toNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>
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
<cmd>sh KillProcessByID.sh {{processID}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util</basedir>
<toNode>fail</toNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>
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


</TestCase>
