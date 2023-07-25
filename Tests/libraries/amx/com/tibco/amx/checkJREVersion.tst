<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Dec 19 10:49:19 CST 2012 -->


<TestCase name="checkJREVersion" version="2">
<id>ae6cf310</id>
<Documentation>To see whether the which JRE is used in Lisa automation&#13;&#10;&#13;&#10;Default compare version is 1.6.0</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNDg2MjczMjY5</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>TIBCO_JAVA_HOME</key>
    <value></value>
    <name>TIBCO JRE Version</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
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
    <key>lisa.CheckJREVersion.rsp</key>
    <value>Set in Step CheckJREVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckJREVersion.rsp.time</key>
    <value>Set in Step CheckJREVersion</value>
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
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="CheckJREVersion" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>To See the JRE Versoin in {{TIBCO_JAVA_HOME}}&#13;&#10;</log>
    </Node>


    <Node name="CheckJREVersion" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>String jreHome = testExec.getStateString(&quot;TIBCO_JAVA_HOME&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;&#9;&#13;&#10;String jre7 = &quot;1.7.0&quot;;&#13;&#10;String jre6 = &quot;1.6.0&quot;;&#13;&#10;&#9;&#9;&#13;&#10;String actualVersion_32 = jreHome.substring(jreHome.lastIndexOf(&quot;tibcojre&quot;) + 9);&#13;&#10;String actualVersion_64 = jreHome.substring(jreHome.lastIndexOf(&quot;tibcojre64&quot;) + 11);&#13;&#10;&#9;&#9;&#13;&#10;if(actualVersion_32.equalsIgnoreCase(&quot;&quot;))&#13;&#10;&#9;if(actualVersion_64.equalsIgnoreCase(&quot;&quot;))&#13;&#10;&#9;&#9;System.out.println(&quot;Please check your TIBCO JAVA HOME....&quot;);&#13;&#10;&#9;&#9;&#13;&#10;if(!actualVersion_32.equalsIgnoreCase(&quot;&quot;) &amp;&amp; actualVersion_32.equalsIgnoreCase(jre6))&#13;&#10;&#9;return &quot;JAVA6&quot;;&#13;&#10;&#9;&#9;&#13;&#10;if(!actualVersion_64.equalsIgnoreCase(&quot;&quot;) &amp;&amp; actualVersion_64.equalsIgnoreCase(jre6))&#13;&#10;&#9;return &quot;JAVA6&quot;;&#13;&#10;&#13;&#10;if(!actualVersion_32.equalsIgnoreCase(&quot;&quot;) &amp;&amp; actualVersion_32.equalsIgnoreCase(jre7))&#13;&#10;&#9;return &quot;JAVA7&quot;;&#13;&#10;&#13;&#10;if(!actualVersion_64.equalsIgnoreCase(&quot;&quot;) &amp;&amp; actualVersion_64.equalsIgnoreCase(jre7))&#13;&#10;&#9;return &quot;JAVA7&quot;;&#13;&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
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
