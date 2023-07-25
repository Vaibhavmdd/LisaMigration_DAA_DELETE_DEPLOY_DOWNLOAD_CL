<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Tue Aug 05 14:09:25 PDT 2008 -->


<TestCase name="StopEMSServer" version="2">
<id>6af84130</id>
<Documentation>Shutdown EMS Server</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjAuNSAoNDY5Nykmbm9kZXM9LTExODAwNzgxMzg=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>emsHome</key>
    <value>{{TIBCO_EMS_HOME}}</value>
    <name>EMS Home</name>
    </Parameter>
    <Parameter>
    <key>server</key>
    <value>tcp://localhost:7222</value>
    <name>Server to connect. For instance tcp://localhost:7222 or ssl://localhost:7243</name>
    </Parameter>
    <Parameter>
    <key>user</key>
    <value>admin</value>
    <name>User name to connect to server. Use &lt;&lt;null&gt;&gt; in order to not pass any user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>Password to connect to server. Use &lt;&lt;null&gt;&gt; in order to not pass any password</name>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSParameters.rsp</key>
    <value>Set in Step getEMSParameters</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSParameters.rsp.time</key>
    <value>Set in Step getEMSParameters</value>
    </Parameter>
    <Parameter>
    <key>EMSParameters</key>
    <value>Set in Step getEMSParameters</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopEMS.rsp</key>
    <value>Set in Step stopEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopEMS.rsp.time</key>
    <value>Set in Step stopEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step stopEMS</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step stopEMS</value>
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
      <log>Shutting down EMS server located at &quot;{{emsHome}}&quot; ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSParameters" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#10;&#10;String baseErrorMsg = &quot;EMS Validation Error&quot;;&#10;String baseSuccessMsg = &quot;EMS Validation Success&quot;;&#10;&#10;// Check TIBCO_EMS_HOME exists&#10;String ems_home = testExec.parseInState(emsHome).replace(&apos;\\&apos;,&apos;/&apos;);&#10;File f = new File(ems_home);&#10;if (!f.exists())&#10; return baseErrorMsg + &quot;: EMS Home folder (&quot; + ems_home + &quot;) does not exist.&quot;;&#10;&#10;// Check server not empty&#10;if (server.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || server.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: No server specified.&quot;;&#10;&#10;// Ok&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert161" >
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
        <param>EMS Validation Error</param>
</CheckResult>

    </Node>


    <Node name="getEMSParameters" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="stopEMS" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Get the EMS parameters in order for the EMS admin tool to connect to the server.&#10;It can be sometinh like &quot;-server tcp://localhost:7222 -user admin -password secret&quot;</Documentation>
<onerror>fail</onerror>
<script>getEMSParameters() {&#10; String parameters = &quot;&quot;;&#10;&#10; server = (&quot;{{server}}&quot;.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || &quot;{{server}}&quot;.equals(&quot;&quot;))?&quot;tcp://localhost:7222&quot;:&quot;{{server}}&quot;;&#10; parameters += &quot;-server &quot; + server;&#10;&#10; if (!(&quot;{{user}}&quot;.equals(&quot;&lt;&lt;null&gt;&gt;&quot;)) &amp;&amp; !(&quot;{{user}}&quot;.equals(&quot;&quot;)))&#10;  parameters += &quot; -user {{user}}&quot; ;&#10;&#10; if (!(&quot;{{password}}&quot;.equals(&quot;&lt;&lt;null&gt;&gt;&quot;)) &amp;&amp; !(&quot;{{password}}&quot;.equals(&quot;&quot;)))&#10;  parameters += &quot; -password {{password}}&quot;;&#10;&#10; return parameters;&#10;}&#10;&#10;return getEMSParameters();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>EMSParameters</prop>
      </Filter>

    </Node>


    <Node name="stopEMS" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>425</graphx>
<graphy>197</graphy>
<Documentation>- Start EMS Admin tool&#10;- Connect to the EMS server&#10;- tell EMS Admin tool to execute shutdown command&#10;&#10;{{EMSParameters}} can be something like this &quot;-server tcp://localhost:7222 -user admin -password secret&quot;&#10;StopEMSServer.conf contains the shutdown command.</Documentation>
<cmd>{{emsHome}}/bin/tibemsadmin {{EMSParameters}} -script &quot;{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/StopEMSServer.conf&quot;</cmd>
<basedir>{{emsHome}}/bin</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>120</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultContains" name="Assert125" >
<log>{{lisa.stopEMS.rsp}}</log>
<then>fail</then>
        <param>Disconnected due to server shutdown</param>
</CheckResult>

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
