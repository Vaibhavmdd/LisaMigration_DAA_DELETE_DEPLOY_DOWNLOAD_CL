<?xml version="1.0" ?>

<TestCase name="9.1" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/02/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/05/2023" host="na2devasgaks01" />
</meta>

<id>cb9518c6</id>
<Documentation>Description : Health check of a given application(RSBT-672)&#13;&#10;Scenario:&#13;&#10;   step 1: Setup RT and RI required on the given Node&#13;&#10;   step 2: Deploy Rest In-Out application &quot;REST&lt;-&gt;Java&lt;-&gt;REST calling REST&lt;-&gt;Java&quot; and invoke GET, PUT, POST, DELETE operations&#13;&#10;   step 3: Perform REST service heathCheck and verify the responce.&#13;&#10;   step 4: Undeploy and delete the application.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTEwNzM1ODIwODU=</sig>
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
          uid="cb9518c6-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="SetupRT_and_RI" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="SetupRT_and_RI" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-SetupRT_and_RI" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setupRT  create.ri  install.ri</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_GET" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
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
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="REST_Invocation_GET" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_GET" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_PUT" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetGET</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetGET/{{GET_PP_STRING}}/{{GET_PP_BOOLEAN}}/{{GET_PP_BYTE}}/{{GET_PP_SHORT}}/{{GET_PP_INTEGER}}/{{GET_PP_LONG}}/{{GET_PP_FLOAT}}/{{GET_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>GET</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="REST_Invocation_PUT" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_PUT" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_DELETE" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetPUT</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetPUT/{{PUT_PP_STRING}}/{{PUT_PP_BOOLEAN}}/{{PUT_PP_BYTE}}/{{PUT_PP_SHORT}}/{{PUT_PP_INTEGER}}/{{PUT_PP_LONG}}/{{PUT_PP_FLOAT}}/{{PUT_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>PUT</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="REST_Invocation_DELETE" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_DELETE" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="Invoke_ServiceHeathCheck1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetDELETE</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetDELETE/{{DELETE_PP_STRING}}/{{DELETE_PP_BOOLEAN}}/{{DELETE_PP_BYTE}}/{{DELETE_PP_SHORT}}/{{DELETE_PP_INTEGER}}/{{DELETE_PP_LONG}}/{{DELETE_PP_FLOAT}}/{{DELETE_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>DELETE</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="Invoke_ServiceHeathCheck1" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-Invoke_ServiceHeathCheck1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="getEnvIDByName" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="HealthCheckResponse/applicationName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/applicationName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@applicationName=&quot;BAT91&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;Passed&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Service/nodeName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check Service/nodeName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Service&quot;]/@nodeName=&quot;{{env.node2.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java2&quot;]/@nodeName=&quot;{{env.node2.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java1&quot;]/@nodeName=&quot;{{env.node2.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="ComponentReference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is ComponentReference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;ComponentReference&quot;]/@name=&quot;PATH_QUERY_RrcResource&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Reference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is Reference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Reference&quot;]/@name=&quot;PATH_QUERY_RrcResource/RESTReference_Binding1&quot;</xpathq>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/checkHealth</url>
<content>&lt;HealthCheckRequest xmlns=&quot;http://www.tibco.com/healthcheck/&quot;&gt;&#13;&#10;&#13;&#10;  &lt;hops&gt;-1&lt;/hops&gt;&#13;&#10;&#13;&#10;  &lt;suppressStackTrace&gt;False&lt;/suppressStackTrace&gt;&#13;&#10;&#13;&#10;  &lt;timeout&gt;30000&lt;/timeout&gt;&#13;&#10;&#13;&#10;&lt;/HealthCheckRequest&gt;</content>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>POST</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="getEnvIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="cb9518c6-getEnvIDByName" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getApplicationFolderID" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getEnvIDByName.rsp</valueToFilterKey>
<prop>env_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getIdResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

<url>{{adminURL}}/amxadministrator.httpbasic/services/EnvService.EnvServiceHttpSoap11Endpoint/</url>
<action>urn:getId</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVudj0iaHR0cDovL2Vudi5hbXguYXBpLmFkbWluLmFtZi50aWJjby5jb20iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8ZW52OmdldElkPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgPGVudjpwYXJhbTA+e3tlbnYubmFtZX19PC9lbnY6cGFyYW0wPg0KICAgICAgPC9lbnY6Z2V0SWQ+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="getApplicationFolderID" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="cb9518c6-getApplicationFolderID" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getApplicationIDByName" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getApplicationFolderID.rsp</valueToFilterKey>
<prop>appfolder.id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getRootFolderResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;id&apos;])</xpathq>
      </Filter>

<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationFolderService.ApplicationFolderServiceHttpSoap11Endpoint/</url>
<action>urn:getRootFolder</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGZvbGRlci5hbXguYXBpLmFkbWluLmFtZi50aWJjby5jb20iIHhtbG5zOnhzZD0iaHR0cDovL3R5cGVzLmNvcmUuYXBpLmFkbWluLmFtZi50aWJjby5jb20veHNkIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGFwcDpnZXRSb290Rm9sZGVyPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgPGFwcDpwYXJhbTA+DQogICAgICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICAgICA8eHNkOmlkPnt7ZW52X2lkfX08L3hzZDppZD4NCiAgICAgICAgICAgIDwhLS1PcHRpb25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6bmFtZT4/PC94c2Q6bmFtZT4NCiAgICAgICAgIDwvYXBwOnBhcmFtMD4NCiAgICAgIDwvYXBwOmdldFJvb3RGb2xkZXI+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="getApplicationIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="cb9518c6-getApplicationIDByName" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getApplicationComponnetID" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <prop>app_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getApplicationIDByNameResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationService</url>
<action>urn:getApplicationIDByNames</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGxpY2F0aW9uLmFteC5hcGkuYWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRtaW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YXBwOmdldEFwcGxpY2F0aW9uSURCeU5hbWU+DQogICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8YXBwOnBhcmFtMD4NCiAgICAgICAgICAgIDwhLS1PcHRpb25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6aWQ+e3thcHBmb2xkZXIuaWR9fTwveHNkOmlkPg0KICAgICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDpuYW1lPj88L3hzZDpuYW1lPg0KICAgICAgICAgPC9hcHA6cGFyYW0wPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgPGFwcDpwYXJhbTE+QkFUOTE8L2FwcDpwYXJhbTE+DQogICAgICA8L2FwcDpnZXRBcHBsaWNhdGlvbklEQnlOYW1lPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="getApplicationComponnetID" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="cb9518c6-getApplicationComponnetID" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getNodeID(QANode2)" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getApplicationComponnetID.rsp</valueToFilterKey>
<prop>java3.comp.id</prop>
<xpathq>string(//*[local-name()=&quot;components&quot;][*[local-name()=&quot;name&quot;]=&quot;JavaHelloComponent&quot;]/*[local-name()=&quot;id&quot;])</xpathq>
      </Filter>

<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationService</url>
<action>urn:getApplicationDetails</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGxpY2F0aW9uLmFteC5hcGkuYWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRtaW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YXBwOmdldEFwcGxpY2F0aW9uRGV0YWlscz4NCiAgICAgICAgIDwhLS1PcHRpb25hbDotLT4NCiAgICAgICAgIDxhcHA6cGFyYW0wPg0KICAgICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDppZD57e2FwcF9pZH19PC94c2Q6aWQ+DQogICAgICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICAgICA8eHNkOm5hbWU+PzwveHNkOm5hbWU+DQogICAgICAgICA8L2FwcDpwYXJhbTA+DQogICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8YXBwOnBhcmFtMT5mYWxzZTwvYXBwOnBhcmFtMT4NCiAgICAgIDwvYXBwOmdldEFwcGxpY2F0aW9uRGV0YWlscz4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="getNodeID(QANode2)" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-getNodeID%28QANode2%29" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getNodeID(QANode2).rsp</valueToFilterKey>
      <prop>QANode2.id</prop>
      </Filter>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/api-ws/node/getNodeID.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>envName</key>
    <value>{{env.name}}</value>
    <name>Name for environment</name>
    </Parameter>
    <Parameter>
    <key>nodeName</key>
    <value>{{env.node2.name}}</value>
    <name>Name of Node</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>{{adminURL}}</value>
    <name>Admin URL</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Undeployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/undeployant.log</value>
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
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{deployTimeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="1CD9ED06B8EC11EDA4C8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="cb9518c6-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="cb9518c6-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
