<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Fri Sep 28 11:12:39 PDT 2007 -->


<TestCase name="SetNodeValueInXmlFile" version="2">
<id>3149f478</id>
<Documentation>Set the value of an element or attribute in a xml file.&#10;&#10;The node has to exist in the file first. Current value will be replaced by the new one.</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tNTc4NDc3MzAz</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>Absolute path of the xml file to be modified</name>
    </Parameter>
    <Parameter>
    <key>xpath</key>
    <value></value>
    <name>XPath formula to reach the node to be set</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value></value>
    <name>Value to set the node with</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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
    <key>lisa.setValue.rsp</key>
    <value>Set in Step setValue</value>
    </Parameter>
    <Parameter>
    <key>lisa.setValue.rsp.time</key>
    <value>Set in Step setValue</value>
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
    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>7</graphx>
<graphy>198</graphy>
      <log>Setting value of {{xpath}} in file {{file}} ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="setValue" > 

<graphx>62</graphx>
<graphy>29</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{file}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert132" >
<log>File not found: {{file}}</log>
<then>fail</then>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="setValue" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>241</graphx>
<graphy>29</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<script>import java.io.File;&#10;import java.io.FileInputStream;&#10;import java.io.FileOutputStream;&#10;&#10;import org.xml.sax.InputSource; &#10;&#10;import org.w3c.dom.DOMImplementation;&#10;import org.w3c.dom.Document;&#10;import org.w3c.dom.Node;&#10;import org.w3c.dom.bootstrap.DOMImplementationRegistry; &#10;&#10;import org.w3c.dom.ls.DOMImplementationLS;&#10;import org.w3c.dom.ls.LSSerializer;&#10;import org.w3c.dom.ls.LSOutput;&#10;import org.w3c.dom.ls.LSParser;&#10;&#10;import javax.xml.XMLConstants;&#10;import javax.xml.namespace.NamespaceContext;&#10;import javax.xml.xpath.XPathFactory;&#10;import javax.xml.xpath.XPath;&#10;import javax.xml.xpath.XPathExpression;&#10;import javax.xml.xpath.XPathConstants;&#10;&#10;// Main&#10;String baseErrorMsg = &quot;Setting node error&quot;; // Do not modify. Assertion might exist on these strings.&#10;String baseSuccessMsg = &quot;Setting node success&quot;;&#10;&#10;try {&#10;// Use DOM Level 3&#10;System.setProperty(DOMImplementationRegistry.PROPERTY, &quot;org.apache.xerces.dom.DOMImplementationSourceImpl&quot;);&#10;DOMImplementationRegistry registry = DOMImplementationRegistry.newInstance();&#10;DOMImplementation domImpl = registry.getDOMImplementation(&quot;LS 3.0&quot;);&#10;DOMImplementationLS implLS = (DOMImplementationLS)domImpl;&#10;LSParser parser = implLS.createLSParser(DOMImplementationLS.MODE_SYNCHRONOUS, null);&#10;Document document = parser.parseURI(file);&#10;&#10;// Build the namespace context. Will be used by the xPath object.&#10;NamespaceContext MyNamespaceContext = new NamespaceContext() {&#10; String getNamespaceURI(String prefix) {&#10;  return document.lookupNamespaceURI(prefix);&#10; } &#10; String getPrefix(String namespace) {&#10;  return document.lookupPrefix(namespace);&#10; }&#10; Iterator getPrefixes(String namespace) {&#10;  return null;&#10; }&#10;};&#10;&#10;// Get the Node and set its new value&#10;InputStream inputStream = new FileInputStream(new File(file));&#10;InputSource inputSource = new InputSource(inputStream);&#10;XPath xPath = XPathFactory.newInstance().newXPath();&#10;xPath.setNamespaceContext(MyNamespaceContext);&#10;String expression = xpath;&#10;Node node = (Node)xPath.evaluate(expression, inputSource, XPathConstants.NODE);&#10;if (node == null)&#10; return baseErrorMsg + &quot;: Node not found. XPath expression is probably wrong.&quot;;&#10;node.setTextContent(value.toString());&#10;Document document2 = node.getOwnerDocument();&#10;inputStream.close();&#10;&#10;// Write file&#10;LSSerializer domWriter = implLS.createLSSerializer();&#10;LSOutput output = implLS.createLSOutput();&#10;OutputStream outputStream = new FileOutputStream(new File(file));&#10;output.setByteStream(outputStream);&#10;domWriter.write(document2, output);&#10;outputStream.close();&#10;&#10;return baseSuccessMsg + &quot;: &quot; + node.getNodeName() + &quot; = &quot; + value;&#10;}&#10;catch (Exception e) {&#10; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#10;}&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>setValue has thrown Exception: {{lisa.setValue.rsp}}</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert54" >
<log>{{lisa.setValue.rsp}}</log>
<then>fail</then>
        <param>Setting node error</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>152</graphx>
<graphy>304</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>296</graphx>
<graphy>198</graphy>
    </Node>


</TestCase>
