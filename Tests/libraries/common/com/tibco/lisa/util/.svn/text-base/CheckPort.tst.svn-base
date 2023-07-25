<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Fri Feb 08 17:45:43 PST 2008 -->


<TestCase name="CheckPort" version="2">
<id>405b0594</id>
<Documentation>Test a particular port.&#10;Return true if port is in use, false otherwise.&#10;This is a convenience for checking things like:&#10;- Testing whether a DB is running.&#10;- A particular node is started.&#10;- ...</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tMTY1NDE5NjY3</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Name of the host</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port number to be checked</name>
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
    <key>lisa.checkPort.rsp</key>
    <value>Set in Step checkPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPort.rsp.time</key>
    <value>Set in Step checkPort</value>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
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
          next="checkPort" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Checking port {{port}} on host {{host}} ...</log>
    </Node>


    <Node name="checkPort" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>import java.net.Socket;&#10;&#10;//This script introspects the port and examines if anything is running on the port.&#10;try&#10;{&#10;Socket s=new Socket(host,port);&#10;return true;&#10;}&#10;catch (Exception e)&#10;{&#10;return false;&#10;}&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Assert87" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="fail" log="Port {{port}} occupied."
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
