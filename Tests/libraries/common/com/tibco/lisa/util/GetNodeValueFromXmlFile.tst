<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Thu Feb 15 23:08:36 PST 2007 -->


<TestCase name="GetNodeValueFromXmlFile" version="2">
<id>442c632f</id>
<Documentation>Get the value of an element or attribute from a xml file.</Documentation>
<sig>ZWQ9MyZ0Y3Y9MiZsaXNhdj0zLjVlICgzMjMwKSZub2Rlcz0tMjEzMjkxNDcxMA==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>Absolute path of the xml file to be inspected</name>
    </Parameter>
    <Parameter>
    <key>xpath</key>
    <value></value>
    <name>XPath formula to reach the node to be retrieved</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getXmlFile.rsp</key>
    <value>Set in Step getXmlFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.getXmlFile.rsp.time</key>
    <value>Set in Step getXmlFile</value>
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
    <key>lisa.getResult.rsp</key>
    <value>Set in Step getResult</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResult.rsp.time</key>
    <value>Set in Step getResult</value>
    </Parameter>
    <Parameter>
    <key>xpathOutput</key>
    <value>Set in Step getResult</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Looking for {{xpath}} in {{file}} ...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getXmlFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>2</getEvents>
<sendConfig>true</sendConfig>
<sendCommonState>false</sendCommonState>
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
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert79" >
<log>File not found: {{file}}</log>
<then>fail</then>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="getXmlFile" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getResult" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Loc>{{file}}</Loc>
<PropKey>xmlFile</PropKey>
    </Node>


    <Node name="getResult" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>xmlFile</valueToFilterKey>
<prop>xpathOutput</prop>
<xpathq>{{xpath}}</xpathq>
      </Filter>

      <Filter type="com.itko.lisa.dynexec.FilterConvertObjToLastResponse">
                <prop>xpathOutput</prop>
        <toXML>false</toXML>
      </Filter>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


</TestCase>
