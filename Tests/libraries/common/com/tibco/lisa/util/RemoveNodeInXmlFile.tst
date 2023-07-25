<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Jun 17 13:53:01 PDT 2011 -->


<TestCase name="RemoveNodeInXmlFile" version="2">
<id>3149f478</id>
<Documentation>Removes node(s) of type Element or Attribute in a xml file.&#13;&#10;If no nodes are found, the sub-process fails. </Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE4MDU4ODI4MjA=</sig>
<rootNode>log</rootNode>
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
    <name>XPath formula to reach the node to be removed</name>
    </Parameter>
</initState>

<resultState>
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
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.removeNode.rsp</key>
    <value>Set in Step removeNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.removeNode.rsp.time</key>
    <value>Set in Step removeNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
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

<graphx>7</graphx>
<graphy>198</graphy>
      <log>Removing Node(s): {{xpath}} in file {{file}} ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="removeNode" > 

<graphx>62</graphx>
<graphy>29</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
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
<CheckResult assertTrue="true" name="Assert132" type="com.itko.lisa.test.CheckResultContains">
<log>File not found: {{file}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="removeNode" log=""
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
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;&#13;&#10;import org.xml.sax.InputSource; &#13;&#10;&#13;&#10;import org.w3c.dom.DOMImplementation;&#13;&#10;import org.w3c.dom.Document;&#13;&#10;import org.w3c.dom.Node;&#13;&#10;import org.w3c.dom.NodeList;&#13;&#10;import org.w3c.dom.Element;&#13;&#10;import org.w3c.dom.bootstrap.DOMImplementationRegistry; &#13;&#10;&#13;&#10;import org.w3c.dom.ls.DOMImplementationLS;&#13;&#10;import org.w3c.dom.ls.LSSerializer;&#13;&#10;import org.w3c.dom.ls.LSOutput;&#13;&#10;import org.w3c.dom.ls.LSParser;&#13;&#10;&#13;&#10;import javax.xml.XMLConstants;&#13;&#10;import javax.xml.namespace.NamespaceContext;&#13;&#10;import javax.xml.xpath.XPathFactory;&#13;&#10;import javax.xml.xpath.XPath;&#13;&#10;import javax.xml.xpath.XPathExpression;&#13;&#10;import javax.xml.xpath.XPathConstants;&#13;&#10;&#13;&#10;// Main&#13;&#10;String baseErrorMsg = &quot;Removing node error&quot;; // Do not modify. Assertion might exist on these strings.&#13;&#10;String baseSuccessMsg = &quot;Removed node successfully&quot;;&#13;&#10;&#13;&#10;try {&#13;&#10;// Use DOM Level 3&#13;&#10;System.setProperty(DOMImplementationRegistry.PROPERTY, &quot;org.apache.xerces.dom.DOMImplementationSourceImpl&quot;);&#13;&#10;DOMImplementationRegistry registry = DOMImplementationRegistry.newInstance();&#13;&#10;DOMImplementation domImpl = registry.getDOMImplementation(&quot;LS 3.0&quot;);&#13;&#10;DOMImplementationLS implLS = (DOMImplementationLS)domImpl;&#13;&#10;LSParser parser = implLS.createLSParser(DOMImplementationLS.MODE_SYNCHRONOUS, null);&#13;&#10;Document document = parser.parseURI(file);&#13;&#10;&#13;&#10;// Build the namespace context. Will be used by the xPath object.&#13;&#10;NamespaceContext MyNamespaceContext = new NamespaceContext() {&#13;&#10; String getNamespaceURI(String prefix) {&#13;&#10;  return document.lookupNamespaceURI(prefix);&#13;&#10; } &#13;&#10; String getPrefix(String namespace) {&#13;&#10;  return document.lookupPrefix(namespace);&#13;&#10; }&#13;&#10; Iterator getPrefixes(String namespace) {&#13;&#10;  return null;&#13;&#10; }&#13;&#10;};&#13;&#10;&#13;&#10;// Get the Nodes and remove them&#13;&#10;InputStream inputStream = new FileInputStream(new File(file));&#13;&#10;InputSource inputSource = new InputSource(inputStream);&#13;&#10;XPath xPath = XPathFactory.newInstance().newXPath();&#13;&#10;xPath.setNamespaceContext(MyNamespaceContext);&#13;&#10;String expression = xpath;&#13;&#10;NodeList nodes = (NodeList)xPath.evaluate(expression, inputSource, XPathConstants.NODESET);&#13;&#10;if (nodes.getLength() == 0)&#13;&#10; return baseErrorMsg + &quot;: Node not found. XPath expression is probably wrong.&quot;;&#13;&#10;for (int i=0; i&lt;nodes.getLength(); i++) {&#13;&#10; Node node = nodes.item(i);&#13;&#10; if (node.getNodeType() == Node.ELEMENT_NODE) {&#13;&#10;  Node parentNode = node.getParentNode();&#13;&#10;  parentNode.removeChild(node);&#13;&#10; }&#13;&#10; else if (node.getNodeType() == Node.ATTRIBUTE_NODE) {&#13;&#10;  Element parentEl = node.getOwnerElement();&#13;&#10;  parentEl.removeAttribute(node.getNodeName());&#13;&#10; }&#13;&#10;}&#13;&#10;Document document2 = nodes.item(0).getOwnerDocument();&#13;&#10;inputStream.close();&#13;&#10;&#13;&#10;// Write file&#13;&#10;LSSerializer domWriter = implLS.createLSSerializer();&#13;&#10;LSOutput output = implLS.createLSOutput();&#13;&#10;OutputStream outputStream = new FileOutputStream(new File(file));&#13;&#10;output.setByteStream(outputStream);&#13;&#10;domWriter.write(document2, output);&#13;&#10;outputStream.close();&#13;&#10;&#13;&#10;String successMsg = baseSuccessMsg + &quot;: &quot; + nodes.getLength() + &quot; node(s): &quot;;&#13;&#10;for (int j=0; j&lt;nodes.getLength(); j++) {&#13;&#10; Node node = nodes.item(j);&#13;&#10; successMsg = successMsg + node.getNodeName() + &quot; - &quot;;&#13;&#10;}&#13;&#10;return successMsg;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10; return baseErrorMsg + &quot;: &quot; + e.getMessage();&#13;&#10;}&#13;&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>setValue has thrown Exception: {{lisa.removeNode.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert54" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.removeNode.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Removing node error</param>
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
