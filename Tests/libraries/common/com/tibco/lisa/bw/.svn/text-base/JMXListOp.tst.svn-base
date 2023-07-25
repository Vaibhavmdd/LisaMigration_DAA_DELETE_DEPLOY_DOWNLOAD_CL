<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Fri Feb 08 18:17:25 PST 2008 -->


<TestCase name="JMXListOp" version="2">
<id>866902e2</id>
<Documentation>List out all the MBeans and their operations using JMX on the given host name and port number.&#10;&#10;Requirements:&#10;------------------&#10;-Need to use BW 5.6 or later version, which supports JMX.&#10;&#10;-The following JMX properties need to be set in the bwengine.tra file to enable JMX:&#10;java.property.com.sun.management.jmxremote=true&#10;java.property.com.sun.management.jmxremote.port=1111&#10;java.property.com.sun.management.jmxremote.authenticate=false&#10;java.property.com.sun.management.jmxremote.ssl=false&#10;Jmx.Enabled=true&#10;&#10;-The last property: Jmx.Enabled=true can actually be put into a config file and referred to accordingly&#10;&#10;For example, one can start bwengine:&#10;&#10;C:\tibco\bw\5.6\bin&gt;bwengine -p bwengine.tra C:\tsi-tests\tests\bw\func\engine\bpel\1.1\1_1&#10; &#10;-The machine host name and port number (e.g. 1111 above) are accessed in order to use JMX to stop the BW engine&#10;</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tODcyODc1MDAy</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>host where bw is running</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>port number of host</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp.time</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step0.rsp</key>
    <value>Set in Step Step0</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step0.rsp.time</key>
    <value>Set in Step Step0</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2.rsp</key>
    <value>Set in Step Step2</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2.rsp.time</key>
    <value>Set in Step Step2</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.StopBWEngineUsingJMX.rsp</key>
    <value>Set in Step StopBWEngineUsingJMX</value>
    </Parameter>
    <Parameter>
    <key>lisa.StopBWEngineUsingJMX.rsp.time</key>
    <value>Set in Step StopBWEngineUsingJMX</value>
    </Parameter>
    <Parameter>
    <key>instance</key>
    <value>Set in Step StopBWEngineUsingJMX</value>
    </Parameter>
    <Parameter>
    <key>hostname</key>
    <value>Set in Step StopBWEngineUsingJMX</value>
    </Parameter>
    <Parameter>
    <key>outlog</key>
    <value>Set in Step StopBWEngineUsingJMX</value>
    </Parameter>
    <Parameter>
    <key>returnStr</key>
    <value>Set in Step StopBWEngineUsingJMX</value>
    </Parameter>
    <Parameter>
    <key>lisa.JMXListOperations.rsp</key>
    <value>Set in Step JMXListOperations</value>
    </Parameter>
    <Parameter>
    <key>lisa.JMXListOperations.rsp.time</key>
    <value>Set in Step JMXListOperations</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPort.rsp</key>
    <value>Set in Step checkPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPort.rsp.time</key>
    <value>Set in Step checkPort</value>
    </Parameter>
    <Parameter>
    <key>lisa.listJMXOperations.rsp</key>
    <value>Set in Step listJMXOperations</value>
    </Parameter>
    <Parameter>
    <key>lisa.listJMXOperations.rsp.time</key>
    <value>Set in Step listJMXOperations</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>Getting BW JMX operations on {{host}}:{{port}} ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkPort" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<script>String baseErrorMsg = &quot;BW check validation error&quot;; // Don&apos;t change. There is an assertion on that string.&#10;String baseSuccessMsg = &quot;BW check validation success&quot;;&#10;&#10;if (host.equals(&quot;&quot;) || host.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: Host is required&quot;;&#10;&#10;if (port.equals(&quot;&quot;) || port.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: Port is required&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert323" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>BW check validation error</param>
</CheckResult>

    </Node>


    <Node name="checkPort" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="listJMXOperations" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/CheckPort.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{host}}</value>
    <name>Name of the host</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{port}}</value>
    <name>Port number to be checked</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="listJMXOperations" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>122</graphx>
<graphy>0</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<script>import java.util.Iterator;&#10;import java.util.Set;&#10;import javax.management.*;&#10;import javax.management.remote.JMXConnector;&#10;import javax.management.remote.JMXConnectorFactory;&#10;import javax.management.remote.JMXServiceURL;&#10;&#10;ListJMXOperations (String hostname, Integer port) {&#10;&#10;  JMXConnector jmxc;&#10;  Boolean debug = false;&#10;  StringWriter strWriter = new StringWriter();&#10;&#10;  if (debug) {&#10;    fos = new PrintStream(new FileOutputStream(LISA_HOME + &quot;/tmp/debug.txt&quot;));&#10;   } &#10;  else {&#10;    fos = new PrintWriter(strWriter);&#10;  }&#10;&#10;//  try {&#10;&#10;    if (debug) fos.println(&quot;hostname:&quot; + hostname + &quot; port: &quot; + port);&#10;&#10;    String urlnameOrig = &quot;service:jmx:rmi:///jndi/rmi://&quot; + hostname + &quot;:&quot; + port + &quot;/jmxrmi&quot;;&#10;    &#10;    // Get rid of the &apos;&quot;&apos; double quote char just in case, otherwise the hostname &#10;    // with double quotes will not be recognized&#10;    String urlname = urlnameOrig.replaceAll(&quot;\&quot;&quot;, &quot;&quot;);&#10;&#10;    if (debug) fos.println(&quot;\nurlnameOrig: &quot; + urlnameOrig + &quot;\nurlname: &quot; + urlname );&#10;&#10;    // Create an RMI connector client and connect it to the RMI connector server&#10;    if (debug) fos.println(&quot;\nCreate an RMI connector client and &quot; + &quot;connect it to the RMI connector server&quot;);&#10;&#10;    JMXServiceURL url = new JMXServiceURL(urlname);&#10;&#10;    jmxc = JMXConnectorFactory.connect(url, null);&#10;&#10;    // Get an MBeanServerConnection&#10;    if (debug) fos.println(&quot;\nGet an MBeanServerConnection&quot;);&#10;&#10;    MBeanServerConnection mbsc = jmxc.getMBeanServerConnection();&#10;&#10;    // In the case when hostname is localhost, need to get the actual machine host name,&#10;    // as localhost is not recognized by the MBean Invoke operation&#10;    if (hostname.equalsIgnoreCase(&quot;localhost&quot;)) {&#10;      hostname = java.net.InetAddress.getLocalHost().getHostName();&#10;      if (debug) fos.println(&quot;Actual hostname: &quot; + hostname);&#10;    }&#10;&#10;    // Construct the object name string, need to put the double quotes back in&#10;    String ObjNameStr = &quot;com.tibco.bw:key=engine,name=\&quot;&quot; + hostname + &quot;\&quot;&quot;;&#10;    ObjectName MDBObjectName = new ObjectName(ObjNameStr);&#10;&#10;    // Get MBean coun&#10;    fos.println(&quot;\nMBean count = &quot; + mbsc.getMBeanCount());&#10;&#10;    // Query MBean names&#10;    Set names = mbsc.queryNames(null, null);&#10;&#10;    // Get each Mbean and print its relevant info&#10;    for (Iterator i = names.iterator(); i.hasNext(); ) {&#10;&#9;&#9;&#10;      ObjectName ObjName = (ObjectName) i.next();&#10;&#10;      fos.println(&quot;================================================================================&quot;);&#10;      fos.println(&quot;MBean Name : &quot; + ObjName);&#10;&#10;      // Get the operations info for each Mbean&#10;      MBeanInfo mbean = mbsc.getMBeanInfo(ObjName);&#10;      MBeanOperationInfo[] mbeanOpInfo = mbean.getOperations();&#10;&#9;&#9;  &#10;      for (int j = 0; j &lt; mbeanOpInfo.length; j++) {&#10;        fos.println(&quot;------------------------------------------------------------------------&quot;);&#10;        fos.println (&quot;\tMBeanOperation[&quot; + j + &quot;] : &quot; + mbeanOpInfo[j].getName());&#10;        fos.println (&quot;\t   Description : &quot; + mbeanOpInfo[j].getDescription());&#10;&#10;&#9;MBeanParameterInfo[] mbeanParamInfo = mbeanOpInfo[j].getSignature();&#10;&#10;        // Get the paramters info for each Mbean&#10;        for (int kk = 0; kk &lt; mbeanParamInfo.length; kk++) {&#10;          fos.print (&quot;\t\t  Parameter[&quot; + kk + &quot;] : Name = &quot; + mbeanParamInfo[kk].getName());&#10;          fos.println (&quot;\tType : &quot; + mbeanParamInfo[kk].getType());&#10;          fos.println (&quot;\t\t     Description : &quot; + mbeanParamInfo[kk].getDescription());&#10;        }&#10;&#10;        fos.println (&quot;\t\tReturnType : &quot; + mbeanOpInfo[j].getReturnType());&#10;&#10;&#9;// It is possible to invoke the operation, e.g.&#10;        //if (mbeanOpInfo[j].getName().equalsIgnoreCase(&quot;stopApplicationInstance&quot;)) {&#10;&#9;//  mbsc.invoke(MDBObjectName, mbeanOpInfo[j].getName(), null, null);&#10;&#9;//}&#10;      }&#10;    }&#10;          &#10;    //    // Close MBeanServer connection&#10;    //&#10;    if (debug) fos.println(&quot;\nClose the connection to the server&quot;);&#10;&#10;    jmxc.close();&#10;&#10;    if (debug) fos.println(&quot;\nJMX Connection closed&quot;);&#10;&#10;    fos.close();&#10;    //String finaloutput = strWriter.toString();&#10;    return (strWriter.toString());&#10;&#10;// There is an assertion in this step that takes care of catching any exception,&#10;// so we don&apos;t need this catch block&#10;/*  } catch (Exception e) {&#10;      e.printStackTrace();&#10;      if (debug) fos.println(&quot;Got exception: &quot; + e);&#10;      return(&quot;Got exception&quot; + e);&#10;  }&#10;*/&#10;}&#10;&#10;// Main&#10;return ListJMXOperations(host, port);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Assert270" >
<log>Exception was thrown by listJMXOperations step</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>122</graphx>
<graphy>244</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="listJMXOperations" > 

<graphx>244</graphx>
<graphy>122</graphy>
    </Node>


</TestCase>
