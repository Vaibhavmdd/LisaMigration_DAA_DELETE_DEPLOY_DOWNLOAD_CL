<?xml version="1.0" ?>

<TestCase name="ReplaceInFile" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/17/2022" host="na2devasgaks01" />
</meta>

<id>cbeebc6b</id>
<Documentation>Replaces one or more strings globally in a file.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0zMzc1NzU2MjE=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value></value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value></value>
    <name>New string value</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value></value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>prefix</key>
    <value>[[</value>
    <name>prefix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>suffix</key>
    <value>]]</value>
    <name>suffix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>Encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admpwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admusr</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.sid</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport_tcp</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emssecure</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>fileContent</key>
    <value></value>
    <name>fileContent</name>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
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
    <Parameter>
    <key>lisa.getFullPropertyList.rsp</key>
    <value></value>
    <name>lisa.getFullPropertyList.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getFullPropertyList.rsp.time</key>
    <value></value>
    <name>lisa.getFullPropertyList.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.readFile.rsp</key>
    <value></value>
    <name>lisa.readFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.readFile.rsp.time</key>
    <value></value>
    <name>lisa.readFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.replaceContent.rsp</key>
    <value></value>
    <name>lisa.replaceContent.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.replaceContent.rsp.time</key>
    <value></value>
    <name>lisa.replaceContent.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.setNameValuePairInFile.rsp</key>
    <value></value>
    <name>lisa.setNameValuePairInFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.setNameValuePairInFile.rsp.time</key>
    <value></value>
    <name>lisa.setNameValuePairInFile.rsp.time</name>
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
    <key>lisa.validate.rsp</key>
    <value></value>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value></value>
    <name>lisa.validate.rsp.time</name>
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
    <Parameter>
    <key>logappender.file.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>newFileContent</key>
    <value></value>
    <name>newFileContent</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>prefix1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>propList</key>
    <value></value>
    <name>propList</name>
    </Parameter>
    <Parameter>
    <key>queueConnectionfactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="cbeebc6b-Log" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Replacing the following Strings in file &quot;{{file}}&quot;:&#13;&#10;{{oldString}}&#13;&#10;{{propertyList}}&#13;&#10;{{propertyFileName}} </log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="cbeebc6b-validate" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getFullPropertyList" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert102" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Replace Validation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>baseSuccessMsg = &quot;Replace Validation Success&quot;;&#13;&#10;baseErrorMsg = &quot;Replace Validation Error&quot;; // there is an assertion on this string&#13;&#10;String file = testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;File f = new File(file);&#13;&#10;&#13;&#10;// Check if file exists&#13;&#10;if (!f.exists())&#13;&#10; return baseErrorMsg + &quot;: File (&apos;&quot; + file + &quot;&apos;) does not exist&quot;;&#13;&#10;&#13;&#10;// If fileName is a directory, we fail.&#13;&#10;if(f.isDirectory())&#13;&#10; return baseErrorMsg + &quot;: File passed is a directory! It must be a file.&quot;;&#13;&#10;&#13;&#10;// If cannot write&#13;&#10;if (!f.canWrite())&#13;&#10;  return baseErrorMsg + &quot;: Cannot write in file &apos;&quot; + file + &quot;&apos;.&quot;;&#13;&#10;&#13;&#10;//This can now be optional as users can use propertyFile/List.&#13;&#10;// Old string cannot be empty&#13;&#10;if((oldString.equals(&quot;&quot;)) &amp;&amp; (propertyFileName.equals(&quot;&quot;)) &amp;&amp; (propertyList.equals(&quot;&quot;)))&#13;&#10; return baseErrorMsg + &quot;: User should specify either oldString or propertyFileName or propertyList&quot;;&#13;&#10;&#13;&#10;File propertyFile = null;&#13;&#10;if ((propertyFileName != null) &amp;&amp; (!propertyFileName.equals(&quot;&quot;))) {&#13;&#10;&#9;propertyFile = new File(testExec.parseInState(propertyFileName).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;if (!propertyFile.canRead()) {&#13;&#10;&#9;&#9;return baseErrorMsg + &quot;: Property file not found/cannot read it. &quot;+propertyFileName;&#13;&#10;&#9;}&#13;&#10;&#9;if (!propertyFile.isFile()) {&#13;&#10;&#9;&#9;return baseErrorMsg + &quot;: property file is not a normal file. &quot;+propertyFileName;&#13;&#10;&#9;}&#9;&#9;&#13;&#10;}&#13;&#10;&#13;&#10;return baseSuccessMsg;</script>
    </Node>


    <Node name="getFullPropertyList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="cbeebc6b-getFullPropertyList" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="readFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getFullPropertyList.rsp</valueToFilterKey>
      <prop>propList</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert137" type="com.itko.lisa.test.CheckResultRegEx">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.util.Properties;&#13;&#10;&#13;&#10;&#9;Properties getPropList() {&#13;&#10;&#9;&#9;Properties props = new Properties();&#13;&#10;&#9;&#9;File propertyFile = null;&#13;&#10;&#9;&#9;FileInputStream fis = null;&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;oldStr = testExec.parseInState(oldString.toString());&#13;&#10;&#9;&#9;newStr = testExec.parseInState(newString.toString());&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;if ((propertyFileName != null) &amp;&amp; (!propertyFileName.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;propertyFile = new File(testExec.parseInState(propertyFileName).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;fis = new FileInputStream(propertyFile);&#13;&#10;&#9;&#9;&#9;&#9;props.load(fis);&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;if ((propertyList != null) &amp;&amp; (!propertyList.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;String [] propArray = propertyList.split(&quot;,&quot;);&#13;&#10;&#9;&#9;&#9;&#9;for (int i =0; i &lt; propArray.length; i++) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;String [] keyPair = propArray[i].split(&quot;=&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;if (keyPair.length == 1) continue;&#13;&#10;&#9;&#9;&#9;&#9;&#9;props.setProperty(keyPair[0],keyPair[1]);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;            if (!oldStr.equals(&quot;&quot;)) {&#13;&#10;                props.setProperty(oldStr,newStr);&#13;&#10;            }&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: Failed to compute property list.&quot;+e.getLocalizedMessage();&#9;&#9;&#9;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;finally {&#13;&#10;&#9;&#9;&#9;try {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;if (fis != null) fis.close();&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}catch(Exception ioe) {&#13;&#10;&#9;&#9;&#9;&#9;//ignore.&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return props;&#13;&#10;&#9;}&#13;&#10;return getPropList();</script>
    </Node>


    <Node name="readFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cbeebc6b-readFile" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="replaceContent" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.readFile.rsp</valueToFilterKey>
      <prop>fileContent</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{file}}</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>{{encoding}}</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="replaceContent" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="cbeebc6b-replaceContent" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="writeFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.replaceContent.rsp</valueToFilterKey>
      <prop>newFileContent</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;// convert to String because it can comes as Boolean or Integer!&#13;&#10;// Replace&#13;&#10;// return fileContent.replace(oldStr.subSequence(0,oldStr.length()), newStr.subSequence(0, newStr.length()));&#13;&#10;//return fileContent.substring(0, fileContent.indexOf(oldString)) + newString + fileContent.substring((fileContent.indexOf(oldString) + oldString.length()), fileContent.length());&#13;&#10;&#13;&#10;&#9;String replace() {&#13;&#10;&#9;&#9;String response = fileContent;&#13;&#10;        Properties props = propList;&#13;&#10;&#9;&#9;try {&#9;&#13;&#10;            if (prefix == null) prefix = &quot;&quot;;&#13;&#10;&#9;&#9;&#9;if (suffix == null) suffix = &quot;&quot;;&#13;&#10;&#13;&#10;&#9;&#9;&#9;if (!props.isEmpty()) {&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;Set keySet = props.keySet();&#13;&#10;&#9;&#9;&#9;&#9;for (Object key: keySet) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;String name = prefix+(String)key+suffix;&#13;&#10;&#9;&#9;&#9;&#9;&#9;String  value = testExec.parseInState((String)props.get(key));&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;response = response.replace(name.subSequence(0,name.length()), value.subSequence(0, value.length()));&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;}&#13;&#10;        catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: Failed to replace.&quot;+e.getLocalizedMessage();&#9;&#9;&#9;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;return replace();</script>
    </Node>


    <Node name="writeFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cbeebc6b-writeFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="success" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/WriteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{file}}</value>
    <name>File to write into</name>
    </Parameter>
    <Parameter>
    <key>content</key>
    <value>{{newFileContent}}</value>
    <name>Text content to write in the file</name>
    </Parameter>
    <Parameter>
    <key>createIfNotExist</key>
    <value>false</value>
    <name>If set to true, file is created if it does not exist.</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>{{encoding}}</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
    <Parameter>
    <key>native2ascii</key>
    <value>false</value>
    <name>If set to true, converts the content from native encoding to ASCII with escaped Unicode</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="success" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="cbeebc6b-success" 
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
<script>return &quot;Successfully replaced &apos;&quot; + propList.toString() + &quot;&apos; in file &apos;&quot; + testExec.parseInState(file.toString()) + &quot;&apos;&quot;;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="D634B9F964AE11EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="cbeebc6b-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="cbeebc6b-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
