<?xml version="1.0" ?>

<TestCase name="GetEMSAdminObject" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/05/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/05/2023" host="na2devasgaks01" />
</meta>

<id>ecf12ae8</id>
<Documentation>Connects to an EMS Admin server and returns the Admin object.&#13;&#10;SSL connection is supported but hostname verification is disabled.&#13;&#10;Make sure the TIBCO EMS Admin jar is in the LISA classpath</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTc1MTQ0Nzg2NA==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>url</key>
    <value>ssl://sbagi-mbp:7243</value>
    <name>Url to connect to: tcp or ssl</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>admin</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.connect.rsp</key>
    <value></value>
    <name>lisa.connect.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.connect.rsp.time</key>
    <value></value>
    <name>lisa.connect.rsp.time</name>
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
    <key>lisa.validate.rsp</key>
    <value></value>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value></value>
    <name>lisa.validate.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="ecf12ae8-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Connecting to EMS Admin with following parameters:&#13;&#10;url: {{url}}&#13;&#10;user: {{username}}&#13;&#10;password: {{password}}&#13;&#10;trustedCertificate: {{=testExec.parseInState(trustedCertificate).replace(&quot;\\&quot;,&quot;/&quot;)}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="ecf12ae8-validate" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="connect" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>EMS Validation has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Validation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>String successMsg = &quot;EMS Validation Success&quot;; // Do not modify, assertions on these strings might exist.&#13;&#10;String errorMsg = &quot;EMS Validation Error&quot;;&#13;&#10;&#13;&#10;// Check EMS Admin is loadable&#13;&#10;try {&#13;&#10;    Class.forName(&quot;com.tibco.tibjms.admin.TibjmsAdmin&quot;);&#13;&#10;    return successMsg;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    return errorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage();&#13;&#10;}</script>
    </Node>


    <Node name="connect" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="ecf12ae8-connect" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>EMS Connection has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>&#13;&#10;import java.util.Hashtable;&#13;&#10;import com.tibco.tibjms.admin.TibjmsAdmin;&#13;&#10;import com.tibco.tibjms.TibjmsSSL;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;&#13;&#10;String url = testExec.parseInState(url);&#13;&#10;String username = testExec.parseInState(username);&#13;&#10;String password = testExec.parseInState(password);&#13;&#10;String trustedCertificate = testExec.parseInState(trustedCertificate).replace(&quot;\\&quot;,&quot;/&quot;);&#13;&#10;TibjmsAdmin admin;&#13;&#10;&#13;&#10;try {&#13;&#10;    // initialize SSL environment if needed&#13;&#10;    if (url.startsWith(&quot;ssl&quot;)) {&#13;&#10;        Hashtable sslEnvironment = new Hashtable();&#13;&#10;        sslEnvironment.put(com.tibco.tibjms.TibjmsSSL.TRUSTED_CERTIFICATES, trustedCertificate);&#13;&#10;        //sslEnvironment.put(com.tibco.tibjms.TibjmsSSL.IDENTITY, &quot;C:/tibcoems610/ems/6.1/samples/certs/client_identity.p12&quot;);&#13;&#10;        //sslEnvironment.put(com.tibco.tibjms.TibjmsSSL.PASSWORD, &quot;password&quot;);&#13;&#10;        //sslEnvironment.put(com.tibco.tibjms.TibjmsSSL.EXPECTED_HOST_NAME, &quot;sbagi-mbp&quot;);&#13;&#10;        sslEnvironment.put(com.tibco.tibjms.TibjmsSSL.ENABLE_VERIFY_HOST_NAME, new Boolean(false));&#13;&#10;        admin = new TibjmsAdmin(url, username, password, sslEnvironment);&#13;&#10;    }&#13;&#10;    else&#13;&#10;        admin = new TibjmsAdmin(url, username, password);&#13;&#10;    return admin;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    return errorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage();&#13;&#10;}</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="10B4B5188CDE11EDAFE8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="ecf12ae8-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="ecf12ae8-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
