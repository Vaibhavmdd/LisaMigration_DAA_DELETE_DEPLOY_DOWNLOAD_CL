<?xml version="1.0" ?>

<TestCase name="findHighestFolder" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
</meta>

<id>d7ce3f4d</id>
<Documentation>This test case finds the highest version of folder which has the filter. If filter is not provided, it just returns the highest folder.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTE1MjkwODU0MDM=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>searchDir</key>
    <value>{{TIBCO_HOME}}/amx/</value>
    <name>The name of the directory in which the highest has to be searched</name>
    </Parameter>
    <Parameter>
    <key>searchFilter</key>
    <value></value>
    <name>the filter to be searched in the folders</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.checkDirExists.rsp</key>
    <value></value>
    <name>lisa.checkDirExists.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkDirExists.rsp.time</key>
    <value></value>
    <name>lisa.checkDirExists.rsp.time</name>
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
    <key>lisa.searchHighest.rsp</key>
    <value></value>
    <name>lisa.searchHighest.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.searchHighest.rsp.time</key>
    <value></value>
    <name>lisa.searchHighest.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp</key>
    <value></value>
    <name>lisa.verifyInputVariables.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp.time</key>
    <value></value>
    <name>lisa.verifyInputVariables.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="d7ce3f4d-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyInputVariables" > 

<log>Looking in {{searchDir}} to return the highest folder containing {{searchFilter}}</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the tctsilentauto subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d7ce3f4d-verifyInputVariables" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkDirExists" > 


      <!-- Assertions -->
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

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#13;&#10;            if (searchDir.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: full path of Directory is required.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="checkDirExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="d7ce3f4d-checkDirExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="searchHighest" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check File existence" type="com.itko.lisa.test.CheckResultContains">
<log>Check {{fileIn}}</log>
<then>fail</then>
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
    <value>{{searchDir}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="searchHighest" log="This step returns the highest folder in {{searchDir}} having a file with {{searchFilter}} filename."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d7ce3f4d-searchHighest" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
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

<onerror>abort</onerror>
<script>import java.io.*;&#13;&#10;import java.util.*;&#13;&#10;&#13;&#10;String HighestFolder() {&#13;&#10;&#13;&#10;    String response = &quot;&quot;;&#13;&#10;&#13;&#10;    try&#13;&#10;    {&#13;&#10;        File dir1 = null;&#13;&#10;        File[] listofDirs = null;&#13;&#10;&#13;&#10;        ArrayList listoffilteredDirs = new ArrayList();&#13;&#10;&#13;&#10;        FilenameFilter filterFile = new FilenameFilter() {&#13;&#10;&#13;&#10;            public boolean accept(File dir, String name) {&#13;&#10;                // TODO Auto-generated method stub&#13;&#10;&#13;&#10;                if (name.contains(searchFilter))&#13;&#10;                {&#13;&#10;                    return true;&#13;&#10;                }&#13;&#10;&#13;&#10;                return false;&#13;&#10;            }&#13;&#10;        };&#13;&#10;&#13;&#10;        dir1 = new File(searchDir);&#13;&#10;        listofDirs = dir1.listFiles();&#13;&#10;&#13;&#10;        if (listofDirs != null)&#13;&#10;        {&#13;&#10;            for(File internalFile : listofDirs)&#13;&#10;            {&#13;&#10;                if (searchFilter.isEmpty())&#13;&#10;                {&#13;&#10;                    listoffilteredDirs.add(internalFile);&#13;&#10;                }&#13;&#10;                else&#13;&#10;                {&#13;&#10;                    if (internalFile.exists())&#13;&#10;                    {&#13;&#10;                        File[] tempfiles = null;&#13;&#10;&#13;&#10;&#13;&#10;                        tempfiles = internalFile.listFiles(filterFile);&#13;&#10;&#13;&#10;&#13;&#10;                        if (tempfiles.length &gt; 0)&#13;&#10;                        {&#13;&#10;                            listoffilteredDirs.add(internalFile);&#13;&#10;                        }&#13;&#10;                    }&#13;&#10;                }&#13;&#10;            }&#13;&#10;        }&#13;&#10;        else&#13;&#10;        {&#13;&#10;            return &quot;ERROR because no folders in &quot; + searchDir;&#13;&#10;        }&#13;&#10;&#13;&#10;        ArrayList fs = new ArrayList();&#13;&#10;        for (File f1 : listoffilteredDirs)&#13;&#10;        {&#13;&#10;            fs.add(f1.getName());&#13;&#10;        }&#13;&#10;&#13;&#10;&#13;&#10;        Float bigValue = new Float(0);&#13;&#10;        for (String s1 : fs)&#13;&#10;        {&#13;&#10;            Float i = new Float(0);&#13;&#10;            try&#13;&#10;            {&#13;&#10;                i = Float.valueOf(s1);&#13;&#10;&#13;&#10;                if (i &gt; bigValue)&#13;&#10;                {&#13;&#10;                    bigValue = i;&#13;&#10;                }&#13;&#10;            }&#13;&#10;            catch(Exception stringTOintEX)&#13;&#10;            {&#13;&#10;                System.out.println(&quot;The &quot; + s1 + &quot; can&apos;t be converted to Float.&quot;);&#13;&#10;            }&#13;&#10;        }&#13;&#10;&#13;&#10;        response = bigValue.toString();&#13;&#10;    }&#13;&#10;    catch(Exception de)&#13;&#10;    {&#13;&#10;        de.printStackTrace();&#13;&#10;        return &quot;ERROR : &quot; + de.getLocalizedMessage();&#13;&#10;    }&#13;&#10;    return response;&#13;&#10;}&#13;&#10;&#13;&#10;return HighestFolder();</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="52769807722A11ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="d7ce3f4d-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="d7ce3f4d-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
