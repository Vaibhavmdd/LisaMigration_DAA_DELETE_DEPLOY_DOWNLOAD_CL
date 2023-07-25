<?xml version="1.0" ?>

<TestCase name="ExtractZipArchive" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
</meta>

<id>68842f12</id>
<Documentation>This sub process extracts a given zip archive to a destination folder. &#13;&#10;If the destination folder does not exist, it is created automatically.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNzMwMDU2MTUx</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>zipArchivePath</key>
    <value></value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value></value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>300</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>comm</key>
    <value></value>
    <name>comm</name>
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
    <key>lisa.generateCommandToUnzip.rsp</key>
    <value></value>
    <name>lisa.generateCommandToUnzip.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.generateCommandToUnzip.rsp.time</key>
    <value></value>
    <name>lisa.generateCommandToUnzip.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>lisa.log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.unzipArchive.rsp</key>
    <value></value>
    <name>lisa.unzipArchive.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.unzipArchive.rsp.time</key>
    <value></value>
    <name>lisa.unzipArchive.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="68842f12-log" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="generateCommandToUnzip" > 

<log>Extracting {{zipArchivePath}} into {{destinationFolder}} ...</log>
    </Node>


    <Node name="generateCommandToUnzip" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="68842f12-generateCommandToUnzip" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="unzipArchive" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>comm</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Zip File Exist Assert" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Zip extraction validation error</param>
</CheckResult>

<onerror>abort</onerror>
<script>String baseErrorMsg = &quot;Zip extraction validation error&quot;;&#13;&#10;&#13;&#10;// Verify that zip file exists&#13;&#10;String zipArchivePath = testExec.parseInState(zipArchivePath).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;String destinationFolder = testExec.parseInState(destinationFolder).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;f = new File(zipArchivePath);&#13;&#10;if (!f.exists())&#13;&#10;return baseErrorMsg + &quot;: Zip archive (&quot; + zipArchivePath + &quot;) does not exist.&quot;;&#13;&#10;&#13;&#10;// Replace &quot;\&quot; with &quot;/&quot; in the output folder path&#13;&#10;/*String destinationFolder = testExec.parseInState(destinationFolder).replace(&apos;\\&apos;,&apos;/&apos;); &#13;&#10;f = new File(destinationFolder);&#13;&#10;if (!f.exists())&#13;&#10;return baseErrorMsg + &quot;: Destination folder (&quot; + destinationFolder + &quot;) does not exist.&quot;;&#13;&#10;&#13;&#10;// Destination folder must be a directory.&#13;&#10;if (!f.isDirectory())&#13;&#10;{&#13;&#10; return baseErrorMsg + &quot;: Destination folder (&quot; + destinationFolder + &quot;) must be a directory.&quot;;&#13;&#10;}&#13;&#10;*/&#13;&#10;// determine the executable extension (G11n team had issue without this).&#13;&#10;if (com.itko.util.Utilities.isWindows())&#13;&#10; exe = &quot;.exe&quot;;&#13;&#10;else &#13;&#10; exe = &quot;&quot;;&#13;&#10;&#13;&#10;// Use TIBCO_JAVA_HOME if exists&#13;&#10;f2 = new File(TIBCO_JAVA_HOME);&#13;&#10;if (f2.exists()) {&#13;&#10; java = TIBCO_JAVA_HOME.replace(&apos;\\&apos;,&apos;/&apos;) + &quot;/bin/java&quot; + exe;&#13;&#10; // this takes care of blank space in path.&#13;&#10;// if (com.itko.util.Utilities.isWindows()) {&#13;&#10;  //java = java.replaceAll(&quot;. [a-zA-Z0-9-_ )(.]*&quot;,&quot;~1&quot;); // return DOS-like folder name&#13;&#10;//  java = &quot;\&quot;&quot; + java.replace(&apos;/&apos;,&apos;\\&apos;) + &quot;\&quot;&quot;;&#13;&#10;// }&#13;&#10;}&#13;&#10;else {&#13;&#10; java = java_home.replace(&apos;\\&apos;,&apos;/&apos;) + &quot;/bin/java&quot; + exe;&#13;&#10;}&#13;&#10;/*&#13;&#10;else {&#13;&#10; java = &quot;java&quot; + exe; // just java, hopefully it will work!&#13;&#10;}&#13;&#10;*/&#13;&#10;//Construct command to issue for unzipping the archive&#13;&#10;String command = &quot;&quot;;&#13;&#10;if (com.itko.util.Utilities.isWindows()) { // handle blank space in path&#13;&#10;  command = java + &quot; -Xms64m -Xmx512m -jar util.zip \&quot;&quot;+zipArchivePath+&quot;\&quot; \&quot;&quot;+destinationFolder+&quot;\&quot;&quot;;&#13;&#10;}&#13;&#10;else {&#13;&#10; command = java + &quot; -Xms64m -Xmx512m -jar util.zip &quot; + zipArchivePath + &quot; &quot; + destinationFolder;&#13;&#10;}&#13;&#10;return command;</script>
    </Node>


    <Node name="unzipArchive" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="68842f12-unzipArchive" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<cmd>{{comm}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/lib</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>{{timeout}}</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
    <Parameter>
    <key>0</key>
    <value>end</value>
    </Parameter>
</exitCodes>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="83E9668664AB11EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="68842f12-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="68842f12-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
