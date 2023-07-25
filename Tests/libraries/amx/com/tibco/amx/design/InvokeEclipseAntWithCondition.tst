<?xml version="1.0" ?>

<TestCase name="InvokeEclipseAntWithCondition" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/19/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/05/2023" host="na2devasgaks01" />
</meta>

<id>84d762a0</id>
<Documentation>Invokes the TIBCO BusinessStudio Ant utility based on user condition.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTIwMTk3MjEzMDQ=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>studioHome</key>
    <value></value>
    <name>BusinessStudio home folder. Required.</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDir</key>
    <value>Value</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFile</key>
    <value></value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value></value>
    <name>Name of the build target to be invoked.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value></value>
    <name>Absolute path to the eclipse workspace. optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value></value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1800</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
    <Parameter>
    <key>userCondition</key>
    <value></value>
    <name>User condition. If assessed to true DAA generation will proceed else skipped</name>
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
    <key>lisa.createDAA.rsp</key>
    <value></value>
    <name>lisa.createDAA.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.createDAA.rsp.time</key>
    <value></value>
    <name>lisa.createDAA.rsp.time</name>
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
    <key>lisa.supportedOrNot.rsp</key>
    <value></value>
    <name>lisa.supportedOrNot.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.supportedOrNot.rsp.time</key>
    <value></value>
    <name>lisa.supportedOrNot.rsp.time</name>
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
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>platformoption</key>
    <value></value>
    <name>platformoption</name>
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

    <Node name="supportedOrNot" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="84d762a0-supportedOrNot" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="log" > 

<Documentation>This feature is not supported on all OS</Documentation>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.supportedOrNot.rsp</valueToFilterKey>
      <prop>platformoption</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>DAA generation is skipped. Feature not supported on this OS or user condition assessed to false</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<onerror>abort</onerror>
<script>/*&#13;&#10;if (os_name.contains(&quot;Linux&quot;)) { // supported&#13;&#10; return true;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;Windows&quot;)) { // supported &#13;&#10; return true;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;SunOS&quot;)) { // supported&#13;&#10; return true;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;HP-UX&quot;)) { // not supported&#13;&#10; return false;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;AIX&quot;)) { // not supported&#13;&#10; return false;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;Mac&quot;)) { // not supported&#13;&#10; return false;&#13;&#10;}&#13;&#10;&#13;&#10;// by default, just skip that test case&#13;&#10;return false;&#13;&#10;*/&#13;&#10;//return userCondition;&#13;&#10;&#13;&#10;//modified below code by Akshay Karkare on 5th Jan 2023&#13;&#10;import java.io.File;&#13;&#10;String ext = &quot;&quot;;&#13;&#10;//String userCondition=&quot;true&quot;;&#13;&#10;if (os_name.contains(&quot;Windows&quot;))&#13;&#10; ext = &quot;.exe&quot;;&#13;&#10;File exe = new File(TIBCO_BS_HOME.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;/eclipse/amx_eclipse_ant&quot; + ext);&#13;&#10;if (exe.exists()&amp;&amp; (userCondition))&#13;&#10; return true;&#13;&#10;else&#13;&#10; return false;&#13;&#10;</script>
    </Node>


    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="84d762a0-log" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyInputVariables" > 

<log>Invoking ant with following variables:&#13;&#10;studioHome={{studioHome}}&#13;&#10;buildFile={{buildFile}}&#13;&#10;data={{data}}&#13;&#10;propertyFile={{propertyFile}}&#13;&#10;propertyList={{propertyList}}&#13;&#10;target={{target}}&#13;&#10;projectBaseDir={{projectBaseDir}}&#13;&#10;</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="84d762a0-verifyInputVariables" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createDAA" > 


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
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String errorStr = &quot;Fail: &quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;            if ((studioHome == null) || (studioHome.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;studioHome cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;           &#13;&#10;&#9;&#9;&#9;File studioHome2 = new File(testExec.parseInState(studioHome).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;if (!studioHome2.exists()) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;Studio home not found: &quot;+studioHome);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;if ((buildFile == null) || (buildFile.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;buildFile cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;           &#13;&#10;&#9;&#9;&#9;File buildFile2 = new File(testExec.parseInState(buildFile).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;if (!buildFile2.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;Build file not found/cannot be read: &quot;+buildFile);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;if (!buildFile2.isFile()) {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;build file is not a normal file: &quot;+buildFile);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;            if ((data == null) || (data.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;data cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;File propertyFile2 = null;&#13;&#10;&#9;&#9;&#9;if ((propertyFile != null) &amp;&amp; (!propertyFile.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;propertyFile = new File(testExec.parseInState(propertyFile).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if (!propertyFile2.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;Property file not found/cannot be read it: &quot;+propertyFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;if (!propertyFile.isFile()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;property file is not a normal file: &quot;+propertyFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;File projectBaseDir2 = null;&#13;&#10;&#9;&#9;&#9;if ((projectBaseDir != null) &amp;&amp; (!projectBaseDir.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;projectBaseDir2 = new File(testExec.parseInState(projectBaseDir).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if((!projectBaseDir2.exists()) || (!projectBaseDir2.isDirectory())) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;The project base directory is not valid: &quot;+projectBaseDir);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;             &#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = errorStr + e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="createDAA" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="84d762a0-createDAA" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert142] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/design/InvokeEclipseAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>studioHome</key>
    <value>{{studioHome}}</value>
    <name>BusinessStudio home folder. Required.</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDir</key>
    <value>{{projectBaseDir}}</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFile</key>
    <value>{{buildFile}}</value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value>{{target}}</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value>{{data}}</value>
    <name>Absolute path to the Eclipse workspace. Required.</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value>{{propertyFile}}</value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>{{propertyList}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1800</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="84d762a0-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="84d762a0-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="F3F2E1EF7F7711EDA0A8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
