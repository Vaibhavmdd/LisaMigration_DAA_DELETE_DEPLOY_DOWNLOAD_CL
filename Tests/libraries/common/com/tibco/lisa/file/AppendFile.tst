<?xml version="1.0" ?>

<TestCase name="AppendFile" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/17/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/17/2022" host="na2devasgaks01" />
</meta>

<id>1717ffb4</id>
<Documentation>Change the contents of text file in its entirety, overwriting any existing text.&#10;Returns the file path.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNjgyNTExMTk2</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File to write into</name>
    </Parameter>
    <Parameter>
    <key>content</key>
    <value></value>
    <name>Text content to write in the file</name>
    </Parameter>
    <Parameter>
    <key>createIfNotExist</key>
    <value>false</value>
    <name>If set to true, file is created if it does not exist.</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
    <Parameter>
    <key>native2ascii</key>
    <value>false</value>
    <name>If set to true, converts the content from native encoding to ASCII with escaped Unicode</name>
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
    <key>lisa.checkCreateFile.rsp</key>
    <value></value>
    <name>lisa.checkCreateFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkCreateFile.rsp.time</key>
    <value></value>
    <name>lisa.checkCreateFile.rsp.time</name>
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
    <Parameter>
    <key>lisa.native2Ascii.rsp</key>
    <value></value>
    <name>lisa.native2Ascii.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.native2Ascii.rsp.time</key>
    <value></value>
    <name>lisa.native2Ascii.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value></value>
    <name>lisa.success.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value></value>
    <name>lisa.success.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.writeFile.rsp</key>
    <value></value>
    <name>lisa.writeFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.writeFile.rsp.time</key>
    <value></value>
    <name>lisa.writeFile.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="1717ffb4-Log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkCreateFile" > 

<log>Writing in file &quot;{{file}}&quot; ...&#10;</log>
    </Node>


    <Node name="checkCreateFile" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          uid="1717ffb4-checkCreateFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="writeFile" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert109" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>createIfNotExist parameter is set to true</log>
<then>checkFileExists</then>
<valueToAssertKey></valueToAssertKey>
        <prop>createIfNotExist</prop>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="writeFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="1717ffb4-writeFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="success" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert170" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>writeFile step has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert169" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.writeFile.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>File Write Error</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert207" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>Native to Ascii option selected</log>
<then>native2Ascii</then>
<valueToAssertKey></valueToAssertKey>
        <prop>native2ascii</prop>
        <param>true</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.*;&#13;&#10;&#13;&#10;String baseErrorMsg = &quot;File Write Error&quot;; // Do not modify. Test engineers might assert on this string.&#13;&#10;String baseSuccessMsg = &quot;File Write Success&quot;; // Do not modify. Test engineers might assert on this string.&#13;&#10;String strFile = testExec.parseInState(file).replace(&apos;\\&apos;, &apos;/&apos;);&#13;&#10;&#13;&#10;File fileHandle = new File(strFile);&#13;&#10;if (!fileHandle.exists())&#13;&#10;  return baseErrorMsg + &quot;: File &apos;&quot; + fileHandle + &quot;&apos; does not exist.&quot;;&#13;&#10;if (!fileHandle.isFile())&#13;&#10;  return baseErrorMsg + &quot;: &apos;&quot; + fileHandle + &quot;&apos; is not a file.&quot;;&#13;&#10;if (!fileHandle.canWrite())&#13;&#10;  return baseErrorMsg + &quot;: Cannot write in file &apos;&quot; + fileHandle + &quot;&apos;.&quot;;&#13;&#10;&#13;&#10;if (encoding.equals(&quot;&quot;)) {&#13;&#10;        BufferedWriter output = new BufferedWriter(new OutputStreamWriter&#13;&#10;                                 (new FileOutputStream(fileHandle,true)));&#13;&#10;&#9;output.newLine();&#13;&#10;    output.append(content);&#13;&#10;&#9;output.close();&#13;&#10;&#9;return baseSuccessMsg + &quot;: File &apos;&quot; + fileHandle + &quot;&apos; now contains: \n&quot; + content;&#13;&#10;} else {&#13;&#10;&#9;BufferedWriter output = new BufferedWriter(new OutputStreamWriter&#13;&#10;                                 (new FileOutputStream(fileHandle,true),encoding));&#13;&#10;    output.newLine();&#13;&#10;&#9;output.append(content);&#13;&#10;&#9;output.close();&#13;&#10;&#9;return baseSuccessMsg + &quot;: File &apos;&quot; + fileHandle + &quot;&apos; now contains: \n&quot; + content;&#13;&#10;}</script>
    </Node>


    <Node name="success" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="1717ffb4-success" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;);</script>
    </Node>


    <Node name="checkFileExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="1717ffb4-checkFileExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createFile" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert161" type="com.itko.lisa.test.CheckResultContains">
<log>File {{file}} already exists</log>
<then>writeFile</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{file}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="1717ffb4-createFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="writeFile" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{file}}</value>
    <name>File to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="native2Ascii" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="1717ffb4-native2Ascii" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="success" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Native2Ascii.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>inputFile</key>
    <value>{{file}}</value>
    <name>The full path of the file to convert</name>
    </Parameter>
    <Parameter>
    <key>outputFile</key>
    <value>{{file}}</value>
    <name>The full path of the output file</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>{{encoding}}</value>
    <name>The native encoding the input file is in (default is the default encoding for the JVM)</name>
    </Parameter>
    <Parameter>
    <key>reverse</key>
    <value>false</value>
    <name>Reverse the sense of the conversion, i.e. convert from ASCII to native</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="2B9BC942671411ED940E506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="1717ffb4-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="1717ffb4-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
