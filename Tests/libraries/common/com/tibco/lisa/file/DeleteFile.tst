<?xml version="1.0" ?>

<TestCase name="DeleteFile" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
</meta>

<id>65476564</id>
<Documentation>Delete file or directory. &#13;&#10;Recursive deletion occurs on directory.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTEwMzgxOTgyOTg=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File or directory to be deleted</name>
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
    <key>lisa.command.exit.code</key>
    <value></value>
    <name>lisa.command.exit.code</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value></value>
    <name>lisa.command.pid_handle</name>
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
    <key>lisa.executeOnUnix.rsp</key>
    <value></value>
    <name>lisa.executeOnUnix.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.executeOnUnix.rsp.time</key>
    <value></value>
    <name>lisa.executeOnUnix.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.executeOnWindows.rsp</key>
    <value></value>
    <name>lisa.executeOnWindows.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.executeOnWindows.rsp.time</key>
    <value></value>
    <name>lisa.executeOnWindows.rsp.time</name>
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
    <Parameter>
    <key>lisa.whichPlatform.rsp</key>
    <value></value>
    <name>lisa.whichPlatform.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.whichPlatform.rsp.time</key>
    <value></value>
    <name>lisa.whichPlatform.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="65476564-Log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteFile" > 

<log>Deleting {{file}} ...</log>
    </Node>


    <Node name="deleteFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="65476564-deleteFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert78" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.deleteFile.rsp}}</log>
<then>whichPlatform</then>
<valueToAssertKey></valueToAssertKey>
        <param>Delete File Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;// This function delete a file or directory recursively&#13;&#10;deleteFile(String strFile) {&#13;&#10;&#13;&#10; File f = new File(strFile);&#13;&#10; String[] strChildren = null;&#13;&#10; boolean deletionOk = false;&#13;&#10; &#13;&#10; if(!f.exists())&#13;&#10;  return true;&#13;&#10;              &#13;&#10; if (f.isDirectory()) {&#13;&#10;  // Get children&#13;&#10;  strChildren = f.list();            &#13;&#10;  // Go through each child&#13;&#10;  for (int i = 0; i &lt; strChildren.length; i++) {&#13;&#10;   deletionOk = deleteFile(new File(f, strChildren[i]).getAbsolutePath());&#13;&#10;   if (!deletionOk) {&#13;&#10;    return false;&#13;&#10;   }&#13;&#10;  }&#13;&#10; }&#13;&#10; // The directory is now empty so delete it&#13;&#10; return f.delete();&#13;&#10;}&#13;&#10;&#13;&#10;// Main&#13;&#10;String baseSuccessMsg = &quot;Delete File Success&quot;; // Do not modify. Assertions might exist on this string.&#13;&#10;String baseErrorMsg = &quot;Delete File Error&quot;; // Do not modify. Assertions might exist on this string.&#13;&#10;fileS = testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;try {&#13;&#10; File fileF = new File(fileS);&#13;&#10; String file = fileF.getCanonicalPath();&#13;&#10; if(deleteFile(file))&#13;&#10;  return baseSuccessMsg + &quot;: &quot; + file;&#13;&#10; else&#13;&#10;  return baseErrorMsg;&#13;&#10;}&#13;&#10;catch(Exception e) {&#13;&#10; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#13;&#10;}</script>
    </Node>


    <Node name="whichPlatform" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="65476564-whichPlatform" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="executeOnUnix" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert144" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert144] fired true of type Result as String Contains Given String</log>
<then>executeOnWindows</then>
<valueToAssertKey></valueToAssertKey>
        <param>Windows</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10;    return &quot;Windows&quot;;&#13;&#10;else &#13;&#10;    return &quot;Unix&quot;;</script>
    </Node>


    <Node name="executeOnUnix" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="65476564-executeOnUnix" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert180" type="com.itko.lisa.test.CheckResultAny">
<log>Unix deletion failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
</CheckResult>

<cmd>/bin/rm -rf {{=testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;)}}</cmd>
<basedir>{{user.home}}</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="executeOnWindows" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="65476564-executeOnWindows" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert264" type="com.itko.lisa.test.CheckResultContains">
<log>The system cannot find the file specified</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>The system cannot find the file specified</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert137" type="com.itko.lisa.test.CheckResultContains">
<log>The directory name is invalid</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>The directory name is invalid</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert172" type="com.itko.lisa.test.CheckResultContains">
<log>The process cannot access the file because it is being used by another process</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>The process cannot access the file because it is being used by another process</param>
</CheckResult>

<cmd>{{=(((new File(testExec.parseInState(file))).isDirectory())?&quot;rmdir /s /q&quot;:&quot;del /f /s /q&quot;)}} {{=testExec.parseInState(file).replace(&apos;/&apos;,&apos;\\&apos;)}}</cmd>
<basedir>{{user.home}}</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>true</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="339879FE640811EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="65476564-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="65476564-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
