<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Nov 09 15:42:12 PST 2021 -->


<TestCase name="UpdateJavaSecurityParam" version="2">
<id>19fb6582</id>
<Documentation>This is about the AMX-18474&#13;&#10;Open java.security file overwrite &#13;&#10;updated value is working with &quot;DH keySize &lt; 758&quot;&#13;&#10;jdk.tls.disabledAlgorithms=SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, DH keySize &lt; 758, EC keySize &lt; 224, 3DES_EDE_CBC, anon, NULL,include jdk.disabled.namedCurves&#13;&#10;Original value is not working&#13;&#10;jdk.tls.disabledAlgorithms=SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, DH keySize &lt; 1024, EC keySize &lt; 224, 3DES_EDE_CBC, anon, NULL,include jdk.disabled.namedCurves</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0yMDg2MDAwODgx</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>key</key>
    <value></value>
    <name>Key for property</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value></value>
    <name>Value for property</name>
    </Parameter>
    <Parameter>
    <key>TIBCO_JAVA_HOME</key>
    <value></value>
    <name>TIBCO_JAVA_HOME</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Steps.rsp</key>
    <value>Set in Step Steps</value>
    </Parameter>
    <Parameter>
    <key>lisa.Steps.rsp.time</key>
    <value>Set in Step Steps</value>
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
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
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
          next="Steps" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>To See the JRE Versoin in {{TIBCO_JAVA_HOME}}&#13;&#10;</log>
    </Node>


    <Node name="Steps" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>0</graphx>
<graphy>121</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileNotFoundException;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.IOException;&#13;&#10;import java.util.Properties;&#13;&#10;&#13;&#10;String jreHome = testExec.getStateString(&quot;TIBCO_JAVA_HOME&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;String fileName = jreHome+ &quot;/lib/security/java.security&quot;;&#13;&#10;String key = testExec.getStateString(&quot;key&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;String value = testExec.getStateString(&quot;value&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;);&#13;&#10;&#13;&#10;&#13;&#10;Properties traP = new Properties();&#13;&#10;try {&#13;&#10;&#9;traP.load(new FileInputStream(fileName));&#13;&#10;&#9;FileOutputStream fos = new FileOutputStream(fileName);&#13;&#10;&#9;traP.setProperty(key, value);&#13;&#10;&#9;traP.store(fos, &quot;Adding external parameters&quot;);&#13;&#10;    return true;&#13;&#10;} catch (FileNotFoundException e) {&#13;&#10;&#9;return e.toString();&#13;&#10;} catch (IOException e) {&#13;&#10;&#9;return e.toString();&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>continue (quiet)</then>
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

<graphx>244</graphx>
<graphy>122</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>122</graphx>
<graphy>244</graphy>
    </Node>


</TestCase>
