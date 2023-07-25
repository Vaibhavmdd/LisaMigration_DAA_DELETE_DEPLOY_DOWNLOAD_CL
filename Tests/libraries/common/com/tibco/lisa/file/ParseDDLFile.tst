<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Aug 26 15:30:48 PDT 2015 -->


<TestCase name="ParseDDLFile" version="2">
<id>30f345e4</id>
<Documentation>Read SQL scripts file and format it to &quot;One sql by on line&quot;&#13;&#10;Regenerate the sql file and put a header at the first line.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS03NzQ4MzY2MTE=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>fileIn</key>
    <value></value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value></value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>headerKey</key>
    <value></value>
    <name>Optional,Header in the first line</name>
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
    <key>lisa.ParseDDLFile.rsp</key>
    <value>Set in Step ParseDDLFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.ParseDDLFile.rsp.time</key>
    <value>Set in Step ParseDDLFile</value>
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
    <key>lisa.deleteFileOutIfExists.rsp</key>
    <value>Set in Step deleteFileOutIfExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteFileOutIfExists.rsp.time</key>
    <value>Set in Step deleteFileOutIfExists</value>
    </Parameter>
    <Parameter>
    <key>directory</key>
    <value>Set in Step deleteFileOutIfExists</value>
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
          next="deleteFileOutIfExists" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Reset file &#13;&#10;&quot;{{=testExec.parseInState(fileIn).replace(&apos;\\&apos;,&apos;/&apos;)}}&quot; to &#13;&#10;&quot;{{=testExec.parseInState(fileOut).replace(&apos;\\&apos;,&apos;/&apos;)}}&quot;&#13;&#10;&#13;&#10;Optional key header is set to &quot;{{=testExec.parseInState(headerKey).replace(&apos;\\&apos;,&apos;/&apos;)}}&quot;&#13;&#10;</log>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert106" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>Destination directory will be created...</log>
<then>getDirectory</then>
<valueToAssertKey></valueToAssertKey>
        <prop>createDirectory</prop>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="deleteFileOutIfExists" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkFileExists" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>String file = testExec.parseInState(fileOut).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;File f = new File(file);&#13;&#10;&#13;&#10;if (f.exists())&#13;&#10;{&#13;&#10;  f.delete();&#13;&#10;}&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
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
          next="ParseDDLFile" > 

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


    <Node name="ParseDDLFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>13</graphx>
<graphy>49</graphy>
<onerror>fail</onerror>
<script>import java.io.BufferedReader;&#13;&#10;import java.io.BufferedWriter;&#13;&#10;import java.io.File;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.FileWriter;&#13;&#10;&#13;&#10;String fileIn = testExec.parseInState(fileIn).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;String fileOut = testExec.parseInState(fileOut).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;String headerKey= testExec.parseInState(headerKey);&#13;&#10;&#13;&#10;StringBuffer sb = new StringBuffer();&#13;&#10;try&#13;&#10;{&#13;&#10;    FileReader fr = new FileReader(new File(fileIn));&#13;&#10;&#9; // be sure to not have line starting with &quot;--&quot; or &quot;/*&quot; or any other non aplhabetical character&#13;&#10;    BufferedReader br = new BufferedReader(fr);&#13;&#10;&#9; &#13;&#10;&#9;String s;&#13;&#10;&#13;&#10;&#9;while((s = br.readLine()) != null)&#13;&#10;&#9;{&#13;&#10;        sb.append(s);&#13;&#10;&#9;}&#13;&#10;&#9;br.close();&#13;&#10;&#9; &#13;&#10;&#9;// here is our splitter ! We use &quot;;&quot; as a delimiter for each request&#13;&#10;&#9;// then we are sure to have well formed statements&#13;&#10;    &#13;&#10;&#9;   &#13;&#10;}&#13;&#10;catch(Exception e)&#13;&#10;{&#13;&#10;    System.out.println(&quot;*** Error : &quot;+e.toString());&#13;&#10;    return false;&#13;&#10;}&#13;&#10;&#13;&#10;//Re set the file -- generate to a new file&#9;&#13;&#10;String[] inst = sb.toString().split(&quot;;&quot;);&#13;&#10;&#9; &#13;&#10;&#9;            &#13;&#10;&#9;try{&#13;&#10;        //create file &#13;&#10;&#9;            &#13;&#10;        FileWriter fstream = new FileWriter(fileOut,true);&#13;&#10;        BufferedWriter out = new BufferedWriter(fstream);&#13;&#10;        if(headerKey.length() != 0)&#13;&#10;        out.write(headerKey +&quot;\n&quot;);&#13;&#10;&#9;&#9;  &#9;&#9;&#13;&#10;        for(int i = 0; i&lt;inst.length; i++)&#13;&#10;        {&#13;&#10;        // we ensure that there is no spaces before or after the request string&#13;&#10;        // in order to not execute empty statements&#13;&#10;            if(!inst[i].trim().equals(&quot;&quot;))&#13;&#10;            {&#13;&#10;                StringBuffer ab = new StringBuffer(inst[i]);&#13;&#10;                ab.append(&quot;\n&quot;);&#13;&#10;                out.write(ab.toString());&#13;&#10;            }&#13;&#10;      }&#9;        &#13;&#10;    //Close the output stream&#13;&#10;&#9;out.close();&#13;&#10;&#13;&#10;}catch (Exception e){//Catch exception if any&#13;&#10;    System.err.println(&quot;Error: &quot; + e.getMessage());&#13;&#10;    return false;&#13;&#10;}&#9;       </script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert52" type="com.itko.lisa.test.CheckResultContains">
<log>Parse DDL file failed:</log>
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
