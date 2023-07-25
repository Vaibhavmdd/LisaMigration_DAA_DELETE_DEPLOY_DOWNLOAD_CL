<?xml version="1.0" ?>

<TestCase name="deployments_1.17" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="06/01/2023" host="na2devasgora03" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="06/01/2023" host="na2devasgora03" />
</meta>

<id>618a2a9c</id>
<Documentation>Scenario&#13;&#10;========&#13;&#10;Description: Test the Wiring of a reference to a non-existing service.&#13;&#10;&#13;&#10;Composite 1: SOAP(Virtualization and SOAP/HTTP Binding) &lt;-&gt; JAVA (The SOAP servcie has HTTP endpoint) --&gt; Deploy&#13;&#10;Composite 2: SOAP(Virtualization and SOAP/HTTP Binding) &lt;-&gt; JAVA &lt;-&gt; Reference (SOAP/HTTP Binding)--&gt; Wire&#13;&#10;                                                      &#13;&#10;Wire: Reference (SOAP/HTTP Binding) [Composite 2] To Non existent SOAP service&#13;&#10;Result: Wiring will fail.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0yOTEzNzc3Mjg=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Properties Reader from data.txt" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="B578DFA7005D11EEAAE0506B8DD34562" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="618a2a9c-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Wiring to the non-existing binding does not work....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&apos;AMXWrongServiceBinding&apos; was not found</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{LISA_TC_PATH}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.myapp</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{LISA_TC_PATH}}/amxconfig.xml,remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
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
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="A7767205005D11EEAAE0506B8DD34562" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="618a2a9c-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="618a2a9c-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
