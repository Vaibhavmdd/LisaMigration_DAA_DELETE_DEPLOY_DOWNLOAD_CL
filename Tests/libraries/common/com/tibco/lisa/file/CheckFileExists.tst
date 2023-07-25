<?xml version="1.0" ?>

<TestCase name="CheckFileExist" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/18/2022" host="na2devasgaks01" />
</meta>

<id>fd735148</id>
<Documentation>Checks whether the file or directory exists.&#10;Return &quot;true&quot; or &quot;false&quot;.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTUzNDQ5OTEyOA==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File or directory to be checked for existence</name>
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
    <key>lisa.checkFileExists.rsp</key>
    <value></value>
    <name>lisa.checkFileExists.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkFileExists.rsp.time</key>
    <value></value>
    <name>lisa.checkFileExists.rsp.time</name>
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
          uid="fd735148-Log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkFileExists" > 

<log>Checking existence of file &quot;{{file}}&quot; ...</log>
    </Node>


    <Node name="checkFileExists" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="fd735148-checkFileExists" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert78" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.checkFileExists.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>File Check Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;// This function checks for file existence&#13;&#10;checkFileExists(String strFile) {&#13;&#10; File f = new File(strFile);&#13;&#10; return f.exists();         &#13;&#10;}&#13;&#10;&#13;&#10;// Main &#13;&#10;String baseErrorMsg = &quot;File Check Error&quot;; // Do not modify. Test engineers might assert on this string.&#13;&#10;file = testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;try {&#13;&#10; return checkFileExists(file);&#13;&#10;}&#13;&#10;catch(Exception e) {&#13;&#10; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#13;&#10;}</script>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="fd735148-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="fd735148-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="61CE32BC640911EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
