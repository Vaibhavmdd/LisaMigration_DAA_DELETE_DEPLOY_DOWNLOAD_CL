<?xml version="1.0" ?>

<TestCase name="replaceInTemplate" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/12/2022" host="na2devasgaks01" />
</meta>

<id>47c0af44</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNTY4OTQwNzY0</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>templateFile</key>
    <value></value>
    <name>full path of Template file to be replaced</name>
    </Parameter>
    <Parameter>
    <key>propertiesFile</key>
    <value></value>
    <name>full path of build.properties file</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value></value>
    <name>JBOSSPortForEJBBT</name>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value></value>
    <name>JBOSSServerForEJBBT</name>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value></value>
    <name>adapterZip</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value></value>
    <name>admin.cli.ssl.keyalias</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value></value>
    <name>admin.cli.ssl.keypassword</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value></value>
    <name>admin.cli.ssl.keystorelocation</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value></value>
    <name>admin.cli.ssl.keystorepassword</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value></value>
    <name>admin.cli.ssl.keystoretype</name>
    </Parameter>
    <Parameter>
    <key>admin.db.dbname</key>
    <value></value>
    <name>admin.db.dbname</name>
    </Parameter>
    <Parameter>
    <key>admin.db.dialect</key>
    <value></value>
    <name>admin.db.dialect</name>
    </Parameter>
    <Parameter>
    <key>admin.db.driver</key>
    <value></value>
    <name>admin.db.driver</name>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value></value>
    <name>admin.db.host</name>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value></value>
    <name>admin.db.password</name>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value></value>
    <name>admin.db.port</name>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value></value>
    <name>admin.db.url</name>
    </Parameter>
    <Parameter>
    <key>admin.db.usedefault</key>
    <value></value>
    <name>admin.db.usedefault</name>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value></value>
    <name>admin.db.username</name>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value></value>
    <name>admin.env.name</name>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value></value>
    <name>admin.group.name</name>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value></value>
    <name>admin.instance.name</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value></value>
    <name>adminURL</name>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value></value>
    <name>amx.sv.queuePrefix</name>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value></value>
    <name>amxHF2Zip</name>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value></value>
    <name>amxHFZip</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value></value>
    <name>amxZip</name>
    </Parameter>
    <Parameter>
    <key>amxversion</key>
    <value></value>
    <name>amxversion</name>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value></value>
    <name>bwhost1</name>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value></value>
    <name>bwport1</name>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value></value>
    <name>bwportssl1</name>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value></value>
    <name>clrZip</name>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value></value>
    <name>compiler</name>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value></value>
    <name>cppZip</name>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value></value>
    <name>db.feature.version</name>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value></value>
    <name>db.shell.name</name>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value></value>
    <name>db.shell.version</name>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value></value>
    <name>db.source.jar.location</name>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value></value>
    <name>dbDriver</name>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value></value>
    <name>dbPwd</name>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value></value>
    <name>dbUrl</name>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value></value>
    <name>dbUser</name>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value></value>
    <name>ejbZip</name>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value></value>
    <name>emshost</name>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value></value>
    <name>emsport</name>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value></value>
    <name>emspwd</name>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value></value>
    <name>emsuser</name>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value></value>
    <name>enableMCR</name>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value></value>
    <name>env.name</name>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value></value>
    <name>env.node1.name</name>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value></value>
    <name>env.node2.name</name>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value></value>
    <name>hibernateDialect</name>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value></value>
    <name>host.instance</name>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value></value>
    <name>host.jmx.port</name>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value></value>
    <name>host.name</name>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value></value>
    <name>host.prefix</name>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value></value>
    <name>host1</name>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value></value>
    <name>httpConnectionTimeout</name>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value></value>
    <name>installJavaHome</name>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value></value>
    <name>installTempDir</name>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value></value>
    <name>jmshost</name>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value></value>
    <name>jmsport</name>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value></value>
    <name>jmspwd</name>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value></value>
    <name>jmsuser</name>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value></value>
    <name>jndiconnectionfactory</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value></value>
    <name>jndicontexturl</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value></value>
    <name>jndicontexturlSSL</name>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value></value>
    <name>jndihost</name>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value></value>
    <name>jndiport</name>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value></value>
    <name>jndipwd</name>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value></value>
    <name>jndiuser</name>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value></value>
    <name>keystore.location</name>
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
    <key>lisa.findCorrectAMXVersion.rsp</key>
    <value></value>
    <name>lisa.findCorrectAMXVersion.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.findCorrectAMXVersion.rsp.time</key>
    <value></value>
    <name>lisa.findCorrectAMXVersion.rsp.time</name>
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
    <key>lisa.parseTemplateFile.rsp</key>
    <value></value>
    <name>lisa.parseTemplateFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.parseTemplateFile.rsp.time</key>
    <value></value>
    <name>lisa.parseTemplateFile.rsp.time</name>
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
    <Parameter>
    <key>logappender.file.location</key>
    <value></value>
    <name>logappender.file.location</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>password</name>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value></value>
    <name>port1</name>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value></value>
    <name>port2</name>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value></value>
    <name>port3</name>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value></value>
    <name>port4</name>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value></value>
    <name>portssl1</name>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value></value>
    <name>projectloc</name>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value></value>
    <name>regenerateDAA</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value></value>
    <name>tibco.amx.datafile.template</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value></value>
    <name>tibco.amx.rt.ldap1.connectionFactory</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value></value>
    <name>tibco.amx.rt.ldap1.providerURL</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value></value>
    <name>tibco.amx.rt.smtp1.host</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value></value>
    <name>tibco.amx.rt.smtp1.port</name>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value></value>
    <name>tibco.test.suite.config.path</name>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value></value>
    <name>tmpDir</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>username</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="47c0af44-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyInputVariables" > 

<log>Parsing {{templateFile}} to create TCT Silent {{propertiesFile}}</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the tctsilentauto subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="47c0af44-verifyInputVariables" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="checkFileExists" > 


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
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#13;&#10;            if (templateFile.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: full path of Template file to be replaced is required.&quot;;&#13;&#10;&#13;&#10;            if (propertiesFile.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: full path of Properties file is required.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="checkFileExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="47c0af44-checkFileExists" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="findCorrectAMXVersion" > 


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
    <value>{{templateFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="findCorrectAMXVersion" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="47c0af44-findCorrectAMXVersion" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="parseTemplateFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.findCorrectAMXVersion.rsp</valueToFilterKey>
      <prop>amxversion</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert182" type="com.itko.lisa.test.CheckResultContains">
<log>Look for string Error in the return response to declare it as failed...</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>ERROR</param>
</CheckResult>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tct/findHighestFolder.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
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
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="parseTemplateFile" log="This step replaces the property {{key}} with its actual value and creates a build.properties file for TCT Silent call"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="47c0af44-parseTemplateFile" 
          think="0" 
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
<script>import java.io.*;  &#13;&#10;import java.util.*;&#13;&#10;&#13;&#10;String ReadValues() {&#13;&#10;&#13;&#10;    String response = &quot;PASS&quot;;&#13;&#10;    FileReader infile = null;&#13;&#10;    FileWriter outfile = null;&#13;&#10;&#9;BufferedReader reader = null;&#13;&#10;&#9;BufferedWriter out = null; &#13;&#10;&#13;&#10;    // TODO additional code started &#13;&#10;&#13;&#10;    String dbtype = null;&#13;&#10;&#13;&#10;    try&#13;&#10;    {&#13;&#10;        dbtype = testExec.getStateObject(&quot;admin.db.url&quot;);&#13;&#10;&#13;&#10;        if (dbtype != null)&#13;&#10;        {&#13;&#10;            dbtype = testExec.convertStateString(dbtype, &quot;dbtype is not a string&quot;);&#13;&#10;            if(dbtype.contains(&quot;hsql&quot;))&#13;&#10;            {&#13;&#10;                dbtype = &quot;hsql&quot;;&#13;&#10;            }&#13;&#10;            else if(dbtype.contains(&quot;oracle&quot;))&#13;&#10;            {&#13;&#10;                dbtype = &quot;oracle&quot;;&#13;&#10;            }&#13;&#10;            else if(dbtype.contains(&quot;sqlserver&quot;))&#13;&#10;            {&#13;&#10;                dbtype = &quot;sqlserver&quot;;&#13;&#10;            }&#13;&#10;            else if(dbtype.contains(&quot;postgresql&quot;))&#13;&#10;            {&#13;&#10;                dbtype = &quot;postgresql&quot;;&#13;&#10;            }&#13;&#10;            else&#13;&#10;            {&#13;&#10;                dbtype = &quot;db2&quot;;&#13;&#10;            }&#13;&#10;        }&#13;&#10;//        System.out.println(&quot;*-----------------------------* dbtype = &quot; + dbtype + &quot;*-----------------------------------------*&quot;);&#13;&#10;    }&#13;&#10;    catch(Exception e)&#13;&#10;    {&#13;&#10;        return &quot;ERROR : Error while reading the value of admin.db.url&quot;;&#13;&#10;    }&#13;&#10;&#13;&#10;    // TODO additional code ended &#13;&#10;&#13;&#10;        &#13;&#10;&#9;try&#13;&#10;&#9;{&#9;// Read properties file.  &#13;&#10;&#9;&#9;try&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;    infile = new FileReader(templateFile);&#13;&#10;&#9;&#9;    outfile = new FileWriter(propertiesFile);&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;catch (Exception ex)&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;    return &quot;ERROR : Error while creating filereader&quot;;&#13;&#10;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;reader = new BufferedReader(infile);&#13;&#10;        if (reader == null){&#13;&#10;            return &quot;ERROR : failed while creating buffered reader for &quot; + templateFile ;&#13;&#10;        }    &#13;&#10;&#13;&#10;&#9;&#9;out = new BufferedWriter(outfile); &#13;&#10;&#13;&#10;        if (out == null){&#13;&#10;           return &quot;ERROR : failed while creating buffered reader for &quot; + propertiesFile ;&#13;&#10;        }&#13;&#10;    &#13;&#10;        String line = &quot;&quot;;&#13;&#10;&#9;&#9;String vf2 = null;&#13;&#10;&#9;&#13;&#10;&#9;&#9;while ((line=reader.readLine()) != null)&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;// if a line contains # skip that line&#13;&#10;&#9;&#9;&#9;if ( (line.contains(&quot;{{&quot;)) &amp;&amp; (!line.contains(&quot;#&quot;)) )&#13;&#10;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;int linelength=line.length();&#13;&#10;&#9;&#9;&#9;&#9;int j= line.indexOf(&quot;=&quot;);&#13;&#10;&#9;&#9;&#9;&#9;vf2 = line.substring(j+1, linelength);&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;String S1 = null;&#13;&#10;&#9;&#9;&#9;&#9;String S2 = null;&#13;&#10;&#9;&#9;&#9;&#9;String[] SA = null;&#13;&#10;&#9;&#9;&#9;&#9;String symbol = &quot;/&quot;;&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;if (vf2.contains(&quot;:&quot;))&#13;&#10;                {&#13;&#10;                    symbol = &quot;:&quot;;&#13;&#10;                }&#13;&#10;//                else if (vf2.contains(&quot;\\&quot;))&#13;&#10;//&#9;&#9;&#9;&#9;{&#13;&#10;//&#9;&#9;&#9;&#9;&#9;symbol = &quot;\\\\&quot;;&#13;&#10;//&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;vf2 = vf2.replaceAll(&quot;\r&quot;, &quot;&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;SA =  vf2.split(symbol);&#13;&#10;&#9;&#9;&#9;&#9;int i=0;&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;for (i=0; i&lt;SA.length; i++)&#13;&#10;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;String tempval = null;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;if(SA[i].contains(&quot;{{&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;int j1 = SA[i].indexOf(&quot;{&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;int j2 = SA[i].indexOf(&quot;}&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;S1 = SA[i].substring(j1, j2 + 2);&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;S2 = SA[i].substring(j1 + 2, j2);&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if (S1.contains(&quot;\r&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;S1 = S1.replaceAll(&quot;\r&quot;, &quot;&quot;);&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if (S2.contains(&quot;\r&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;S2 = S2.replaceAll(&quot;\r&quot;, &quot;&quot;);&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if(S2 != null)&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;                            &#13;&#10;                            tempval = testExec.getStateObject(S2);&#13;&#10;                            if (tempval != null)&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;                                tempval = testExec.convertStateString(tempval, &quot;tempval is not a string....&quot;);&#13;&#10;                                if (tempval.contains(&quot;\\&quot;))&#13;&#10;                                {&#13;&#10;                                    tempval = tempval.replaceAll(&quot;\\\\&quot;, &quot;/&quot;);&#13;&#10;                                }&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;if (tempval.contains(&quot;\r&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;                                    &#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;tempval = tempval.replaceAll(&quot;\r&quot;, &quot;&quot;);&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;                                // TODO additional code start&#13;&#10;&#13;&#10;                                if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                {&#13;&#10;                                    if (S2.contains(&quot;admin.db.url&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;jdbc:hsqldb:file:${tibco.config.mgmt.home}/admin/${admin.enterprise.name}/private/${admin.instance.name}/hsqldb/amx&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (S2.contains(&quot;admin.db.username&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;sa&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (S2.contains(&quot;admin.db.password&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;&quot;;&#13;&#10;                                    }&#13;&#10;                                }&#13;&#10;&#13;&#10;                                // TODO additional code end&#13;&#10;                                else if (S2.contains(&quot;admin.db.driver&quot;))&#13;&#10;                                {&#13;&#10;//                                    System.out.println(&quot;*-----------------------------* dbtype = &quot; + dbtype + &quot;*-----------------------------------------*&quot;);&#13;&#10;&#13;&#10;                                    if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;org.hsqldb.jdbcDriver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;oracle&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;oracle.jdbc.OracleDriver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;sqlserver&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.microsoft.sqlserver.jdbc.SQLServerDriver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;postgresql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;org.postgresql.Driver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else &#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.ibm.db2.jcc.DB2Driver&quot;;&#13;&#10;                                    }&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;admin.db.dialect&quot;))&#13;&#10;                                {&#13;&#10;//                                    System.out.println(&quot;*-----------------------------* dbtype = &quot; + dbtype + &quot;*-----------------------------------------*&quot;);&#13;&#10;&#13;&#10;                                    if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;org.hibernate.dialect.HSQLDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;oracle&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.Oracle10gDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;sqlserver&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.SQLServerDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;postgresql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.PostgreSQLDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else &#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.DB2Dialect&quot;;&#13;&#10;                                    }&#13;&#10;                                }&#13;&#10;&#9;&#13;&#10;                                S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;SA[i] = SA[i].replace(S1, tempval);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;                            // TODO code changed&#13;&#10;&#13;&#10;                            else &#13;&#10;                            {&#13;&#10;                                if (S2.contains(&quot;emssecure&quot;))&#13;&#10;                                {&#13;&#10;                                    tempval = &quot;false&quot;;&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;admin.db.usedefault&quot;))&#13;&#10;                                {&#13;&#10;                                    if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;true&quot;;&#13;&#10;                                    }&#13;&#10;                                    else&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;false&quot;;&#13;&#10;                                    }&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;admin.db.driver&quot;))&#13;&#10;                                {&#13;&#10;//                                    System.out.println(&quot;*-----------------------------* dbtype = &quot; + dbtype + &quot;*-----------------------------------------*&quot;);&#13;&#10;&#13;&#10;                                    if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;org.hsqldb.jdbcDriver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;oracle&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;oracle.jdbc.OracleDriver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;sqlserver&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.microsoft.sqlserver.jdbc.SQLServerDriver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;postgresql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;org.postgresql.Driver&quot;;&#13;&#10;                                    }&#13;&#10;                                    else &#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.ibm.db2.jcc.DB2Driver&quot;;&#13;&#10;                                    }&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;admin.db.dialect&quot;))&#13;&#10;                                {&#13;&#10;//                                    System.out.println(&quot;*-----------------------------* dbtype = &quot; + dbtype + &quot;*-----------------------------------------*&quot;);&#13;&#10;&#13;&#10;                                    if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;org.hibernate.dialect.HSQLDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;oracle&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.Oracle10gDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;sqlserver&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.SQLServerDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else if (dbtype.equals(&quot;postgresql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.PostgreSQLDialect&quot;;&#13;&#10;                                    }&#13;&#10;                                    else &#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;com.tibco.amf.sharedresource.runtime.core.hibernate.dialects.DB2Dialect&quot;;&#13;&#10;                                    }&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;provisiondrivers.enable&quot;))&#13;&#10;                                {&#13;&#10;                                    if (dbtype.equals(&quot;hsql&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;false&quot;;&#13;&#10;                                    }&#13;&#10;                                    else&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;true&quot;;&#13;&#10;                                    }&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;provisiondrivers.provisionMode&quot;))&#13;&#10;                                {&#13;&#10;                                    if (dbtype.equals(&quot;oracle&quot;))&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;resolve&quot;;&#13;&#10;                                    }&#13;&#10;                                    else&#13;&#10;                                    {&#13;&#10;                                        tempval = &quot;stable&quot;;&#13;&#10;                                    }&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                                else if (S2.contains(&quot;amsbproductver&quot;))&#13;&#10;                                {&#13;&#10;                                    if(amxversion != null)&#13;&#10;                                    {&#13;&#10;                                        amxversion = testExec.convertStateString(amxversion, &quot;amxversion is not a string&quot;);&#13;&#10;                                        if (amxversion.contains(&quot;3.3&quot;))&#13;&#10;                                        {&#13;&#10;                                            tempval = &quot;amsb/3.5.0&quot;;&#13;&#10;                                        }&#13;&#10;                                        else &#13;&#10;                                        {&#13;&#10;                                            tempval = &quot;amsb/3.4.0&quot;;&#13;&#10;                                        }&#13;&#10;                                    }&#13;&#10;&#13;&#10;                                    S1 = &quot;{{&quot; + S2 + &quot;}}&quot;;&#13;&#10;                                    SA[i] = SA[i].replace(S1, tempval);&#13;&#10;                                }&#13;&#10;                            }&#13;&#10;&#13;&#10;                            // TODO code change ended&#13;&#10;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;                &#13;&#10;&#9;&#9;&#9;&#9;String temp=SA[0];&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;                for(i=1; i&lt;SA.length; i++)&#13;&#10;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;if(SA.length &gt; i)&#13;&#10;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;temp = temp + symbol;&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;temp = temp + SA[i];&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;String resolvedvf2 = temp;&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;//&#9;&#9;&#9;&#9;System.out.println(vf2 + &quot; is now &quot; + resolvedvf2);&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;String comment = &quot;# Resolved. \n&quot;;&#13;&#10;&#9;&#9;&#9;&#9;out.append(comment.toString());&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;line = line.replace(vf2, resolvedvf2);&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;line = line.concat(&quot;\n&quot;);&#13;&#10;&#9;&#9;&#9;out.append(line.toString());&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;}&#9;&#13;&#10;    &#13;&#10;&#9;&#9;if (out != null)&#13;&#10;            out.flush();  &#13;&#10;&#9;}&#13;&#10;    catch(Exception e1)&#13;&#10;&#9;{&#13;&#10;        return &quot;ERROR : encounterd Exception &quot; + e1.printStackTrace(); &#13;&#10;&#9;}&#13;&#10;&#13;&#10;    finally&#13;&#10;    {&#13;&#10;        try&#13;&#10;&#9;&#9;{&#13;&#10;            if (out != null)&#13;&#10;                out.close();&#13;&#10;&#9;&#9;&#13;&#10;            if (reader != null)        &#13;&#10;                reader.close();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;catch (Exception e2)&#13;&#10;&#9;&#9;{&#13;&#10;            return &quot;ERROR : encounterd Exception &quot; + e2.printStackTrace(); &#13;&#10;&#9;&#9;}&#13;&#10;&#13;&#10;        return response;&#13;&#10;    }&#13;&#10;}&#13;&#10;&#13;&#10;return ReadValues();</script>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="47c0af44-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="47c0af44-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="91472D7F722911ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
