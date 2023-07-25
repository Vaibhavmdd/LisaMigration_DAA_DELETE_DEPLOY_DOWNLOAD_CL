<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Tue Sep 18 00:32:36 PDT 2007 -->


<TestCase name="StartEngine" version="2">
<id>b3da0860</id>
<Documentation>Starts BW engine.&#10;Use &lt;&lt;null&gt;&gt; as parameter value in order not to pass the parameter</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tMTU0MzYwMDUwMw==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>bwHome</key>
    <value>{{TIBCO_BW_HOME}}</value>
    <name>BW Home</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{TIBCO_BW_HOME}}/bin</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{TIBCO_BW_HOME}}/bin/bwengine.tra</value>
    <name>Path to the tra file used to start the engine</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>Name to give this engine (overrides default of host name)</name>
    </Parameter>
    <Parameter>
    <key>p</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>Name of property file (default = Properties.cfg)</name>
    </Parameter>
    <Parameter>
    <key>q</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>Quit after specified secs</name>
    </Parameter>
    <Parameter>
    <key>s</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>Prefix used on all engine subjects (default = &lt;host&gt;.)</name>
    </Parameter>
    <Parameter>
    <key>repo</key>
    <value></value>
    <name>The repository specifier. Required.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>false</value>
    <name>Valid options are true/false. if set to true, the BW subprocess waits for the completion/shutdown of the BW Engine.  If set to true, the options waitBeforeOnWindows, waitBeforeOnUnix, waitAfterOnWindows, waitAfterOnUnix are ignored.</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the engine. Default option is false</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the engine</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>20</value>
    <name>Number of seconds to sleep on Windows platforms after starting the engine</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>30</value>
    <name>Number of seconds to sleep on Unix platforms after starting the engine</name>
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
    <key>lisa.startEngine.rsp</key>
    <value>Set in Step startEngine</value>
    </Parameter>
    <Parameter>
    <key>lisa.startEngine.rsp.time</key>
    <value>Set in Step startEngine</value>
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
    <key>lisa.getEngineOptions.rsp</key>
    <value>Set in Step getEngineOptions</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEngineOptions.rsp.time</key>
    <value>Set in Step getEngineOptions</value>
    </Parameter>
    <Parameter>
    <key>engineOptions</key>
    <value>Set in Step getEngineOptions</value>
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
    <Parameter>
    <key>lisa.checkWaitForCompletion.rsp</key>
    <value>Set in Step checkWaitForCompletion</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkWaitForCompletion.rsp.time</key>
    <value>Set in Step checkWaitForCompletion</value>
    </Parameter>
    <Parameter>
    <key>lisa.StartEngineAndWaitForCompletion.rsp</key>
    <value>Set in Step StartEngineAndWaitForCompletion</value>
    </Parameter>
    <Parameter>
    <key>lisa.StartEngineAndWaitForCompletion.rsp.time</key>
    <value>Set in Step StartEngineAndWaitForCompletion</value>
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
      <log>Starting BW engine located at &quot;{{bwHome}}&quot;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEngineOptions" > 

<graphx>7</graphx>
<graphy>198</graphy>
<Documentation>Validate BW environment</Documentation>
<script>import java.io.File;&#10;&#10;String baseErrorMsg = &quot;BW Validation Error&quot;;&#10;String baseSuccessMsg = &quot;BW Validation Success&quot;;&#10;&#10;// Check TIBCO_BW_HOME exists&#10;String bw_home = testExec.parseInState(bwHome).replace(&apos;\\&apos;,&apos;/&apos;);&#10;File f = new File(bw_home);&#10;if (!f.exists())&#10; return baseErrorMsg + &quot;: BW Home folder (&quot; + bw_home + &quot;) does not exist.&quot;;&#10;&#10;// Check working directory not empty&#10;if (startInDir.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || startInDir.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: No working directory specified.&quot;;&#10;&#10;// Check Repo not empty&#10;repo = testExec.parseInState(repo).replace(&apos;\\&apos;,&apos;/&apos;);&#10;if (repo.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) || repo.equals(&quot;&quot;))&#10; return baseErrorMsg + &quot;: No repository specified.&quot;;&#10;&#10;// Check Repo exists&#10;repo = testExec.parseInState(repo).replace(&apos;\\&apos;,&apos;/&apos;);&#10;f = new File(repo);&#10;if (!f.exists())&#10; return baseErrorMsg + &quot;: Repository specified (&quot; + repo + &quot;) does not exist.&quot;;&#10;&#10;if (!waitBeforeOnWindows.toString().equalsIgnoreCase(&quot;true&quot;)) {&#10;&#9;waitBeforeOnWindows = false;&#10;}&#9;&#10;// Ok&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert102" >
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
        <param>BW Validation Error</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Assert105" >
<log>validate has thrown Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getEngineOptions" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkWaitForCompletion" > 

<graphx>62</graphx>
<graphy>29</graphy>
<Documentation>Construct the string of bw options. &#10;It could be &quot;-name myengine -p Properties.cfg -q 10 C:/folder1/project1&quot;</Documentation>
<script>// Construct the string of bw options&#10;getEngineOptions() {&#10;String options = &quot;&quot;;&#10;&#10;if (!name.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) &amp;&amp; !name.equals(&quot;&quot;))&#10;    options += &quot;-name &quot; + name + &quot; &quot;;&#10;&#10;if (!p.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) &amp;&amp; !p.equals(&quot;&quot;))&#10;    options += &quot;-p &quot; + p + &quot; &quot;;&#10;&#10;if (!q.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) &amp;&amp; !q.equals(&quot;&quot;))&#10;    options += &quot;-q &quot; + q + &quot; &quot;;&#10;&#10;if (!s.equals(&quot;&lt;&lt;null&gt;&gt;&quot;) &amp;&amp; !s.equals(&quot;&quot;))&#10;    options += &quot;-s &quot; + s + &quot; &quot;;&#10;&#10;options += &quot; &quot; + repo;&#10;&#10;return options;&#10;}&#10;&#10;// Main&#10;return getEngineOptions();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
                <prop>engineOptions</prop>
      </Filter>

    </Node>


    <Node name="checkWaitForCompletion" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="startEngine" > 

<graphx>-1</graphx>
<graphy>-1</graphy>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultPropRegEx" name="Assert79" >
<log>Starting BW Engine with wait for completion option {{waitForCompletion}}</log>
<then>StartEngineAndWaitForCompletion</then>
        <prop>waitForCompletion</prop>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="startEngine" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>241</graphx>
<graphy>29</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{bwHome}}/bin/bwengine</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{propFile}}</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>{{engineOptions}}</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{startInDir}}</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>false</value>
    <name>Wait for the command to complete</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>{{waitBeforeOnWindows}}</value>
    <name>Number of seconds to sleep on Windows platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>{{waitBeforeOnUnix}}</value>
    <name>Number of seconds to sleep on Unix platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>{{waitAfterOnWindows}}</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>{{waitAfterOnUnix}}</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="StartEngineAndWaitForCompletion" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper2.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{bwHome}}/bin/bwengine</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{propFile}}</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>{{engineOptions}}</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{startInDir}}</value>
    <name>Execute from directory</name>
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

<graphx>296</graphx>
<graphy>198</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>152</graphx>
<graphy>304</graphy>
    </Node>


</TestCase>
