<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon Apr 26 16:28:08 PDT 2010 -->


<TestCase name="StartEMSServer" version="2">
<id>47f97aff</id>
<Documentation>Starts up EMS Server</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTUxMTQ2OTQ2</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>emsHome</key>
    <value>{{TIBCO_EMS_HOME}}</value>
    <name>EMS Home</name>
    </Parameter>
    <Parameter>
    <key>configFile</key>
    <value>{{TIBCO_EMS_CONFIG}}/data/tibemsd.conf</value>
    <name>EMS configuration file</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the server</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the server</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>4</value>
    <name>Number of seconds to sleep on Windows platforms after starting the server</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>6</value>
    <name>Number of seconds to sleep on Unix platforms after starting the server</name>
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
    <key>lisa.waitBefore.rsp</key>
    <value>Set in Step waitBefore</value>
    </Parameter>
    <Parameter>
    <key>lisa.waitBefore.rsp.time</key>
    <value>Set in Step waitBefore</value>
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
    <key>lisa.startEMS.rsp</key>
    <value>Set in Step startEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.startEMS.rsp.time</key>
    <value>Set in Step startEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step startEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step startEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.waitAfter.rsp</key>
    <value>Set in Step waitAfter</value>
    </Parameter>
    <Parameter>
    <key>lisa.waitAfter.rsp.time</key>
    <value>Set in Step waitAfter</value>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Starting EMS server located at &quot;{{emsHome}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="waitBefore" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;String baseErrorMsg = &quot;EMS Validation Error&quot;;&#13;&#10;String baseSuccessMsg = &quot;EMS Validation Success&quot;;&#13;&#10;&#13;&#10;// Check TIBCO_EMS_HOME exists&#13;&#10;String ems_home = testExec.parseInState(emsHome).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;File f = new File(ems_home);&#13;&#10;if (!f.exists())&#13;&#10; return baseErrorMsg + &quot;: EMS Home folder (&quot; + ems_home + &quot;) does not exist.&quot;;&#13;&#10;&#13;&#10;// Check config file not empty&#13;&#10;if (configFile.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || configFile.equals(&quot;&quot;))&#13;&#10; return baseErrorMsg + &quot;: No config file specified.&quot;;&#13;&#10;&#13;&#10;// Check config file exists&#13;&#10;String configFile = testExec.parseInState(configFile).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;f = new File(configFile);&#13;&#10;if (!f.exists())&#13;&#10; return baseErrorMsg + &quot;: Config file specified does not exist.&quot;;&#13;&#10;&#13;&#10;// Ok&#13;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert107" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Validation Error</param>
</CheckResult>

    </Node>


    <Node name="waitBefore" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="startEMS" > 

<graphx>45</graphx>
<graphy>184</graphy>
<Documentation>Wait for a number of seconds</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>{{waitBeforeOnWindows}}</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>{{waitBeforeOnUnix}}</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="startEMS" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="waitAfter" > 

<graphx>425</graphx>
<graphy>197</graphy>
<cmd>{{emsHome}}/bin/tibemsd -config &quot;{{configFile}}&quot;</cmd>
<basedir>{{emsHome}}/bin</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>false</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="waitAfter" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>241</graphx>
<graphy>29</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>{{waitAfterOnWindows}}</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>{{waitAfterOnUnix}}</value>
    <name>Number of seconds to sleep on Unix platforms</name>
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

<graphx>455</graphx>
<graphy>16</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>42</graphx>
<graphy>27</graphy>
    </Node>


</TestCase>
