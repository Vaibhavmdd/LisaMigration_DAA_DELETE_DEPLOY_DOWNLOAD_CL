<?xml version="1.0" ?>

<TestCase name="5.1" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/05/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/07/2023" host="na2devasgaks01" />
</meta>

<id>a1d828a5</id>
<Documentation>Description : Test Declared / Undeclared fault with AMX and BW Provider&#13;&#10;Scenario: &#9;Composite 1: &#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) &lt;-&gt; JAVA &lt;-&gt; JAVA &lt;-&gt; SOAP BT(HTTP) (Configured for AMX Provider)&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;   SOAP BT(HTTP) (Configured for BW Provider)&#13;&#10;&#9;&#9;&#9;Composite 2:&#9;&#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) &lt;-&gt; JAVA&#13;&#10;&#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE5MzU5Njg1MDY=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="a1d828a5-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createdaa" > 

<file>C:\Lisa1072\Projects\BATAutomation\Tests\bat\5.1\data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="createdaa" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-createdaa" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/design/InvokeEclipseAntWithCondition.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>studioHome</key>
    <value>{{TIBCO_BS_HOME}}</value>
    <name>BusinessStudio home folder. Required.</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDir</key>
    <value>Value</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFile</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value>ImportAndRegenerateDAA</value>
    <name>Name of the build target to be invoked.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value>{{tibco.test.case.log.dir}}/WS</value>
    <name>Absolute path to the eclipse workspace. optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},soa.project.loc={{=soa_project_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},java.project.loc={{=java_project_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},projectName={{projectName}},compositeName1={{compositeName1}},daa1=&quot;{{daa1}}&quot;,compositeName2={{compositeName2}},daa2={{daa2}},featureid={{featureid}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1800</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
    <Parameter>
    <key>userCondition</key>
    <value>{{=(regenerateDAA.equals(true))?true:false}}</value>
    <name>User condition. If assessed to true DAA generation will proceed else skipped</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>platformoption</save>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invoke-AMX-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
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
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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


    <Node name="invoke-AMX-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-invoke-AMX-Service" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Consumer-DeclaredFault" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Title" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Title}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Title}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Author" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Author}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Author}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Date" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Date}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Date}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for ISBN" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{ISBN}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{ISBN}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Publisher" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Publisher}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Publisher}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Echo string" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Echo}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Echo}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for ServiceProvider" type="com.itko.lisa.test.CheckResultContains">
<log>Look for &quot;Response sent from {{AMX.ServiceProvider}}&quot; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Response sent from {{AMX.ServiceProvider}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tBTVguU2VydmljZVByb3ZpZGVyfX0iPg0KICAgICAgICA8bnMxOlRpdGxlPnt7VGl0bGV9fTwvbnMxOlRpdGxlPg0KICAgICAgICA8bnMxOkF1dGhvcj57e0F1dGhvcn19PC9uczE6QXV0aG9yPg0KICAgICAgICA8bnMxOkRhdGU+e3tEYXRlfX08L25zMTpEYXRlPg0KICAgICAgICA8bnMxOklTQk4+e3tJU0JOfX08L25zMTpJU0JOPg0KICAgICAgICA8bnMxOlB1Ymxpc2hlcj57e1B1Ymxpc2hlcn19PC9uczE6UHVibGlzaGVyPg0KICAgICAgPC9uczE6Qm9va1N0b3JlPg0KICAgICAgPG5zMjpFY2hvIHhtbG5zOm5zMj0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEveHNkL2dyb3VwIj57e0VjaG99fTwvbnMyOkVjaG8+DQogIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="Consumer-DeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-Consumer-DeclaredFault" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Consumer-UnDeclaredFault" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for FaultString" type="com.itko.lisa.test.CheckResultContains">
<log>Look for Fault returned from Consumerfor an author with title - {{Title}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fault returned from Consumer for an author with title -{{Title}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tBTVguU2VydmljZVByb3ZpZGVyfX0iPg0KICAgICAgICA8bnMxOlRpdGxlPnt7VGl0bGV9fTwvbnMxOlRpdGxlPg0KICAgICAgICA8bnMxOkF1dGhvcj57e0NvbnN1bWVyLURlY2xhcmVkRmF1bHR9fTwvbnMxOkF1dGhvcj4NCiAgICAgICAgPG5zMTpEYXRlPnt7RGF0ZX19PC9uczE6RGF0ZT4NCiAgICAgICAgPG5zMTpJU0JOPnt7SVNCTn19PC9uczE6SVNCTj4NCiAgICAgICAgPG5zMTpQdWJsaXNoZXI+e3tQdWJsaXNoZXJ9fTwvbnMxOlB1Ymxpc2hlcj4NCiAgICAgIDwvbnMxOkJvb2tTdG9yZT4NCiAgICAgIDxuczI6RWNobyB4bWxuczpuczI9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hzZC9ncm91cCI+e3tFY2hvfX08L25zMjpFY2hvPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>continue</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="Consumer-UnDeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-Consumer-UnDeclaredFault" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="DeclaredFault-AMX-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for FaultString" type="com.itko.lisa.test.CheckResultContains">
<log>Look for java.lang.RuntimeException: Undeclared fault from Consumer for an author with title - {{Title}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>java.lang.RuntimeException: Undeclared fault from Consumer for an author with title -{{Title}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tBTVguU2VydmljZVByb3ZpZGVyfX0iPg0KICAgICAgICA8bnMxOlRpdGxlPnt7VGl0bGV9fTwvbnMxOlRpdGxlPg0KICAgICAgICA8bnMxOkF1dGhvcj57e0NvbnN1bWVyLVVuRGVjbGFyZWRGYXVsdH19PC9uczE6QXV0aG9yPg0KICAgICAgICA8bnMxOkRhdGU+e3tEYXRlfX08L25zMTpEYXRlPg0KICAgICAgICA8bnMxOklTQk4+e3tJU0JOfX08L25zMTpJU0JOPg0KICAgICAgICA8bnMxOlB1Ymxpc2hlcj57e1B1Ymxpc2hlcn19PC9uczE6UHVibGlzaGVyPg0KICAgICAgPC9uczE6Qm9va1N0b3JlPg0KICAgICAgPG5zMjpFY2hvIHhtbG5zOm5zMj0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEveHNkL2dyb3VwIj57e0VjaG99fTwvbnMyOkVjaG8+DQogIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>continue</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="DeclaredFault-AMX-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-DeclaredFault-AMX-Service" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="UnDeclaredFault-AMX-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for FaultString" type="com.itko.lisa.test.CheckResultContains">
<log>Look for Declared Fault from AMX Provider for an author with title - {{Title}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Declared Fault from AMX Provider for an author with title - {{Title}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for FaultDetail" type="com.itko.lisa.test.CheckResultContains">
<log>Look for Declared Fault from AMX Provider for an author with title - {{Title}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Declared Fault from AMX Provider for an author with title - {{Title}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tBTVguU2VydmljZVByb3ZpZGVyfX0iPg0KICAgICAgICA8bnMxOlRpdGxlPnt7VGl0bGV9fTwvbnMxOlRpdGxlPg0KICAgICAgICA8bnMxOkF1dGhvcj57e0RlY2xhcmVkRmF1bHR9fTwvbnMxOkF1dGhvcj4NCiAgICAgICAgPG5zMTpEYXRlPnt7RGF0ZX19PC9uczE6RGF0ZT4NCiAgICAgICAgPG5zMTpJU0JOPnt7SVNCTn19PC9uczE6SVNCTj4NCiAgICAgICAgPG5zMTpQdWJsaXNoZXI+e3tQdWJsaXNoZXJ9fTwvbnMxOlB1Ymxpc2hlcj4NCiAgICAgIDwvbnMxOkJvb2tTdG9yZT4NCiAgICAgIDxuczI6RWNobyB4bWxuczpuczI9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hzZC9ncm91cCI+e3tFY2hvfX08L25zMjpFY2hvPg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>continue</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="UnDeclaredFault-AMX-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-UnDeclaredFault-AMX-Service" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invoke-BW-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for FaultString" type="com.itko.lisa.test.CheckResultContains">
<log>Look for Undeclared fault from AMX Provider for an author with title - {{Title}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Undeclared fault from AMX Provider for an author with title - {{Title}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tBTVguU2VydmljZVByb3ZpZGVyfX0iPg0KICAgICAgICA8bnMxOlRpdGxlPnt7VGl0bGV9fTwvbnMxOlRpdGxlPg0KICAgICAgICA8bnMxOkF1dGhvcj57e1VuRGVjbGFyZWRGYXVsdH19PC9uczE6QXV0aG9yPg0KICAgICAgICA8bnMxOkRhdGU+e3tEYXRlfX08L25zMTpEYXRlPg0KICAgICAgICA8bnMxOklTQk4+e3tJU0JOfX08L25zMTpJU0JOPg0KICAgICAgICA8bnMxOlB1Ymxpc2hlcj57e1B1Ymxpc2hlcn19PC9uczE6UHVibGlzaGVyPg0KICAgICAgPC9uczE6Qm9va1N0b3JlPg0KICAgICAgPG5zMjpFY2hvIHhtbG5zOm5zMj0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEveHNkL2dyb3VwIj57e0VjaG99fTwvbnMyOkVjaG8+DQogIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>continue</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invoke-BW-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-invoke-BW-Service" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="DeclaredFault-BW-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Title" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Title}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Title}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Author" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Author}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Author}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Date" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Date}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Date}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for ISBN" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{ISBN}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{ISBN}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Publisher" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Publisher}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Publisher}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Echo string" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Echo}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Echo}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for ServiceProvider" type="com.itko.lisa.test.CheckResultContains">
<log>Look for  &quot;Response received from {{BW.ServiceProvider}}&quot; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Response received from {{BW.ServiceProvider}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tCVy5TZXJ2aWNlUHJvdmlkZXJ9fSI+DQogICAgICAgIDxuczE6VGl0bGU+e3tUaXRsZX19PC9uczE6VGl0bGU+DQogICAgICAgIDxuczE6QXV0aG9yPnt7QXV0aG9yfX08L25zMTpBdXRob3I+DQogICAgICAgIDxuczE6RGF0ZT57e0RhdGV9fTwvbnMxOkRhdGU+DQogICAgICAgIDxuczE6SVNCTj57e0lTQk59fTwvbnMxOklTQk4+DQogICAgICAgIDxuczE6UHVibGlzaGVyPnt7UHVibGlzaGVyfX08L25zMTpQdWJsaXNoZXI+DQogICAgICA8L25zMTpCb29rU3RvcmU+DQogICAgICA8bnMyOkVjaG8geG1sbnM6bnMyPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiPnt7RWNob319PC9uczI6RWNobz4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="DeclaredFault-BW-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-DeclaredFault-BW-Service" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="UnDeclaredFault-BW-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for FaultDetail" type="com.itko.lisa.test.CheckResultContains">
<log>Found Invalid Author {{DeclaredFault}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Invalid Author {{DeclaredFault}} with title - {{Title}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tCVy5TZXJ2aWNlUHJvdmlkZXJ9fSI+DQogICAgICAgIDxuczE6VGl0bGU+e3tUaXRsZX19PC9uczE6VGl0bGU+DQogICAgICAgIDxuczE6QXV0aG9yPnt7RGVjbGFyZWRGYXVsdH19PC9uczE6QXV0aG9yPg0KICAgICAgICA8bnMxOkRhdGU+e3tEYXRlfX08L25zMTpEYXRlPg0KICAgICAgICA8bnMxOklTQk4+e3tJU0JOfX08L25zMTpJU0JOPg0KICAgICAgICA8bnMxOlB1Ymxpc2hlcj57e1B1Ymxpc2hlcn19PC9uczE6UHVibGlzaGVyPg0KICAgICAgPC9uczE6Qm9va1N0b3JlPg0KICAgICAgPG5zMjpFY2hvIHhtbG5zOm5zMj0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEveHNkL2dyb3VwIj57e0VjaG99fTwvbnMyOkVjaG8+DQogIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>continue</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="UnDeclaredFault-BW-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-UnDeclaredFault-BW-Service" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for FaultString" type="com.itko.lisa.test.CheckResultContains">
<log>Found Internal Error in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Internal Error</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bookPortType/</url>
<action>GetBooksOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgICAgPG5zMTpCb29rU3RvcmUgeG1sbnM6bnMxPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiIFNlcnZpY2VQcm92aWRlcj0ie3tCVy5TZXJ2aWNlUHJvdmlkZXJ9fSI+DQogICAgICAgIDxuczE6VGl0bGU+e3tUaXRsZX19PC9uczE6VGl0bGU+DQogICAgICAgIDxuczE6QXV0aG9yPnt7VW5EZWNsYXJlZEZhdWx0fX08L25zMTpBdXRob3I+DQogICAgICAgIDxuczE6RGF0ZT57e0RhdGV9fTwvbnMxOkRhdGU+DQogICAgICAgIDxuczE6SVNCTj57e0lTQk59fTwvbnMxOklTQk4+DQogICAgICAgIDxuczE6UHVibGlzaGVyPnt7UHVibGlzaGVyfX08L25zMTpQdWJsaXNoZXI+DQogICAgICA8L25zMTpCb29rU3RvcmU+DQogICAgICA8bnMyOkVjaG8geG1sbnM6bnMyPSJodHRwOi8vdGliY28uY29tL21hdHJpeC9xYS94c2QvZ3JvdXAiPnt7RWNob319PC9uczI6RWNobz4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>continue</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-undeployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
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
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>undeploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Re-Deploy" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{LISA_TC_PATH}}/amxconfig.xml,remotePropsFile={{tibco.test.suite.config.path}}</value>
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


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="a1d828a5-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="a1d828a5-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="275B1408749611ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
