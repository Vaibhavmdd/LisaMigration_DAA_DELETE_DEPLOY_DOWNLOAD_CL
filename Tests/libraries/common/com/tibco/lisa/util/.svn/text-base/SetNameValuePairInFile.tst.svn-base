<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Wed May 02 01:14:46 PDT 2007 -->


<TestCase name="SetNameValuePairInFile" version="2">
<id>cbeebc6b</id>
<Documentation>Set a Name-Value pair in a file.&#10;File can have any extension.&#10;If the Name-Value pair already exists, the current value is replaced by the specified value.&#10;If the Name-Value pair is commented, it gets uncommented and set as specified.&#10;If the Name-Value pair does not exist, it is added at the end of the file.&#10;&#10;If you need to pass the character backslash (&apos;\&apos;) in the Name-Value pair, escape it by passing &apos;\\&apos;.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjVlICgzMjM1KSZub2Rlcz0tMTkwOTgxNzg1Mw==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File where to set the Name-Value pair</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value></value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value></value>
    <name>Value</name>
    </Parameter>
    <Parameter>
    <key>assignChar</key>
    <value>=</value>
    <name>Character utilized for assignment: equal (&apos;=&apos;), white space (&apos; &apos;), ...</name>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.setNameValuePairInFile.rsp</key>
    <value>Set in Step setNameValuePairInFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setNameValuePairInFile.rsp.time</key>
    <value>Set in Step setNameValuePairInFile</value>
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
          next="setNameValuePairInFile" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>Setting &quot;{{name}}{{assignChar}}{{value}}&quot; in {{file}}</log>
    </Node>


    <Node name="setNameValuePairInFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>0</graphx>
<graphy>121</graphy>
<script>import java.io.File;&#10;import java.io.RandomAccessFile;&#10;&#10;setNameValuePairInFile(String fileName, String name, String value, String assignChar){&#10; try {&#10;  File file = new File(fileName);&#10;&#10;  // Check if file exists&#10;  if(!file.exists())&#10;   return errorMsg + &quot;: File &quot; + fileName + &quot; does not exist&quot;;&#10;&#10;  // If fileName is a directory, we fail.&#10;  if(file.isDirectory())&#10;   return errorMsg + &quot;: File passed is a directory! It must be a file.&quot;;&#10;&#10;  // Name cannot be empty&#10;  if(name.equals(&quot;&quot;))&#10;   return errorMsg + &quot;: Name cannot be empty&quot;;&#10;&#10;  // Assignment character cannot be empty&#10;  if(assignChar.equals(&quot;&quot;))&#10;   return errorMsg + &quot;: Assign character cannot be empty&quot;;&#10;&#10;  RandomAccessFile raf = new RandomAccessFile(file, &quot;rw&quot;);&#10;  long curlinePointer = raf.getFilePointer(); // Pointer to the current line read&#10;  long prevlinePointer = curlinePointer; // Pointer to the previous line read&#10;  String lineData = &quot;&quot;;&#10;  boolean nameFound = false;&#10;&#10;  // Read file line by line&#10;  while((lineData = raf.readLine()) != null) {&#10;   curlinePointer = raf.getFilePointer();&#10;   // If we find the Name&#10;   if (lineData.startsWith(name + assignChar)){&#10;    // Store the rest of the file in array of bytes&#10;    byte[] b = new byte[raf.length() - curlinePointer];&#10;    raf.readFully(b);&#10;    // If name was already found, we comment out all the other ones&#10;    if (nameFound) {&#10;     // Comment out the line&#10;     raf.seek(prevlinePointer);&#10;     raf.writeBytes(&quot;#&quot; + lineData + &quot;\r\n&quot;);&#10;     // Append the rest of the file after the new line&#10;     raf.write(b);&#10;    }&#10;    else {&#10;     // Write the new line: name=value &#10;     raf.seek(prevlinePointer);&#10;     raf.writeBytes(name + assignChar + value + &quot;\r\n&quot;);&#10;     // Append the rest of the file after the new line&#10;     raf.write(b);&#10;     // If new line shorter than the previous one, &#10;     // pad with white space at the end of the file&#10;     if (lineData.length() &gt; (name + assignChar + value).length()) {&#10;      raf.writeBytes(&quot;\r\n&quot;);&#10;      int dif = lineData.length() - (name + assignChar + value).length() + 1;&#10;      for (int i=0; i&lt;dif; i++)&#10;       raf.writeBytes(&quot; &quot;);&#10;     }&#10;    }&#10;    nameFound = true;&#10;    raf.seek(curlinePointer);&#10;   }&#10;   prevlinePointer = curlinePointer;&#10;  }&#10;  // If Name not found append Name-Value pair to the end of the file&#10;  if(!nameFound) {&#10;   raf.seek(raf.length());&#10;   raf.writeBytes(&quot;\r\n&quot;);&#10;   raf.writeBytes(name + assignChar + value);&#10;  }&#10;  raf.close();&#10;  return &quot;Set Name-Value Pair Success: &quot; + name + assignChar + value;&#10; }&#10; catch(Exception e){&#10;  return errorMsg + &quot;: &quot; + e.getMessage();&#10; }&#10;}&#10;&#10;// Main&#10;String errorMsg = &quot;Error setting Name-Value pair&quot;;&#10;file = testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;);&#10;name = testExec.parseInState(name.toString());&#10;value = testExec.parseInState(value.toString());&#10;return setNameValuePairInFile(file, name, value, assignChar);&#10; </script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert74" >
<log>{{lisa.setNameValuePairInFile.rsp}}</log>
<then>fail</then>
        <param>Error setting Name-Value pair</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

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
