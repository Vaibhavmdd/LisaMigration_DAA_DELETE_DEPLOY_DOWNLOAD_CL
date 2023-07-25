<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Wed Oct 10 01:50:38 PDT 2007 -->


<TestCase name="CreateFile" version="2">
<id>b4f846b9</id>
<Documentation>Creates an empty file only if a file with this name does not yet exist.&#10;Also creates any necessary but nonexistent parent directories.&#10;Returns the file path if successfully created.</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz04MDQ5MDYwNzY=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File to be created</name>
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
    <key>lisa.createFile.rsp</key>
    <value>Set in Step createFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.createFile.rsp.time</key>
    <value>Set in Step createFile</value>
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
          next="createFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Creating file &quot;{{file}}&quot; ...</log>
    </Node>


    <Node name="createFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>100</graphx>
<graphy>0</graphy>
<script>import java.io.File;&#10;&#10;// This function creates a file&#10;createFile(String strFile) {&#10; File f = new File(strFile);&#10; &#10; if(f.exists())&#10;  return true;&#10;&#10; File parent = f.getParentFile();&#10; if (parent != null) {&#10;  if (!parent.exists()) {&#10;   if (parent.mkdirs()) {&#10;    ;&#10;   }&#10;   else {&#10;    return false;&#10;   }&#10;  }&#10; }&#10; return f.createNewFile();           &#10;}&#10;&#10;// Main&#10;//String baseSuccessMsg = &quot;File Creation Success&quot;; // Do not modify. Test engineers might assert on this string. &#10;String baseErrorMsg = &quot;File Creation Error&quot;; // Do not modify. Test engineers might assert on this string.&#10;String file = testExec.getStateString(&quot;file&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;).replace(&apos;\\&apos;, &apos;/&apos;);&#10;file = testExec.parseInState(file).replace(&apos;\\&apos;, &apos;/&apos;);&#10;&#10;try {&#10; if(createFile(file))&#10;  return file;&#10; else&#10;  return baseErrorMsg;&#10;}&#10;catch(Exception e) {&#10; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Assert107" >
<log>createFile step has thrown exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert78" >
<log>{{lisa.createFile.rsp}}</log>
<then>fail</then>
        <param>File Creation Error</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>100</graphx>
<graphy>200</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


</TestCase>
