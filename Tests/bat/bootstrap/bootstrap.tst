<?xml version="1.0" ?>

<TestCase name="bootstrap" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/08/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/08/2022" host="na2devasgaks01" />
</meta>

<id>30e183e0</id>
<Documentation>Create TPShell and Provision DB driver if Oracle/SQLServer/DB2&#13;&#10;Bootstrap TIBCOHost &#13;&#10;Bootstrap Admin SystemNode&#13;&#10;verify SystemNode Logs</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTc0MDA2MzEx</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="stopTIBCOHost" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-stopTIBCOHost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopTibcoHost.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Host on which to stop the TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/{{host.instance}}/host</value>
    <name>TIBCOHost instance directory</name>
    </Parameter>
    <Parameter>
    <key>mode</key>
    <value>abort</value>
    <name>Stop mode used for stopping the node (normal - immediate - abort). Default is normal.</name>
    </Parameter>
    <Parameter>
    <key>wait</key>
    <value>true</value>
    <name>If set to true the wait becomes synchronous and only returns when all node processes were stopped. Default is false</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to stop</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteTIBCOHostConfigFolder" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTIBCOHostConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteTIBCOHostConfigFolder" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteTIBCOAdminConfigFolder" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_HOST_CONFIG}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTIBCOAdminConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteTIBCOAdminConfigFolder" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="re-createTIBCOHostConfigFolder" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_AMXADMIN_CONFIG}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="re-createTIBCOHostConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-re-createTIBCOHostConfigFolder" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="re-createTIBCOAdminConfigFolder" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateDirectory.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>directory</key>
    <value>{{TIBCO_HOST_CONFIG}}</value>
    <name>Directory to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="re-createTIBCOAdminConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-re-createTIBCOAdminConfigFolder" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteAMXQueues" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateDirectory.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>directory</key>
    <value>{{TIBCO_AMXADMIN_CONFIG}}</value>
    <name>Directory to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteAMXQueues" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteAMXQueues" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="dbSwitch" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>{{amx.sv.queuePrefix}}.&gt;</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="dbSwitch" log=""
          type="com.itko.lisa.vse.StepSelectorStep" 
          version="1" 
          uid="30e183e0-dbSwitch" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createAdminPropFile" > 

<Documentation>Switches the DB with respect to the config file supplied.</Documentation>
<control>{{admin.db.url}}</control>
<start></start>
<end></end>
<noMatchStep>bootstrapTIBCOHost</noMatchStep>
<onExceptionStep>abort</onExceptionStep>
<table>
<Case>
<enabled>true</enabled>
<name>HSQL</name>
<delay>1000-10000</delay>
<criteria>hsql</criteria>
<compareType>FIND</compareType>
<nextStep>bootstrapTIBCOHost</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>Oracle</name>
<delay>1000-10000</delay>
<criteria>oracle</criteria>
<compareType>FIND</compareType>
<nextStep>deleteOracleDBUsername</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>SQLServer</name>
<delay>1000-10000</delay>
<criteria>sqlserver</criteria>
<compareType>FIND</compareType>
<nextStep>deleteSqlServerDB</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>DB2</name>
<delay>1000-10000</delay>
<criteria>db2</criteria>
<compareType>FIND</compareType>
<nextStep>cleanUpDB2forAdmin</nextStep>
</Case>
</table>
    </Node>


    <Node name="createAdminPropFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-createAdminPropFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="replaceInAdminPropFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.createAdminPropFile.rsp</valueToFilterKey>
      <prop>adminPropFile</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{tibco.test.suite.config.path}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.case.log.dir}}/admin.properties</value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>true</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="replaceInAdminPropFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-replaceInAdminPropFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="bootstrapAdmin" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{adminPropFile}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value>TIBCO_AMXADMIN_CONFIG</value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value>{{=TIBCO_AMXADMIN_CONFIG.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
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
    <value>{{</value>
    <name>prefix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>suffix</key>
    <value>}}</value>
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


    <Node name="bootstrapAdmin" log="create, start Admin Server"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-bootstrapAdmin" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkAdminUp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert107" type="com.itko.lisa.test.CheckResultContains">
<log>Bootstrap Admin failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.case.source.dir}}/../amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antBootstrapAdmin.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy-admin</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},bootstrap.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="checkAdminUp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-checkAdminUp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifySystemNodeLogExist" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Admin failed to start on time</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/IsAdminUp.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{adminURL}}</value>
    <name>Admin url. If provided 3 parameters below (host, port, secure) are ignored.</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>secure</key>
    <value>false</value>
    <name>Use SSL to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>user</key>
    <value>{{username}}</value>
    <name>User name to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{password}}</value>
    <name>User password to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifySystemNodeLogExist" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-verifySystemNodeLogExist" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find SystemNode.log in {{logappender.file.location}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/SystemNode.log</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="bootstrapTIBCOHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-bootstrapTIBCOHost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createAdminPropFile" > 

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/BootstrapTibcoHost.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>tibcoHostHome</key>
    <value>{{TIBCO_HOST_HOME}}</value>
    <name>TIBCOHost home</name>
    </Parameter>
    <Parameter>
    <key>tibcoConfigHome</key>
    <value>{{TIBCO_CONFIG_HOME}}</value>
    <name>TIBCO config home</name>
    </Parameter>
    <Parameter>
    <key>workingDir</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>Working directory. Prop file will be placed there if it is generated</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/antBootstrapTibcohost.log</value>
    <name>Ant log file</name>
    </Parameter>
    <Parameter>
    <key>thLogFile</key>
    <value>{{tibco.test.case.log.dir}}/tibcohost.log</value>
    <name>TIBCOHost log file</name>
    </Parameter>
    <Parameter>
    <key>nodeStdoutLogFile</key>
    <value>{{tibco.test.case.log.dir}}/node_stdout.log</value>
    <name>Node stdout log file</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to TIBCOHost property file. Optional. If set, all paramaters below are ignored.</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>{{host.instance}}</value>
    <name>TIBCOHost instance name</name>
    </Parameter>
    <Parameter>
    <key>processPrefix</key>
    <value>{{host.prefix}}</value>
    <name>Process prefix</name>
    </Parameter>
    <Parameter>
    <key>securityKeystoreFile</key>
    <value>{{TIBCO_HOST_HOME}}/templates/admin.default.ssl.trust.store.ts</value>
    <name>Keystore file</name>
    </Parameter>
    <Parameter>
    <key>securityKeystoreType</key>
    <value>JCEKS</value>
    <name>Keystore type</name>
    </Parameter>
    <Parameter>
    <key>securityKeystorePassword</key>
    <value>secret</value>
    <name>Keystore password</name>
    </Parameter>
    <Parameter>
    <key>qinServerUrl</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Qin notification server url</name>
    </Parameter>
    <Parameter>
    <key>qinGroupName</key>
    <value>{{admin.group.name}}</value>
    <name>Qin notification group name</name>
    </Parameter>
    <Parameter>
    <key>qinUserName</key>
    <value>admin</value>
    <name>Qin notification user name</name>
    </Parameter>
    <Parameter>
    <key>qinPassword</key>
    <value>#!oh6xQHiU57sueCtN73kO4w==</value>
    <name>Qin notification encoded user password</name>
    </Parameter>
    <Parameter>
    <key>qinStartupInterval</key>
    <value>3000</value>
    <name>Qin notification startup interval</name>
    </Parameter>
    <Parameter>
    <key>qinBackoffInterval</key>
    <value>0</value>
    <name>Qin notification backoff interval</name>
    </Parameter>
    <Parameter>
    <key>qinRecoveryTimerTimeout</key>
    <value>3000</value>
    <name>Qin notification recovery timer timeout</name>
    </Parameter>
    <Parameter>
    <key>qinRecoveryAttemptDelay</key>
    <value>2000</value>
    <name>Qin notification recovery attempt delay</name>
    </Parameter>
    <Parameter>
    <key>qinSecure</key>
    <value>false</value>
    <name>Qin notification secure</name>
    </Parameter>
    <Parameter>
    <key>qinTransportImplementation</key>
    <value>com.tibco.amf.hpa.core.runtime.management.impl.NotificationTransportImpl</value>
    <name>Qin notification transport implementation</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsUrl</key>
    <value>service:jmx:jmxmp://localhost:6041</value>
    <name>Credential server url</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsUser</key>
    <value>user1</value>
    <name>Credential server username</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsPassword</key>
    <value>\#!W3z0e8nURMyp29K/k84jWyRJa4jag4kvJcQdb7ozF4w=</value>
    <name>Credential server encoded password</name>
    </Parameter>
    <Parameter>
    <key>jmxInterface</key>
    <value>localhost</value>
    <name>JMX host</name>
    </Parameter>
    <Parameter>
    <key>jmxPort</key>
    <value>{{host.jmx.port}}</value>
    <name>JMX port</name>
    </Parameter>
    <Parameter>
    <key>jmxSecure</key>
    <value>false</value>
    <name>Secure JMX</name>
    </Parameter>
    <Parameter>
    <key>nodeType</key>
    <value>com.tibco.amf.hpa.tibcohost.node.hibernate.feature</value>
    <name>Node type</name>
    </Parameter>
    <Parameter>
    <key>nodeTypeVersion</key>
    <value>1.0.1</value>
    <name>Node type version</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>120</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>thPropFile</save>
</SaveProps>
    </Node>


    <Node name="deleteOracleDBUsername" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteOracleDBUsername" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createOracleDBUsername" > 

<Documentation>Delete Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteUserOracle.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{admin.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{admin.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>Oracle user that is deleted</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>password for the user that is deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createOracleDBUsername" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-createOracleDBUsername" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteCLoracleDBUsername" > 

<Documentation>Create Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateUserOracle.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{admin.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{admin.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>Oracle user that is created</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>password for the user that is created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteCLoracleDBUsername" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteCLoracleDBUsername" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createCLoracleDBUsername" > 

<Documentation>Delete Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteUserOracle.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{cl.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{cl.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{cl.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{cl.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{cl.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{cl.db.username}}</value>
    <name>Oracle user that is deleted</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{cl.db.password}}</value>
    <name>password for the user that is deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createCLoracleDBUsername" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-createCLoracleDBUsername" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteMCRoracleDBUsername" > 

<Documentation>Create Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateUserOracle.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{cl.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{cl.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{cl.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{cl.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{cl.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{cl.db.username}}</value>
    <name>Oracle user that is created</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{cl.db.password}}</value>
    <name>password for the user that is created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteMCRoracleDBUsername" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteMCRoracleDBUsername" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createMCRoracleDBUsername" > 

<Documentation>Delete Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteUserOracle.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{mcr.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{mcr.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{mcr.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{mcr.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{mcr.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{mcr.db.username}}</value>
    <name>Oracle user that is deleted</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{mcr.db.password}}</value>
    <name>password for the user that is deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createMCRoracleDBUsername" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-createMCRoracleDBUsername" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="provisionDBDriverFeature" > 

<Documentation>Create Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateUserOracle.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{mcr.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{mcr.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{mcr.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{mcr.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{mcr.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{mcr.db.username}}</value>
    <name>Oracle user that is created</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{mcr.db.password}}</value>
    <name>password for the user that is created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="provisionDBDriverFeature" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-provisionDBDriverFeature" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="bootstrapTIBCOHost" > 

<Documentation>Provision DB Driver Feature</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Oracle provisioning failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.case.source.dir}}/../amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/provisionDBDriver.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>instantiate-tpcl-shell</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{tibco.test.suite.config.path}},db.shell.name={{db.shell.name}},db.shell.version={{db.shell.version}},db.source.jar.location={{=testExec.parseInState(db_source_jar_location).replace(&quot;\\&quot;,&quot;/&quot;)}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteSqlServerDB" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-deleteSqlServerDB" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createSqlServerDB" > 

<Documentation>Delete SQL Server DB</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteDatabaseSqlServer.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createSqlServerDB" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-createSqlServerDB" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="alterSqlServerDB" > 

<Documentation>Create SQL Server DB</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateDatabaseSqlServer.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="alterSqlServerDB" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-alterSqlServerDB" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="provisionDBDriverFeature" > 

<Documentation>Alter DB for AMX</Documentation>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/PrepareForSQLServer.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be altered</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="cleanUpDB2forAdmin" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-cleanUpDB2forAdmin" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="cleanUpDB2forLogPayloadService" > 

<Documentation>Delete DB2 tables, triggers, indexes, views in the given database</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CleanUpDB2.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sysuser</key>
    <value>{{admin.db.admusr}}</value>
    <name>DB2 system user allowed to drop schema</name>
    </Parameter>
    <Parameter>
    <key>syspassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>DB2 system password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>DB2 database to connect to</name>
    </Parameter>
    <Parameter>
    <key>schema</key>
    <value>{{admin.db.username}}</value>
    <name>DB2 user (schema) getting the clean up</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="cleanUpDB2forLogPayloadService" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-cleanUpDB2forLogPayloadService" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="cleanUpDB2forMCRservice" > 

<Documentation>Delete DB2 tables, triggers, indexes, views in the given database</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CleanUpDB2.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{cl.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{cl.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sysuser</key>
    <value>{{cl.db.admusr}}</value>
    <name>DB2 system user allowed to drop schema</name>
    </Parameter>
    <Parameter>
    <key>syspassword</key>
    <value>{{cl.db.admpwd}}</value>
    <name>DB2 system password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{cl.db.dbname}}</value>
    <name>DB2 database to connect to</name>
    </Parameter>
    <Parameter>
    <key>schema</key>
    <value>{{cl.db.username}}</value>
    <name>DB2 user (schema) getting the clean up</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="cleanUpDB2forMCRservice" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-cleanUpDB2forMCRservice" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="provisionDBDriverFeature" > 

<Documentation>Delete DB2 tables, triggers, indexes, views in the given database</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CleanUpDB2.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{mcr.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{mcr.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sysuser</key>
    <value>{{mcr.db.admusr}}</value>
    <name>DB2 system user allowed to drop schema</name>
    </Parameter>
    <Parameter>
    <key>syspassword</key>
    <value>{{mcr.db.admpwd}}</value>
    <name>DB2 system password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{mcr.db.dbname}}</value>
    <name>DB2 database to connect to</name>
    </Parameter>
    <Parameter>
    <key>schema</key>
    <value>{{mcr.db.username}}</value>
    <name>DB2 user (schema) getting the clean up</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="CF058A2F777C11ED92AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="30e183e0-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="30e183e0-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
