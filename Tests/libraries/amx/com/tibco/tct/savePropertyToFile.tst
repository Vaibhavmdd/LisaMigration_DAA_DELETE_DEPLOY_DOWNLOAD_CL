<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Apr 18 16:40:34 PDT 2014 -->


<TestCase name="savePropertyToFile" version="2">
<id>a7733ed6</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE2NTcyNTI0MQ==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>inProperty</key>
    <value>USER_PROFILE_HOME</value>
    <name>The property to be written in file.</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value>C:\Tibco\prodata.log</value>
    <name>Location of the log file to be created, where inProperty&apos;s value would be stored.</name>
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
    <key>lisa.verifyInputVariables.rsp</key>
    <value>Set in Step verifyInputVariables</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp.time</key>
    <value>Set in Step verifyInputVariables</value>
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
    <key>lisa.writePropertyToFile.rsp</key>
    <value>Set in Step writePropertyToFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.writePropertyToFile.rsp.time</key>
    <value>Set in Step writePropertyToFile</value>
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
          next="verifyInputVariables" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Saving {{inProperty}} to newly created {{propertyFile}}</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the tctsilentauto subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="writePropertyToFile" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#13;&#10;            if (inProperty.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: the Property to be stored in the file is required.&quot;;&#13;&#10;&#13;&#10;            if (propertyFile.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: full path of log file is required.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Incorrect input parameters...</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="writePropertyToFile" log="This step replaces the property {{key}} with its actual value and creates a build.properties file for TCT Silent call"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.*;  &#13;&#10;import java.util.*;&#13;&#10;&#13;&#10;String WriteProperty() {&#13;&#10;&#13;&#10;    String response = &quot;PASS&quot;;&#13;&#10;    try&#13;&#10;&#9;{&#9;// Read properties file.  &#13;&#10;&#9;    String tempval = null;&#13;&#10;&#9;&#9;&#13;&#10;        tempval = testExec.getStateObject(inProperty);&#13;&#10;        if (tempval != null)&#13;&#10;&#9;&#9;{&#13;&#10;            tempval = testExec.convertStateString(tempval, &quot;tempval is not a string....&quot;);&#13;&#10;        }&#13;&#10;        else&#13;&#10;        {&#13;&#10;            tempval = &quot; &quot;;&#13;&#10;        }&#13;&#10;    }&#13;&#10;    catch(Exception e1)&#13;&#10;&#9;{&#13;&#10;        return &quot;ERROR : encounterd Exception &quot; + e1.printStackTrace(); &#13;&#10;&#9;}&#13;&#10;    return response;&#13;&#10;}&#13;&#10;&#13;&#10;return WriteProperty();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Input parameters incorrect</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
