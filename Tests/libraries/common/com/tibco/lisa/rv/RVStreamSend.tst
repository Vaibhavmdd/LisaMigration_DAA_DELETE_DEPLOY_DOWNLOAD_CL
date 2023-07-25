<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Fri May 18 14:24:40 PDT 2007 -->


<TestCase name="RVStreamSend" version="2">
<id>7f2cd931</id>
<Documentation>Sends TIBCO Rendezvous message(s) on the specified subject with RVStream.&#10;&#10;Note2: Supported on Windows only.&#10;&#10;RVStream Version: 1.21&#10;&#10;Send Options&#10;------------&#10; -file  &lt;name&gt;       : publish messages from file &lt;name&gt;&#10; -speed &lt;real&gt;       : speed-up or slow-down sleep commands (see -usage)&#10; -echo               : display messages before publishing&#10; -count              : show iterator counter (see -usage)&#10;&#10; -rvtype &lt;option&gt;    : RVMSG_TYPE,    e.g. RVMSG_INT&#10;                     : rvtype, type,  e.g. INT&#10;                     : singlechar, t, e.g. i</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjVlICgzMjM1KSZub2Rlcz0tMTA3ODc1MTk0NA==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>service</key>
    <value></value>
    <name>Service</name>
    </Parameter>
    <Parameter>
    <key>network</key>
    <value></value>
    <name>Network</name>
    </Parameter>
    <Parameter>
    <key>daemon</key>
    <value></value>
    <name>Daemon</name>
    </Parameter>
    <Parameter>
    <key>sendOptions</key>
    <value>-srv</value>
    <name>Send options</name>
    </Parameter>
    <Parameter>
    <key>subject</key>
    <value>test.serge</value>
    <name>Subject for the message(s)</name>
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
    <key>lisa.rvStream.rsp</key>
    <value>Set in Step rvStream</value>
    </Parameter>
    <Parameter>
    <key>lisa.rvStream.rsp.time</key>
    <value>Set in Step rvStream</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step rvStream</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step rvStream</value>
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
    <Parameter>
    <key>lisa.validateOS.rsp</key>
    <value>Set in Step validateOS</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateOS.rsp.time</key>
    <value>Set in Step validateOS</value>
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
          next="validateOS" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>RVStream parameters:&#10;service: {{service}}&#10;network: {{network}}&#10;daemon: {{daemon}}&#10;Listen: {{listenOptions}}&#10;subject: {{subject}}&#10;</log>
    </Node>


    <Node name="validateOS" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>// The Utilities class has several methods for detecting&#10;// the host operating system:&#10;// Utilities.isWindows():boolean&#10;// Utilities.isUnix():boolean&#10;// Utilities.isOSX():boolean&#10;String errorMsgBase = &quot;RVStream Validation Error&quot;;&#10;if (!com.itko.util.Utilities.isWindows()) {&#10;  return errorMsgBase + &quot;: This sub-process is supported on Windows only&quot;;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert84" >
<log>{{lisa.validateOS.rsp}}</log>
<then>fail</then>
        <param>RVStream Validation Error</param>
</CheckResult>

    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="rvStream" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>return source(TIBCO_COMMON_LIBRARY + &quot;/com/tibco/lisa/rv/RVValidation.bsh&quot;);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert87" >
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
        <param>RV Validation Error</param>
</CheckResult>

    </Node>


    <Node name="rvStream" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<cmd>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv/rvstream -service &quot;{{service}}&quot; -network &quot;{{network}}&quot; -daemon &quot;{{daemon}}&quot; -send &quot;{{subject}}&quot; {{sendOptions}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv</basedir>
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

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


</TestCase>
