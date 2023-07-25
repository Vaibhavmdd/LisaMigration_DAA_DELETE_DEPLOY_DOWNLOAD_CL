<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Sep 11 15:56:52 PDT 2014 -->


<TestCase name="GetHostVersion" version="2">
<id>aa488cd</id>
<Documentation>Get HostVersion by tibcohost describeHost&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTExODAxNTUwMDE=</sig>
<rootNode>describeHost</rootNode>
<subprocess>true</subprocess>

<initState>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTibcoHost.rsp</key>
    <value>Set in Step startTibcoHost</value>
    </Parameter>
    <Parameter>
    <key>simulatorPort</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.describeHost.rsp</key>
    <value>Set in Step describeHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.describeHost.rsp.time</key>
    <value>Set in Step describeHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.getVersion.rsp</key>
    <value>Set in Step getVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.getVersion.rsp.time</key>
    <value>Set in Step getVersion</value>
    </Parameter>
    <Parameter>
    <key>adminVersion</key>
    <value>Set in Step getVersion</value>
    </Parameter>
    <Parameter>
    <key>myHostName</key>
    <value>Set in Step describeHost</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
    <Parameter>
    <key>simulatorPort</key>
    <value>2001</value>
    <name>Name</name>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="describeHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getVersion" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{tibcoHostinstance}}/bin/tibcohost</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value>describeHost</value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{tibcoHostinstance}}/bin/tibcohost.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value></value>
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
    <value>500</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>1000</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.describeHost.rsp</valueToFilterKey>
      <prop>myHostName</prop>
      </Filter>

    </Node>


    <Node name="getVersion" log="get the simulator for the host on which tibcohost should be stopped."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>366</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>import java.util.regex.Matcher;&#13;&#10;import java.util.regex.Pattern;&#13;&#10;&#13;&#10;if (myHostName == null || myHostName.equals(&quot;&quot;))&#13;&#10; throw new Exception(&quot;describeHost result is empty!&quot;);&#13;&#10;&#13;&#10;String pattern = &quot;Host platform version: (3\\.3\\.\\d+.HF\\d+)(.*)&quot;;&#13;&#10;&#13;&#10;// Create a Pattern object&#13;&#10;Pattern r = Pattern.compile(pattern);&#13;&#10;      &#13;&#10;&#13;&#10;// Now create matcher object.&#13;&#10;Matcher m = r.matcher(myHostName);&#13;&#10;if (m.find()) {&#9;    &#9; &#13;&#10;    return  m.group(1);&#9;     &#13;&#10;} else {&#13;&#10;       throw new Exception(&quot;Can not find version!&quot;);&#13;&#10;}&#13;&#10;return null;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getVersion.rsp</valueToFilterKey>
      <prop>adminVersion</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Getting Simulators has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>488</graphx>
<graphy>976</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>674</graphx>
<graphy>938</graphy>
    </Node>


</TestCase>
