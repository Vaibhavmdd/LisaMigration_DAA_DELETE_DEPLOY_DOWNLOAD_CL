<?xml version="1.0" ?>

<TestCase name="CreateDirectory" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
</meta>

<id>4144f1ec</id>
<Documentation>Creates a directory, including any necessary but nonexistent parent directories.&#10;Returns the directory path if successfully created.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0yMDYzNzkwMzE=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>directory</key>
    <value></value>
    <name>Directory to be created</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value></value>
    <name>lisa.Log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value></value>
    <name>lisa.Log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value></value>
    <name>lisa.continue.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value></value>
    <name>lisa.continue.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.createDirectory.rsp</key>
    <value></value>
    <name>lisa.createDirectory.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.createDirectory.rsp.time</key>
    <value></value>
    <name>lisa.createDirectory.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.createFile.rsp</key>
    <value></value>
    <name>lisa.createFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.createFile.rsp.time</key>
    <value></value>
    <name>lisa.createFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.deleteFile.rsp</key>
    <value></value>
    <name>lisa.deleteFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.deleteFile.rsp.time</key>
    <value></value>
    <name>lisa.deleteFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value></value>
    <name>lisa.end.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value></value>
    <name>lisa.end.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value></value>
    <name>lisa.fail.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value></value>
    <name>lisa.fail.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="4144f1ec-Log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createDirectory" > 

<log>Creating directory &quot;{{directory}}&quot; ...</log>
    </Node>


    <Node name="createDirectory" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="4144f1ec-createDirectory" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert78" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.createDirectory.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Directory Creation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#10;&#10;// This function create a directory&#10;createDirectory(String strFile) {&#10; File f = new File(strFile);&#10; &#10; if(f.exists())&#10;  return true;  &#10; else&#10;  return f.mkdirs();           &#10;}&#10;&#10;// Main&#10;//String baseSuccessMsg = &quot;Directory Creation Success&quot;; // Do not modify. Test engineers might assert on this string. &#10;String baseErrorMsg = &quot;Directory Creation Error&quot;; // Do not modify. Test engineers might assert on this string.&#10;String dir = testExec.getStateString(&quot;directory&quot;, &quot;&lt;&lt;null&gt;&gt;&quot;).replace(&apos;\\&apos;, &apos;/&apos;);&#10;dir = testExec.parseInState(dir).replace(&apos;\\&apos;, &apos;/&apos;);&#10;try {&#10; if(createDirectory(dir))&#10;  return dir;&#10; else&#10;  return baseErrorMsg;&#10;}&#10;catch(Exception e) {&#10; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#10;}</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="8193FA9A64AA11EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="4144f1ec-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="4144f1ec-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
