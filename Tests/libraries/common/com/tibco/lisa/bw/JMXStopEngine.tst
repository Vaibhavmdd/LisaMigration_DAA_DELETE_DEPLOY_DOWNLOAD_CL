<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Wed Feb 13 12:33:38 PST 2008 -->


<TestCase name="JMXStopEngine" version="2">
<id>866902e2</id>
<Documentation>Stop a BW Engine using JMX on the given host name and port number.&#10;&#10;Requirements:&#10;------------------&#10;-Need to use BW 5.6 or later version, which supports JMX.&#10;&#10;-The following JMX properties need to be set in the bwengine.tra file to enable JMX:&#10;java.property.com.sun.management.jmxremote=true&#10;java.property.com.sun.management.jmxremote.port=1111&#10;java.property.com.sun.management.jmxremote.authenticate=false&#10;java.property.com.sun.management.jmxremote.ssl=false&#10;Jmx.Enabled=true&#10;&#10;-The last property: Jmx.Enabled=true can actually be put into a config file and referred to accordingly&#10;&#10;For example, one can start bwengine:&#10;&#10;C:\tibco\bw\5.6\bin&gt;bwengine -p bwengine.tra C:\tsi-tests\tests\bw\func\engine\bpel\1.1\1_1&#10; &#10;-The machine host name and port number (e.g. 1111 above) are accessed in order to use JMX to stop the BW engine&#10;</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj00LjAuNSAoNDY4MSkmbm9kZXM9LTEzNDA3MDgwMTU=</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>host where bw is running</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>7645</value>
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

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>Stopping BW engine on {{host}}:{{port}} ...</log>
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
<onerror>fail</onerror>
<script>String baseErrorMsg = &quot;BW stop validation error&quot;; // Don&apos;t change. There is an assertion on that string.&#10;String baseSuccessMsg = &quot;BW stop validation success&quot;;&#10;&#10;if (host.equals(&quot;&quot;) || host.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: Host is required&quot;;&#10;&#10;if (port.equals(&quot;&quot;) || port.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#10; return baseErrorMsg + &quot;: Port is required&quot;;&#10;&#10;return baseSuccessMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert217" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>BW stop validation error</param>
</CheckResult>

    </Node>


    <Node name="checkPort" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="stopBWEngineUsingJMX" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/CheckPort.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
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

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert139" >
<log>Could not connect to {{host}}:{{port}}</log>
<then>fail</then>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="stopBWEngineUsingJMX" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>122</graphx>
<graphy>0</graphy>
<onerror>fail</onerror>
<script>import javax.management.*;&#10;import javax.management.remote.JMXConnector;&#10;import javax.management.remote.JMXConnectorFactory;&#10;import javax.management.remote.JMXServiceURL;&#10;&#10;StopBWEngineJMX (String hostname, Integer port) {&#10;&#10;  JMXConnector jmxc;&#10;  Boolean debug = true;&#10;&#10;  try {&#10;    // fos = new PrintStream(new FileOutputStream(&quot;c:/output_file.txt&quot;));&#10;    if (debug) fos = new PrintStream(new FileOutputStream(LISA_HOME + &quot;/tmp/debug.txt&quot;));&#10;    if (debug) fos.println(&quot;hostname:&quot; + hostname + &quot; port: &quot; + port);&#10;&#10;    String urlnameOrig = &quot;service:jmx:rmi:///jndi/rmi://&quot; + hostname + &quot;:&quot; + port + &quot;/jmxrmi&quot;;&#10;    &#10;    // Get rid of the &apos;&quot;&apos; double quote char just in case, otherwise the hostname &#10;    // with double quotes will not be recognized&#10;    String urlname = urlnameOrig.replaceAll(&quot;\&quot;&quot;, &quot;&quot;);&#10;&#10;    if (debug) fos.println(&quot;\nurlnameOrig: &quot; + urlnameOrig + &quot;\nurlname: &quot; + urlname );&#10;&#10;    // Create an RMI connector client and connect it to the RMI connector server&#10;    if (debug) fos.println(&quot;\nCreate an RMI connector client and &quot; + &quot;connect it to the RMI connector server&quot;);&#10;&#10;    JMXServiceURL url = new JMXServiceURL(urlname);&#10;&#10;    jmxc = JMXConnectorFactory.connect(url, null);&#10;&#10;    // Get an MBeanServerConnection&#10;    if (debug) fos.println(&quot;\nGet an MBeanServerConnection&quot;);&#10;&#10;    MBeanServerConnection mbsc = jmxc.getMBeanServerConnection();&#10;&#10;    // In the case when hostname is localhost, need to get the actual machine host name,&#10;    // as localhost is not recognized by the MBean Invoke operation&#10;    if (hostname.equalsIgnoreCase(&quot;localhost&quot;)) {&#10;      hostname = java.net.InetAddress.getLocalHost().getHostName();&#10;      if (debug) fos.println(&quot;Actual hostname: &quot; + hostname);&#10;    }&#10;&#10;    // Construct the object name string, need to put the double quotes back in&#10;    String ObjNameStr = &quot;com.tibco.bw:key=engine,name=\&quot;&quot; + hostname + &quot;\&quot;&quot;;&#10;    ObjectName MDBObjectName = new ObjectName(ObjNameStr);&#10;&#10;    // Invoke the mbean method to stop the engine&#10;    // *** NOTE ***&#10;    // Currently in BW6.0v1, the method works in stopping the bwengine.&#10;    // However, it returns: java.rmi.UnmarshalException: Error unmarshaling return header&#10;    // As a result, the jmx connection cannot be closed (as in a normal return after the call)&#10;    // Defect : 1-8EEPPZ&#10;    // If and when the defect is fixed, the normal path will be taken&#10;    mbsc.invoke(MDBObjectName, &quot;stopApplicationInstance&quot;, null, null);&#10;&#10;    // Close MBeanServer connection&#10;    //&#10;    if (debug) fos.println(&quot;\nClose the connection to the server&quot;);&#10;&#10;    jmxc.close();&#10;&#10;    if (debug) fos.println(&quot;\nJMX Connection closed&quot;);&#10;&#10;  } catch (Exception e) {&#10;      e.printStackTrace();&#10;      if (debug) fos.println(&quot;Got exception: &quot; + e);&#10;      throw new Exception(e);&#10;      //return(&quot;Got exception&quot; + e);&#10;  }&#10;  finally {&#10;    if (jmxc != null) {&#10;      if (debug) fos.println(&quot;\njmxc toString: &quot; + jmxc.toString());&#10;      //Defect above causing jmxc.close() to end abnormally&#10;      //jmx.close();&#10;   }&#10;  }&#10;}&#10;&#10;// Main&#10;return StopBWEngineJMX(host, port);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Assert58" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="stopBWEngineUsingJMX" > 

<graphx>244</graphx>
<graphy>122</graphy>
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


</TestCase>
