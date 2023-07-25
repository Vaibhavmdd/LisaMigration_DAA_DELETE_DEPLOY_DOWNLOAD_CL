<?xml version="1.0" ?>

<TestCase name="ConfigureAMXSilentFile" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
</meta>

<id>55627170</id>
<Documentation>Configures download flag to false in the silent file for LGPL and Hibernate assemblies, configures the path for assemblies to refer to {{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/downloads/</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNzA2NTg3MTI4</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>silentFile</key>
    <value></value>
    <name>Silent file</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value></value>
    <name>Installer path</name>
    </Parameter>
    <Parameter>
    <key>sourceassemblyFolder</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/downloads/</value>
    <name>Assembly Folder location for copying </name>
    </Parameter>
    <Parameter>
    <key>destinationassemblyFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Destination Assembly Folder</name>
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
    <key>ValuesToReplace_RowNum</key>
    <value></value>
    <name>ValuesToReplace_RowNum</name>
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
    <key>hibernateZip</key>
    <value></value>
    <name>hibernateZip</name>
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
    <key>installSilentfile</key>
    <value></value>
    <name>installSilentfile</name>
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
    <key>lisa.copyAssemblies.rsp</key>
    <value></value>
    <name>lisa.copyAssemblies.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyAssemblies.rsp.time</key>
    <value></value>
    <name>lisa.copyAssemblies.rsp.time</name>
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
    <key>lisa.logProductName.rsp</key>
    <value></value>
    <name>lisa.logProductName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logProductName.rsp.time</key>
    <value></value>
    <name>lisa.logProductName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.setEnvInAmxSilentFile.rsp</key>
    <value></value>
    <name>lisa.setEnvInAmxSilentFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.setEnvInAmxSilentFile.rsp.time</key>
    <value></value>
    <name>lisa.setEnvInAmxSilentFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.setLGPAPathInAmxSilentFile.rsp</key>
    <value></value>
    <name>lisa.setLGPAPathInAmxSilentFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.setLGPAPathInAmxSilentFile.rsp.time</key>
    <value></value>
    <name>lisa.setLGPAPathInAmxSilentFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile.rsp</key>
    <value></value>
    <name>lisa.setTibcoConfigHomeInAmxSilentFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile.rsp.time</key>
    <value></value>
    <name>lisa.setTibcoConfigHomeInAmxSilentFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp</key>
    <value></value>
    <name>lisa.setTibcoHomeInAmxSilentFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp.time</key>
    <value></value>
    <name>lisa.setTibcoHomeInAmxSilentFile.rsp.time</name>
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
    <Parameter>
    <key>valueData</key>
    <value></value>
    <name>valueData</name>
    </Parameter>
    <Parameter>
    <key>workingDir</key>
    <value></value>
    <name>workingDir</name>
    </Parameter>
    <Parameter>
    <key>xpathData</key>
    <value></value>
    <name>xpathData</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="55627170-log" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="setEnvInAmxSilentFile" > 


      <!-- Data Sets -->
<readrec>ValuesToReplace</readrec>
<log>configuring silent file  {{silentFile}}&#13;&#10;installer zip file is {{amxZip}} &#13;&#10;source assembly folder location is {{sourceassemblyFolder}}&#13;&#10;destination assembly folder location is {{destinationassemblyFolder}}</log>
    </Node>


    <Node name="setEnvInAmxSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="55627170-setEnvInAmxSilentFile" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="setTibcoHomeInAmxSilentFile" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{silentFile}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value>newEnv</value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value>true</value>
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
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="setTibcoHomeInAmxSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="55627170-setTibcoHomeInAmxSilentFile" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="setTibcoConfigHomeInAmxSilentFile" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{silentFile}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value>tibcoHome</value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value>{{TIBCO_HOME}}</value>
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
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="setTibcoConfigHomeInAmxSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="55627170-setTibcoConfigHomeInAmxSilentFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="copyAssemblies" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{silentFile}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value>tibcoConfigHome</value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value>{{TIBCO_CONFIG_HOME}}</value>
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
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="copyAssemblies" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="55627170-copyAssemblies" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="setLGPAPathInAmxSilentFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getHibernateAssemblyName.rsp</valueToFilterKey>
      <prop>hibernateZip</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>// This routine is written in order to form LGPL zip path which relies on amxVersion and platform&#13;&#10;import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.IOException;&#13;&#10;&#13;&#10;&#13;&#10;String zipName = testExec.parseInState(amxZip).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;// look for zip file name&#13;&#10;zipName = zipName.substring(zipName.lastIndexOf(&quot;/&quot;)+1);&#13;&#10;String hibernateZipName = &quot;&quot;;&#13;&#10;&#13;&#10;String[] platforms = {&#13;&#10;                        &quot;aix53_power&quot;,&#13;&#10;                        &quot;linux24gl23_x86&quot;,&#13;&#10;                        &quot;linux26gl24_s390x&quot;,&#13;&#10;                        &quot;sol9_sparc&quot;,&#13;&#10;                        &quot;sol10_x86&quot;,&#13;&#10;                        &quot;win_x86&quot;,&#13;&#10;                      };&#13;&#10;&#13;&#10;String[] platforms_64 = {&#13;&#10;                        &quot;aix53_power_64&quot; , &#13;&#10;                        &quot;hpux112_ia64&quot;,&#13;&#10;                        &quot;linux24gl23_x86_64&quot;,&#13;&#10;                        &quot;sol9_sparc_64&quot;,&#13;&#10;                        &quot;sol10_x86_64&quot;,&#13;&#10;                        &quot;win_x86_64&quot;                 &#13;&#10;                      };&#13;&#10;&#13;&#10;String platform=&quot;&quot;;&#13;&#10;if (zipName.contains(&quot;64&quot;)) {&#13;&#10;    int index=0;&#13;&#10;        &#13;&#10;    for (String s : platforms_64) {&#13;&#10;        if (zipName.contains(platforms_64[index])) {&#13;&#10;            platform = platforms_64[index];&#13;&#10;        }&#13;&#10;    index++;&#13;&#10;    }&#13;&#10;}else {&#13;&#10;    int index=0;&#13;&#10;    for (String s : platforms) {&#13;&#10;        if (zipName.contains(platforms[index])) {&#13;&#10;            platform = platforms[index];&#13;&#10;        }&#13;&#10;    index++;&#13;&#10;    }&#13;&#10;}&#13;&#10;&#13;&#10;// copy assemblies &#13;&#10;//String assemplyFolder = testExec.parseInState(TIBCO_AMX_TEST_FUNC_RT) + &quot;/&quot; + platform;&#13;&#10;&#13;&#10;String assemplyFolder = testExec.parseInState(sourceassemblyFolder) + &quot;/&quot; + platform;&#13;&#10;File assemplyFolderDir = new File(assemplyFolder);&#13;&#10;&#13;&#10;File[] files = assemplyFolderDir.listFiles();&#13;&#10;   &#13;&#10;for( File fi : files ) {&#13;&#10;    try {&#13;&#10;        // want to avoid reading .svn folder&#13;&#10;        if (fi.isDirectory())&#13;&#10;            continue;&#13;&#10;&#13;&#10;        File fo = new File(destinationassemblyFolder + &quot;/assemblies&quot;);&#13;&#10;        fo = new File(fo, fi.getName());&#13;&#10;&#13;&#10;        FileInputStream fis  = new FileInputStream(fi);&#13;&#10;        FileOutputStream fos = new FileOutputStream(fo);&#13;&#10;  &#13;&#10;        byte[] buf = new byte[1024];&#13;&#10;        int i = 0;&#13;&#10;        while((i = fis.read(buf))!= -1) {&#13;&#10;            fos.write(buf, 0, i);&#13;&#10;        }&#13;&#10;        fis.close();&#13;&#10;        fos.close();&#13;&#10;    }&#13;&#10;    catch (Exception e) {&#13;&#10;        return baseErrorMsg + &quot;: &quot; + e.getMessage();&#13;&#10;    }&#13;&#10;}&#13;&#10;&#13;&#10;return assemplyFolder ;&#13;&#10;&#13;&#10;&#13;&#10;</script>
    </Node>


    <Node name="setLGPAPathInAmxSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="55627170-setLGPAPathInAmxSilentFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{silentFile}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value>lgplAssemblyPath</value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value>{{destinationassemblyFolder}}/assemblies</value>
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
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getHibernateAssemblyName" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="55627170-getHibernateAssemblyName" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="setHibernatePathInAmxSilentFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getHibernateAssemblyName.rsp</valueToFilterKey>
      <prop>hibernateZip</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>// This routine is written in order to form LGPL zip path which relies on amxVersion and platform&#13;&#10;&#13;&#10;String zipName = testExec.parseInState(amxZip).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;// look for zip file name&#13;&#10;zipName = zipName.substring(zipName.lastIndexOf(&quot;/&quot;)+1);&#13;&#10;String hibernateZipName = &quot;&quot;;&#13;&#10;&#13;&#10;String[] version = {&quot;3.1&quot;, &quot;3.2&quot; };&#13;&#10;String[] platforms = {&#13;&#10;                        &quot;aix53_power_64&quot;,&#13;&#10;                        &quot;aix53_power&quot; , &#13;&#10;                        &quot;hpux112_ia64&quot;,&#13;&#10;                        &quot;linux24gl23_x86_64&quot;,&#13;&#10;                        &quot;linux24gl23_x86&quot;,&#13;&#10;                        &quot;linux26gl24_s390x&quot;,&#13;&#10;                        &quot;sol9_sparc_64&quot;,&#13;&#10;                        &quot;sol9_sparc&quot;,&#13;&#10;                        &quot;sol10_x86_64&quot;,&#13;&#10;                        &quot;sol10_x86&quot;,&#13;&#10;                        &quot;win_x86_64&quot;,&#13;&#10;                        &quot;win_x86&quot;                 &#13;&#10;                      };&#13;&#10;&#13;&#10;int index=0;&#13;&#10;String platform=&quot;&quot;;&#13;&#10;for (String s : platforms) {&#13;&#10;    if (zipName.contains(platforms[index])) {&#13;&#10;        platform = platforms[index];&#13;&#10;    }&#13;&#10;    index++;&#13;&#10;}&#13;&#10;&#13;&#10;if ( zipName.contains(version[0]) ||&#13;&#10;     zipName.contains(version[1])&#13;&#10;   ) &#13;&#10;  &#13;&#10;{&#13;&#10;  hibernateZipName = &quot;assembly_tibco_com_tibco_tpcl_org_hibernate_feature_3.2.400.001.zip&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;return hibernateZipName;&#13;&#10;&#13;&#10;</script>
    </Node>


    <Node name="setHibernatePathInAmxSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="55627170-setHibernatePathInAmxSilentFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getLGPAAssemblyName" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{silentFile}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value>hibernateAssemblyPath</value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/downloads/{{hibernateZip}}</value>
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
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getLGPAAssemblyName" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="55627170-getLGPAAssemblyName" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="setLGPAPathInAmxSilentFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getLGPAAssemblyName.rsp</valueToFilterKey>
      <prop>lgpaZip</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>// This routine is written in order to form LGPL zip path which relies on amxVersion and platform&#13;&#10;&#13;&#10;String zipName = testExec.parseInState(amxZip).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;// look for zip file name&#13;&#10;zipName = zipName.substring(zipName.lastIndexOf(&quot;/&quot;)+1);&#13;&#10;String lgpaZipName=&quot;&quot;;&#13;&#10;&#13;&#10;String[] version = {&quot;3.1&quot;, &quot;3.2&quot; };&#13;&#10;String[] platforms = {&#13;&#10;                        &quot;aix53_power_64&quot;,&#13;&#10;                        &quot;aix53_power&quot; , &#13;&#10;                        &quot;hpux112_ia64&quot;,&#13;&#10;                        &quot;linux24gl23_x86_64&quot;,&#13;&#10;                        &quot;linux24gl23_x86&quot;,&#13;&#10;                        &quot;linux26gl24_s390x&quot;,&#13;&#10;                        &quot;sol9_sparc_64&quot;,&#13;&#10;                        &quot;sol9_sparc&quot;,&#13;&#10;                        &quot;sol10_x86_64&quot;,&#13;&#10;                        &quot;sol10_x86&quot;,&#13;&#10;                        &quot;win_x86_64&quot;,&#13;&#10;                        &quot;win_x86&quot;                 &#13;&#10;                      };&#13;&#10;&#13;&#10;int index=0;&#13;&#10;String platform=&quot;&quot;;&#13;&#10;for (String s : platforms) {&#13;&#10;    if (zipName.contains(platforms[index])) {&#13;&#10;        platform = platforms[index];&#13;&#10;    }&#13;&#10;    index++;&#13;&#10;}&#13;&#10;&#13;&#10;// install log shows that it downloads 2 .zip - silent file has only one entry&#13;&#10;&#13;&#10;if ( zipName.contains(version[0]) ) // 3.1.x &#13;&#10;{&#13;&#10;    if ( platform.equals(&quot;linux24gl23_x86_64&quot;) )&#13;&#10;    {&#13;&#10;        lgpaZipName = &quot;product_tibco_eclipse_lgpl_3.4.2.001_linux24gl23_x86_64.zip&quot;;&#13;&#10;        // product_tibco_eclipse_lgpl_3.5.2.001_linux24gl23_x86_64.zip&#13;&#10;    } else &#13;&#10;    if ( platform.equals(&quot;linux24gl23_x86&quot;) ) &#13;&#10;    {&#13;&#10;        lgpaZipName = &quot;product_tibco_eclipse_lgpl_3.4.2.001_linux24gl23_x86.zip&quot;;&#13;&#10;        //product_tibco_eclipse_lgpl_3.5.2.001_linux24gl23_x86.zip    &#13;&#10;    } else&#13;&#10;    {&#13;&#10;        lgpaZipName = &quot;product_tibco_eclipse_lgpl_3.5.2.001_&quot; + platform + &quot;.zip&quot;;&#13;&#10;    }&#13;&#10;}&#13;&#10;&#13;&#10;// 3.2.0 talks about downloading 2 zips - silent file has only one entries&#13;&#10;&#13;&#10;if ( zipName.contains(version[1]) ) // 3.2&#13;&#10;{&#13;&#10;    lgpaZipName = &quot;product_tibco_eclipse_lgpl_3.7.2.001_&quot; + platform + &quot;.zip&quot;;&#13;&#10;    // &quot;product_tibco_eclipse_lgpl_rcp_3.7.2.001&quot; + platform + &quot;.zip&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;return lgpaZipName;&#13;&#10;&#13;&#10;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="2F3116D64AC11EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="55627170-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log="Installation complete."
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="55627170-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="ValuesToReplace" atend="log" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAAWVmFsdWVzVG9SZXBsYWNlX1Jvd051bXQAATF0AAl4cGF0aERhdGF0ACkvcHJvcGVydGllcy9lbnRyeVtAa2V5PSJlbnZpcm9ubWVudERlc2MiXXQACXZhbHVlRGF0YXQAE3t7ZW52aXJvbm1lbnREZXNjfX14</sample>
<table>
<col>xpathData</col>
<col>valueData</col>
<tr>
<td>/properties/entry[@key=&quot;environmentDesc&quot;]</td>
<td>{{environmentDesc}}</td>
</tr>
<tr>
<td>/properties/entry[@key=&quot;environmentName&quot;]</td>
<td>{{environmentName}}</td>
</tr>
<tr>
<td>/properties/entry[@key=&quot;installationRoot&quot;]</td>
<td>{{tibcoHome}}</td>
</tr>
<tr>
<td>/properties/entry[@key=&quot;createNewEnvironment&quot;]</td>
<td>{{createNewEnvironment}}</td>
</tr>
</table>
    </DataSet>

</TestCase>
