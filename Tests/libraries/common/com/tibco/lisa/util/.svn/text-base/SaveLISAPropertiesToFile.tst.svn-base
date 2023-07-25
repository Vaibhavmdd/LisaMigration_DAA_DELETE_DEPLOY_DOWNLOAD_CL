<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Thu Jan 11 15:04:13 PST 2007 -->


<TestCase name="SaveLISAPropertiesToFile" version="2">
<id>d879a86d</id>
<Documentation>Dump all the LISA properties and the state of the current test case into a file. &#10;The Option &quot;Send our Configuration&quot; needs to be checked if the properties of the test case that is calling this subprocess are to be saved.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjVkICgzMjIzKSZub2Rlcz0xNTk4MTE0NjY1</sig>
<rootNode>createOutputFile</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>outputFile</key>
    <value></value>
    <name>Absolute path of the file to which the properties should be dumped</name>
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
    <key>lisa.createOutputFile.rsp</key>
    <value>Set in Step createOutputFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.createOutputFile.rsp.time</key>
    <value>Set in Step createOutputFile</value>
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
    <key>lisa.saveProperties.rsp</key>
    <value>Set in Step saveProperties</value>
    </Parameter>
    <Parameter>
    <key>lisa.saveProperties.rsp.time</key>
    <value>Set in Step saveProperties</value>
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
    <Node name="createOutputFile" log="Creating the output file to save the properties"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="saveProperties" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<sendCommonState>false</sendCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{outputFile}}</value>
    <name>File to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="saveProperties" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>import java.util.Properties;&#10;import java.util.Enumeration;&#10;import java.io.InputStream;&#10;import java.io.IOException;&#10;import java.io.OutputStream;&#10;import java.io.FileOutputStream;&#10;import java.io.FileInputStream;&#10;&#10;String errorMsg = &quot;Error saving properties&quot;;&#10;&#10;saveProperties(String fileName) {&#10;&#10;   OutputStream propsFile;&#10;   &#10;   try {&#10;      File file = new File(fileName);&#10;      // If fileName is a directory, we fail.&#10;      if(file.isDirectory())&#10;         return errorMsg + &quot;: File passed is a directory! It must be a file.&quot;;&#10;&#10;      Properties p = new Properties(); //create new properties file&#10;      HashMap map = testExec.getAllState();  // Get all the properties in testcase&#10;      Set s = map.keySet();&#10;      Iterator itr = s.iterator();&#10;      String key = &quot;&quot;;&#10;      // Add all test case properties to the properties file&#10;      while(itr.hasNext()) {&#10;         key = itr.next();&#10;         p.setProperty(key,map.get(key).toString()); &#10;      }&#10;&#10;       // Properties p = new Properties(com.itko.lisa.test.Environment.lisaProps);&#10;      Properties systemEnv = com.itko.lisa.test.Environment.lisaProps;  //get all lisa properties&#10;      s = systemEnv.keySet();&#10;      itr = s.iterator();&#10;       //  Add all LISA properties to the properties file&#10;      while(itr.hasNext()) {&#10;         key = itr.next();      &#10;         p.setProperty(key,systemEnv.get(key).toString()); &#10;      }     &#10;      &#10;       //  load the properties to output file and save it.&#10;      propsFile = new FileOutputStream(fileName, false); //open the output file for writing&#10;      PrintStream pout = new PrintStream(propsFile); &#10;      pout.println();&#10;      p.store(propsFile, null); &#10;      p.list(System.out);&#10;      propsFile.close();&#10;      return &quot;Successfully saved LISA Properties&quot;;&#10;   }&#10;   catch (Exception ioe) {&#10;            return errorMsg + &quot;: &quot; + ioe.getMessage();&#10;   }&#10;}&#10;return  saveProperties (outputFile.toString());</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultRegEx" name="Assert134" >
<log>Error occured when saving the Properties</log>
<then>fail</then>
        <param>Error saving properties</param>
</CheckResult>

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
