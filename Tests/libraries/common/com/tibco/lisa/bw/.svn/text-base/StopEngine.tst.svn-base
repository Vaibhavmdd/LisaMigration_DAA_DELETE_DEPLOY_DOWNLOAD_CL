<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Tue Jul 31 00:45:20 PDT 2007 -->


<TestCase name="StopEngine" version="2">
<id>97450539</id>
<Documentation>Stops BW engine.&#10;The EngineCommandReceiver process located in /com/tibco/lisa/bw/ folder must be in your BW project for this sub-process to work.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tNDg3MDMxNzM3</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>Host where bw engine is running to send the shutdown command</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>6543</value>
    <name>Port to connect</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.sendShutdownCommand.rsp</key>
    <value>Set in Step sendShutdownCommand</value>
    </Parameter>
    <Parameter>
    <key>lisa.sendShutdownCommand.rsp.time</key>
    <value>Set in Step sendShutdownCommand</value>
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
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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
      <log>Stopping BW engine located on &quot;{{host}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="sendShutdownCommand" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>String baseErrorMsg = &quot;BW Validation Error&quot;;&#10;&#10;// Check Host not empty&#10;if (&quot;{{host}}&quot;.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || &quot;{{host}}&quot;.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: Host cannot be empty.&quot;;&#10;&#10;// Check Port not empty&#10;if (&quot;{{port}}&quot;.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || &quot;{{port}}&quot;.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: Port cannot be empty.&quot;;&#10;&#10;// Ok&#10;return &quot;BW Validation Success&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert332" >
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
        <param>BW Validation Error</param>
</CheckResult>

    </Node>


    <Node name="sendShutdownCommand" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Send Shutdown command to BW engine</Documentation>
<url>http://{{host}}:{{port}}/shutdown</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultHTTPResponseCode" name="Assert282" >
<log>BW HTTP response other than 200</log>
<then>fail</then>
        <param>200</param>
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
