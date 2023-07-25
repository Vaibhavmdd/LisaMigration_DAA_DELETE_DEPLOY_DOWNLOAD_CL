<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Feb 26 10:51:15 PST 2015 -->


<TestCase name="CopyDir" version="2">
<id>30f345e4</id>
<Documentation>Copy a file or dir. Destination file is overwritten if already exists.&#13;&#10;Returns the SUCC message if successfully copied.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTgzMDU3MzM0NQ==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>fileIn</key>
    <value></value>
    <name>Source file or directory</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value></value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>true</value>
    <name>If true, create the necessary directories to copy the destination file</name>
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
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.getDirectory.rsp</key>
    <value>Set in Step getDirectory</value>
    </Parameter>
    <Parameter>
    <key>lisa.getDirectory.rsp.time</key>
    <value>Set in Step getDirectory</value>
    </Parameter>
    <Parameter>
    <key>directory</key>
    <value>Set in Step getDirectory</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyFile.rsp</key>
    <value>Set in Step copyFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyFile.rsp.time</key>
    <value>Set in Step copyFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkFileExists.rsp</key>
    <value>Set in Step checkFileExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkFileExists.rsp.time</key>
    <value>Set in Step checkFileExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.createDirectory.rsp</key>
    <value>Set in Step createDirectory</value>
    </Parameter>
    <Parameter>
    <key>lisa.createDirectory.rsp.time</key>
    <value>Set in Step createDirectory</value>
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
          next="copyFile" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Copying file &#13;&#10;&quot;{{=testExec.parseInState(fileIn).replace(&apos;\\&apos;,&apos;/&apos;)}}&quot; to &#13;&#10;&quot;{{=testExec.parseInState(fileOut).replace(&apos;\\&apos;,&apos;/&apos;)}}&quot;</log>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert106" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>Destination directory will be created...</log>
<then>getDirectory</then>
<valueToAssertKey></valueToAssertKey>
        <prop>createDirectory</prop>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="getDirectory" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkFileExists" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>String file = testExec.parseInState(fileOut).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;File f = new File(file);&#13;&#10;&#13;&#10;if (f.isDirectory())&#13;&#10; return file;&#13;&#10;else &#13;&#10; return f.getParent();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getDirectory.rsp</valueToFilterKey>
      <prop>directory</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="checkFileExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createDirectory" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{fileIn}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check File existence" type="com.itko.lisa.test.CheckResultContains">
<log>Check {{fileIn}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="createDirectory" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyFile" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateDirectory.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>directory</key>
    <value>{{directory}}</value>
    <name>Directory to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="copyFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>13</graphx>
<graphy>49</graphy>
<onerror>fail</onerror>
<script>import java.io.*;&#13;&#10;&#13;&#10;copyFolder(File src, File dest) {&#13;&#10;&#9;String baseSuccessMsg = &quot;File Copy Success&quot;;&#13;&#10;&#9;String baseErrorMsg = &quot;File Copy Error&quot;;&#13;&#10;&#9;&#13;&#10;&#9;if (src.isDirectory()) {&#13;&#10;&#13;&#10;&#9;&#9;// if directory not exists, create it&#13;&#10;&#9;&#9;if (!dest.exists()) {&#13;&#10;&#9;&#9;&#9;dest.mkdir();&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;// list all the directory contents&#13;&#10;&#9;&#9;String[] files = src.list();&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;for (int i=0; i&lt;files.length; i++) {&#13;&#10;&#9;&#9;&#9;// construct the src and dest file structure&#13;&#10;&#9;&#9;&#9;String file = files[i];&#13;&#10;&#9;&#9;&#9;File srcFile;&#13;&#10;&#9;&#9;&#9;File destFile;&#13;&#10;&#9;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;&#9;&#9;srcFile = new File(src, file);&#13;&#10;&#9;&#9;&#9;&#9;&#9;destFile = new File(dest, file);&#13;&#10;&#9;&#9;&#9;&#9;&#9;copyFolder(srcFile, destFile);&#13;&#10;&#9;&#9;&#9;} catch (Exception e) {&#13;&#10;&#9;&#9;&#9;&#9;// TODO Auto-generated catch block&#13;&#10;&#9;&#9;&#9;&#9; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#13;&#10;&#9;&#9;&#9;}&#13;&#10;        }&#13;&#10;    &#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;&#9;// if file, then copy it&#13;&#10;&#9;&#9;&#9;// Use bytes stream to support all file types&#13;&#10;&#9;&#9;  FileInputStream fis  = new FileInputStream(src);&#13;&#10;          FileOutputStream fos = new FileOutputStream(dest);&#13;&#10;  &#13;&#10;          byte[] buf = new byte[1024];&#13;&#10;          int i = 0;&#13;&#10;          while((i = fis.read(buf))!= -1) {&#13;&#10;            fos.write(buf, 0, i);&#13;&#10;          }&#13;&#10;          fis.close();&#13;&#10;          fos.close();&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;}&#13;&#10;&#9;return (baseSuccessMsg + &quot;: &quot; + &quot;Directory copied from from &quot; + src + &quot; to &quot; + dest);&#13;&#10;&#13;&#10;}&#13;&#10;// Main&#13;&#10;fileIn = testExec.parseInState(fileIn).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;fileOut = testExec.parseInState(fileOut).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;return copyFolder(new File(fileIn), new File(fileOut));&#13;&#10;&#13;&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert52" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.copyFile.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Error</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>100</graphx>
<graphy>200</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>186</graphx>
<graphy>50</graphy>
    </Node>


</TestCase>
