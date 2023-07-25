<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Thu Dec 11 14:44:22 PST 2008 -->


<TestCase name="Native2Ascii" version="2">
<id>f68475a</id>
<Documentation>Converts a file from native encoding to ASCII with escaped Unicode.&#10;Note that output file is overwritten if it already exists.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjAuNSAoNDY5Nykmbm9kZXM9MzYzNDcxNzMz</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>inputFile</key>
    <value></value>
    <name>The full path of the file to convert</name>
    </Parameter>
    <Parameter>
    <key>outputFile</key>
    <value></value>
    <name>The full path of the output file</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>The native encoding the input file is in (default is the default encoding for the JVM)</name>
    </Parameter>
    <Parameter>
    <key>reverse</key>
    <value>false</value>
    <name>Reverse the sense of the conversion, i.e. convert from ASCII to native</name>
    </Parameter>
</initState>

<resultState>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getOutputDir.rsp</key>
    <value>Set in Step getOutputDir</value>
    </Parameter>
    <Parameter>
    <key>lisa.getOutputDir.rsp.time</key>
    <value>Set in Step getOutputDir</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInputDir.rsp</key>
    <value>Set in Step getInputDir</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInputDir.rsp.time</key>
    <value>Set in Step getInputDir</value>
    </Parameter>
    <Parameter>
    <key>lisa.antNative2Ascii.rsp</key>
    <value>Set in Step antNative2Ascii</value>
    </Parameter>
    <Parameter>
    <key>lisa.antNative2Ascii.rsp.time</key>
    <value>Set in Step antNative2Ascii</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteOutputFile.rsp</key>
    <value>Set in Step deleteOutputFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteOutputFile.rsp.time</key>
    <value>Set in Step deleteOutputFile</value>
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
    <key>lisa.getTempFile.rsp</key>
    <value>Set in Step getTempFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTempFile.rsp.time</key>
    <value>Set in Step getTempFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyTmp2Output.rsp</key>
    <value>Set in Step copyTmp2Output</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyTmp2Output.rsp.time</key>
    <value>Set in Step copyTmp2Output</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTmpFile.rsp</key>
    <value>Set in Step deleteTmpFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTmpFile.rsp.time</key>
    <value>Set in Step deleteTmpFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInputFileName.rsp</key>
    <value>Set in Step getInputFileName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInputFileName.rsp.time</key>
    <value>Set in Step getInputFileName</value>
    </Parameter>
    <Parameter>
    <key>lisa.shouldWeDeleteOutputFile.rsp</key>
    <value>Set in Step shouldWeDeleteOutputFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.shouldWeDeleteOutputFile.rsp.time</key>
    <value>Set in Step shouldWeDeleteOutputFile</value>
    </Parameter>
    <Parameter>
    <key>inputFolder</key>
    <value>Set in Step getInputDir</value>
    </Parameter>
    <Parameter>
    <key>inputFileName</key>
    <value>Set in Step getInputFileName</value>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value>Set in Step getOutputDir</value>
    </Parameter>
    <Parameter>
    <key>tmpFile</key>
    <value>Set in Step getTempFile</value>
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
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>13</graphx>
<graphy>49</graphy>
      <log>Native2Ascii:&#10;&quot;{{inputFile}}&quot;&#10;To &#10;&quot;{{outputFile}}&quot;</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="shouldWeDeleteOutputFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>// Do not modify next 2 variables. &#10;// Test engineers might have assertion on these strings.&#10;String baseSuccessMsg = &quot;Native2Ascii Validation Success&quot;;&#10;String baseErrorMsg = &quot;Native2Ascii Validation Error&quot;;&#10;&#10;File fi = new File(testExec.parseInState(inputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;File fo = new File(testExec.parseInState(outputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;&#10;// Check Ant is loadable&#10;try {&#10;    Class.forName(&quot;org.apache.tools.ant.Project&quot;);&#10;    Class.forName(&quot;org.apache.tools.ant.launch.Launcher&quot;);&#10;    Class.forName(&quot;org.apache.tools.ant.taskdefs.optional.Native2Ascii&quot;);&#10;}&#10;catch (Exception e) {&#10;    return baseErrorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage() + &quot;\nAdd the following ANT jars: ant.jar, ant-launcher.jar, ant-nodeps.jar to &lt;tibco_amtak_home&gt;/libraries/common/lib&quot;;&#10;}&#10;&#10;// Does not exist&#10;if (!fi.exists())&#10; return baseErrorMsg + &quot;: Input file does not exist !&quot;;&#10;&#10;// We don&apos;t want directory!&#10;if (fi.isDirectory())&#10; return baseErrorMsg + &quot;: Input cannot be a directory !&quot;;&#10;&#10;// We don&apos;t want existing directory for output!&#10;if (fo.exists() &amp;&amp; fo.isDirectory())&#10; return baseErrorMsg + &quot;: Output is an existing directory. It must be a target file&quot;; &#10;&#10;// we need an extension.&#10;if (!fi.getName().contains(&quot;.&quot;))&#10; return baseErrorMsg + &quot;: Input file needs an extension&quot;;&#10;if (!fo.getName().contains(&quot;.&quot;))&#10; return baseErrorMsg + &quot;: Output file needs an extension&quot;;&#10;&#10;// Reverse should be true or false&#10;if (!reverse.toString().equals(&quot;true&quot;) &amp;&amp; !reverse.toString().equals(&quot;false&quot;))&#10; return baseErrorMsg + &quot;: Reverse parameter must be true or false&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert101" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>Native2Ascii Validation Error</param>
</CheckResult>

    </Node>


    <Node name="shouldWeDeleteOutputFile" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getInputDir" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>If input and output files are same we don&apos;t delete output file.</Documentation>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.AssertByScript" name="Assert140" >
<log>input file and output file are different</log>
<then>deleteOutputFile</then>
        <script>// This Beanshell script should return a boolean result indicating the assertion is true or false&#10;&#10;File fi = new File(testExec.parseInState(inputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;File fo = new File(testExec.parseInState(outputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;&#10;return fi.equals(fo);</script>
</CheckResult>

    </Node>


    <Node name="deleteOutputFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getInputDir" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{outputFile}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getInputDir" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getInputFileName" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>java.io.File f = new File(testExec.parseInState(inputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;return f.getParent();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>inputFolder</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getInputFileName" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getOutputDir" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>java.io.File f = new File(testExec.parseInState(inputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;return f.getName();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>inputFileName</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getOutputDir" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTempFile" > 

<graphx>250</graphx>
<graphy>250</graphy>
<onerror>fail</onerror>
<script>java.io.File f = new File(testExec.parseInState(outputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;return f.getParent();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>destinationFolder</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getTempFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="antNative2Ascii" > 

<graphx>250</graphx>
<graphy>250</graphy>
<onerror>fail</onerror>
<script>java.io.File outFile = new File(testExec.parseInState(outputFile).replace(&apos;\\&apos;,&apos;/&apos;));&#10;String outFolder = outFile.getParent();&#10;&#10;// ant target returns a .tmp file&#10;String tmpFileStr = outFolder + &quot;/&quot; + inputFileName.substring(0, inputFileName.lastIndexOf(&quot;.&quot;)) + &quot;.tmp&quot;;&#10;return tmpFileStr.replace(&apos;\\&apos;,&apos;/&apos;);</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>tmpFile</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert101" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>failed</param>
</CheckResult>

    </Node>


    <Node name="antNative2Ascii" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyTmp2Output" > 

<graphx>186</graphx>
<graphy>50</graphy>
<onerror>fail</onerror>
<script>import org.apache.tools.ant.launch.Launcher;&#10;import org.apache.tools.ant.*;&#10;import java.io.File;&#10;&#10;String buildFileStr = testExec.parseInState(TIBCO_COMMON_LIBRARY).replace(&apos;\\&apos;,&apos;/&apos;) + &quot;/com/tibco/lisa/util/Native2Ascii.xml&quot;;&#10;File buildFile = new File(buildFileStr);&#10;&#10;Project p = new Project();&#10;p.setProperty(&quot;reverse&quot;, reverse.toString());&#10;p.setProperty(&quot;encoding&quot;, (encoding.equals(&quot;&quot;)?file_encoding:encoding));&#10;p.setProperty(&quot;inputDir&quot;, inputFolder);&#10;p.setProperty(&quot;outputDir&quot;, destinationFolder);&#10;p.setProperty(&quot;inputFile&quot;, inputFileName);&#10;p.setUserProperty(&quot;ant.file&quot;, buildFile.getAbsolutePath());&#10;&#10;DefaultLogger consoleLogger = new DefaultLogger();&#10;consoleLogger.setErrorPrintStream(System.err);&#10;consoleLogger.setOutputPrintStream(System.out);&#10;consoleLogger.setMessageOutputLevel(Project.MSG_INFO);&#10;p.addBuildListener(consoleLogger);&#10;&#10;try {&#10; p.fireBuildStarted();&#10; p.init();&#10; ProjectHelper helper = ProjectHelper.getProjectHelper();&#10; p.addReference(&quot;ant.projectHelper&quot;, helper);&#10; helper.parse(p, buildFile);&#10; p.executeTarget(p.getDefaultTarget());&#10; p.fireBuildFinished(null);&#10; return &quot;BUILD SUCCESSFUL&quot;;&#10;} &#10;catch (BuildException e) {&#10; p.fireBuildFinished(e);&#10; return &quot;BUILD FAILED\n&quot; + e.getMessage();&#10;}&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Assert133" >
<log>Exception were thrown</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert95" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>BUILD FAILED</param>
</CheckResult>

    </Node>


    <Node name="copyTmp2Output" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteTmpFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{tmpFile}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{outputFile}}</value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>false</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTmpFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tmpFile}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
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


</TestCase>
