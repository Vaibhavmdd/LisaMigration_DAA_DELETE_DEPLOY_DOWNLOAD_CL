<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Wed Feb 04 18:38:11 PST 2009 -->


<TestCase name="CreateZipArchive" version="2">
<id>38739fe</id>
<Documentation>This sub process creates a zip file of the given source folder to a specified destination. &#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjAuNSAoNDY5Nykmbm9kZXM9LTU1MzU4MjIyMw==</sig>
<rootNode>generateCommandToZip</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>sourceFolder</key>
    <value></value>
    <name>The folder which user wants to zip</name>
    </Parameter>
    <Parameter>
    <key>zipArchivePath</key>
    <value></value>
    <name>Path of a Zip file to be created</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>300</value>
    <name>Period of time in seconds to complete creation of a zip file</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.continue (quiet).rsp</key>
    <value>Set in Step continue (quiet)</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue (quiet).rsp.time</key>
    <value>Set in Step continue (quiet)</value>
    </Parameter>
    <Parameter>
    <key>lisa.generateCommandToZip.rsp</key>
    <value>Set in Step generateCommandToZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.generateCommandToZip.rsp.time</key>
    <value>Set in Step generateCommandToZip</value>
    </Parameter>
    <Parameter>
    <key>comm</key>
    <value>Set in Step generateCommandToZip</value>
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
    <key>lisa.createZipArchive.rsp</key>
    <value>Set in Step createZipArchive</value>
    </Parameter>
    <Parameter>
    <key>lisa.createZipArchive.rsp.time</key>
    <value>Set in Step createZipArchive</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step createZipArchive</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step createZipArchive</value>
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
    <Node name="generateCommandToZip" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="1000-10000" 
 useFilters="true" 
 quiet="false" 
          next="createZipArchive" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>String baseErrorMsg = &quot;Zip creation validation error&quot;;&#10;&#10;// Verify that source folder exists&#10;String sourceFolder = testExec.parseInState(sourceFolder).replace(&apos;\\&apos;,&apos;/&apos;);&#10;f = new File(sourceFolder);&#10;if (!f.exists())&#10;return baseErrorMsg + &quot;: Source folder (&quot; + sourceFolder + &quot;) does not exist.&quot;;&#10;&#10;&#10;// Replace &quot;\&quot; with &quot;/&quot; in the Zip Archive path&#10;String zipArchivePath = testExec.parseInState(zipArchivePath).replace(&apos;\\&apos;,&apos;/&apos;); &#10;&#10;&#10;&#10;&#10;// determine the executable extension (G11n team had issue without this).&#10;if (com.itko.util.Utilities.isWindows())&#10; exe = &quot;.exe&quot;;&#10;else &#10; exe = &quot;&quot;;&#10;// Use TIBCO_JAVA_HOME if exists&#10;f2 = new File(TIBCO_JAVA_HOME);&#10;if (f2.exists()) {&#10; java = TIBCO_JAVA_HOME.replace(&apos;\\&apos;,&apos;/&apos;) + &quot;/bin/java&quot; + exe;&#10; // this takes care of blank space in path.&#10; if (com.itko.util.Utilities.isWindows()) {&#10;  //java = java.replaceAll(&quot;. [a-zA-Z0-9-_ )(.]*&quot;,&quot;~1&quot;); // return DOS-like folder name&#10;  java = &quot;\&quot;&quot; + java.replace(&apos;/&apos;,&apos;\\&apos;) + &quot;\&quot;&quot;;&#10; }&#10;}&#10;else {&#10; java = &quot;java&quot; + exe; // just java, hopefully it will work!&#10;}&#10;//Construct command to issue for creating zip&#10;String command = &quot;&quot;;&#10;if (com.itko.util.Utilities.isWindows()) { // handle blank space in path&#10;  &#10;    command = java + &quot; -Xms64m -Xmx512m -jar ziputil.zip \&quot;&quot;+sourceFolder+&quot;\&quot; \&quot;&quot;+zipArchivePath+&quot;\&quot;&quot;;&#10;}&#10;else {&#10; command = java + &quot; -Xms64m -Xmx512m -jar ziputil.zip &quot; + sourceFolder + &quot; &quot; + zipArchivePath;&#10;}&#10;return command;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>comm</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="createZipArchive" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>250</graphx>
<graphy>250</graphy>
<cmd>{{comm}}</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/lib</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>{{timeout}}</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
    <Parameter>
    <key>0</key>
    <value>end</value>
    </Parameter>
</exitCodes>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


</TestCase>
