<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Jan 29 17:45:22 PST 2016 -->


<TestCase name="CopyEBJars" version="2">
<id>10e34bf4</id>
<Documentation>########################### Running setup with copying files involved #################################&#13;&#10;#If enableEB is set to true, we will copy eb files from sourceFolder to TIBCO_HOME and Plugin folder &#13;&#10;#If the replaceJar is set to true, will find the specific JAR file under TIBCO_HOME, replace all the presented  locations.&#13;&#10;enableEB=false&#13;&#10;replaceJar=true&#13;&#10;#This item can support multiple JAR file, It will search all the present JAR under TIBCO_HOME and replace all matched ones.&#13;&#10;jarFileList=[tibjms.jar,7.0.1.004];[b,4.0.2]&#13;&#10;#This this the folder where eb is unzip to. it should contain components folder at least.&#13;&#10;#Also it can contain the JAR file like tibjms.jar , which you need to replace under TIBCO_HOME&#13;&#10;sourceFolder=D:\\EB-Test&#13;&#10;&#13;&#10;TIBCO_HOME=D:\\AMX-products\\AMX3x-HFs\\AMX330hf8-GA&#13;&#10;#This this the final plugin folder where the eb jar filse will go to&#13;&#10;PluginFolder=D:\\AMX-products\\AMX3x-HFs\\AMX330hf8-GA\\data_hf8\\tibcohost\\Admin-amxadmin-instanceOne\\data_3.2.x\\host\\plugins&#13;&#10;#KnownIssue: If you put tibjms.tar under the sourceFolder, with enableEB=true , this file will also be copied to TIBCO_HOME&#13;&#10;#Since the tool will think tibjms.tar is part of EB sources. This will impact nothing. &#13;&#10;#Uaually the two flags are not set to true at the same time.&#13;&#10;&#13;&#10;&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS04NzExODg4MDQ=</sig>
<rootNode>getHostPluginFolder</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host_instance</key>
    <value>Admin-AMXAdmin-admin1</value>
    <name>TIBCOHost instance name</name>
    </Parameter>
    <Parameter>
    <key>isRecovery</key>
    <value>false</value>
    <name>default is false, if set ture,will copy xx_old.jar back to TIBCO_HOME</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>_site.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>wizards.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>_local.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>reports</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>setLISA_HOME.bat</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>{{tibco.test.case.log.dir}}</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logging.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>embedded_servers</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>webreckeys.ks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>DemoServer</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>doc</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>rmi-truststore.jks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lib</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.lisa.properties.lock</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpbrowsers.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>contenttypes.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bin</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.install4j</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>rmi-keystore.jks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>{{tmpDir}}</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.local.properties.lock</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>derby.log</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>datePatterns.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>configure.bat</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>incontainer</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>j2eeservers.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>uninstall.exe</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jre</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>typemap.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>sql</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>appletviewer.policy</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mibdefs.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hotDeploy</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>examples</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>snmp</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>addons</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmp</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>licenses</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>examples_ejb3</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.permissions</key>
    <value>Property From Config</value>
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
    <key>lisa.logProperties.rsp</key>
    <value>Set in Step logProperties</value>
    </Parameter>
    <Parameter>
    <key>lisa.logProperties.rsp.time</key>
    <value>Set in Step logProperties</value>
    </Parameter>
    <Parameter>
    <key>lisa.isCopyRequired.rsp</key>
    <value>Set in Step isCopyRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.isCopyRequired.rsp.time</key>
    <value>Set in Step isCopyRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.findAndReplace.rsp</key>
    <value>Set in Step findAndReplace</value>
    </Parameter>
    <Parameter>
    <key>lisa.findAndReplace.rsp.time</key>
    <value>Set in Step findAndReplace</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkSourceEBFolder.rsp</key>
    <value>Set in Step checkSourceEBFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkSourceEBFolder.rsp.time</key>
    <value>Set in Step checkSourceEBFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHostPluginFolder.rsp</key>
    <value>Set in Step getHostPluginFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHostPluginFolder.rsp.time</key>
    <value>Set in Step getHostPluginFolder</value>
    </Parameter>
    <Parameter>
    <key>hostPluginsFolder</key>
    <value>Set in Step getHostPluginFolder</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/setup/enableEB.properties</file>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="getHostPluginFolder" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="logProperties" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;String getHostPluginFolder() {&#13;&#10;&#9;&#13;&#10;     String sFinalPlugFolder =TIBCO_CONFIG_HOME + File.separator + &quot;tibcohost&quot; &#13;&#10;                    + File.separator + host_instance + File.separator + hostPlugins; &#13;&#10;     return sFinalPlugFolder.replace(&apos;\\&apos;, &apos;/&apos;);&#13;&#10;}&#13;&#10;&#13;&#10;return getHostPluginFolder();</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getHostPluginFolder.rsp</valueToFilterKey>
      <prop>hostPluginsFolder</prop>
      </Filter>

    </Node>


    <Node name="logProperties" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="isCopyRequired" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Replace EB setting : &#13;&#10;&#13;&#10;isCopyOldJarBack : {{isRecovery}}&#13;&#10;enableEB: {{enableEB}}&#13;&#10;replaceJar : {{replaceJar}}&#13;&#10;sourceFolder : {{sourceFolder}}&#13;&#10;jarFileList : {{jarFileList}}&#13;&#10;&#13;&#10;TIBCO_HOME: {{TIBCO_HOME}}&#13;&#10;ConfigHome : {{TIBCO_CONFIG_HOME}}&#13;&#10;hostPlugins : {{hostPlugins}}&#13;&#10;PluginFolder: {{hostPluginsFolder}}&#13;&#10;&#13;&#10;&#13;&#10;</log>
    </Node>


    <Node name="isCopyRequired" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkSourceEBFolder" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>String isCopyRequired() {&#13;&#10;        String response =&quot;&quot;;&#13;&#10;        if (enableEB == false &amp;&amp;  replaceJar ==false )&#13;&#10;        {&#13;&#10;        &#9;response = &quot;NotRequired: The Flag of isEnableEB =false &amp;  isReplaceJAR =false, please check&quot;;&#13;&#10;            return response;&#13;&#10;        }   &#13;&#10;        if (isRecovery == true)&#13;&#10;        {&#13;&#10;           response = &quot;Precheck the Only copy old Jar file back to TIBCO_HOME, ignore the two flags , enableEB= &quot; + enableEB + &quot;,replaceJar= &quot; +  replaceJar;   &#13;&#10;        }else&#13;&#10;        {&#13;&#10;            response = &quot;Precheck the Copy EB/JAR is required , enableEB= &quot; + enableEB + &quot;,replaceJar= &quot; +  replaceJar; &#13;&#10;        }&#13;&#10;          &#13;&#10;        return response;&#13;&#10;}&#13;&#10;&#13;&#10;return isCopyRequired();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>No need to run patch manager for {{targetVersion}}</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>NotRequired:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="checkSourceEBFolder" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="findAndReplace" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;String checkSourceEBFolder() {&#13;&#10;    File fEBFile = new File(sourceFolder);&#13;&#10;    if(!fEBFile.exists()){&#13;&#10;&#9;&#9;&#9;return (&quot;Failed: EB Source Folder does not exist, please check the folder: \n&quot; + sourceFolder);&#13;&#10;&#9;}&#13;&#10;   return &quot;succ&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;return checkSourceEBFolder();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>No need to run patch manager for {{targetVersion}}</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>Failed:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="findAndReplace" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;&#13;&#10;import java.io.IOException;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.util.ArrayList;&#13;&#10;import java.util.Iterator;&#13;&#10;import java.util.Properties;&#13;&#10;&#13;&#10;String findAndReplace() {&#13;&#10;if(isRecovery ==true)&#13;&#10;{&#13;&#10;    repalceJarFile(jarFileList,sourceFolder,true);&#13;&#10;&#9;System.out.println(&quot;Done to Recover the old jar back to TIBCO_HOME&quot;);&#13;&#10;&#9;return &quot;succ done recover!&quot;;&#13;&#10;}&#13;&#10;if(enableEB ==true)&#13;&#10;{&#13;&#10;     //CopyEB Files;&#13;&#10;    copyEBFiles(sourceFolder); &#13;&#10;&#9;System.out.println(&quot;Done replace the jar files&quot;);     &#13;&#10;}&#13;&#10;if(replaceJar ==true )&#13;&#10;{&#13;&#10;    //Find the JAR under TIBCO_HOME and replace the present ones.&#13;&#10;    repalceJarFile(jarFileList,sourceFolder,false);&#13;&#10;&#9;System.out.println(&quot;Done replace the jar files&quot;);        &#13;&#10;}&#13;&#10; return &quot;succ done copy!&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;void copyEBFiles(String sEbLocation)&#13;&#10;{&#13;&#10;&#9;&#9;File fEBFile = new File(sEbLocation);&#13;&#10;&#9;&#9;File fTibcoHome = new File (TIBCO_HOME);&#13;&#10;&#9;&#9;//Copy eveything to TIBCO_HOME&#13;&#10;&#9;&#9;//Copy components/xxx/plugin to Config_home/xxx/plugins&#13;&#10;&#9;&#9;if(!fEBFile.exists())&#13;&#10;        {&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;Failed: Source Folder does not exist, please check the folder: \n&quot; + fEBFile.getAbsolutePath());&#13;&#10;&#9;&#9;&#9;return;&#13;&#10;&#9;&#9;}else&#13;&#10;        {&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;try &#13;&#10;            {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;copyDirectory(fEBFile,fTibcoHome);&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;} catch (IOException e) &#13;&#10;            {&#13;&#10;&#9;&#9;&#9;&#9;// TODO Auto-generated catch block&#13;&#10;&#9;&#9;&#9;&#9;&#9;e.printStackTrace();&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;Copy to TIBCO_HOME is done&quot;);&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;//Here Config_home means the whole folder name with instance/plugs &#13;&#10;&#9;&#9;File fTibcoConfigHome = new File(hostPluginsFolder);&#13;&#10;&#9;&#9;File fEBComponentsFile = new File(sEbLocation+File.separator + &quot;components&quot;+File.separator&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;shared&quot; + File.separator + &quot;1.0.0&quot; +File.separator + &quot;plugins&quot;);&#13;&#10;&#9;&#9;if(!fEBComponentsFile.exists())&#13;&#10;        {&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;Source Folder does not exist, please check the folder: \n&quot; + fEBComponentsFile.getAbsolutePath());&#13;&#10;&#9;&#9;&#9;return;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;if(!fTibcoConfigHome.exists())&#13;&#10;        {&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;Target Folder does not exist, please check the folder: \n&quot; + hostPluginsFolder);&#13;&#10;&#9;&#9;&#9;return;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;try &#13;&#10;        {&#13;&#10;&#9;&#9;&#9;copyDirectory(fEBComponentsFile,fTibcoConfigHome);&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;Copy to Config_HOME/plugins is done&quot;);&#13;&#10;&#9;&#9;} catch (IOException e) &#13;&#10;        {&#13;&#10;&#9;&#9;&#9;// TODO Auto-generated catch block&#13;&#10;&#9;&#9;&#9;e.printStackTrace();&#13;&#10;&#9;&#9;}   &#13;&#10;&#9;&#9;&#13;&#10;}&#13;&#10;&#9;/**&#13;&#10;&#9; * Provide the JarFileList[name,version];[name,version], split to String[] by;&#13;&#10;&#9; * Then split by , to String[];&#13;&#10;&#9; * Copy the file from the source location to the TIBCO_HOME wherever it presents and overwirte it anyway.&#13;&#10;&#9; * @param sJarFileList&#13;&#10;&#9; * @param sSourceLocation&#13;&#10;&#9; */&#13;&#10;void repalceJarFile(String sJarFileList, String sSourceLocation, boolean isCopyBack)&#13;&#10;{&#13;&#10;    &#9;String[] sJarFileListArray = sJarFileList.split(&quot;;&quot;);&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;for (int i =0; i &lt; sJarFileListArray.length;i++)&#13;&#10;        {&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;String[] sTempinArray = sJarFileListArray[i].split(&quot;,&quot;);&#13;&#10;&#9;&#9;&#9;String sName = sTempinArray[0].substring(1);&#13;&#10;&#9;&#9;&#9;String sVersion =  sTempinArray[1].substring(0,sTempinArray[1].length()-1);&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;ArrayList alMatchedFile =new ArrayList();&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;##RepalceJarFile() Begin shoot the mached location of the specific jar [&quot; + sName + &quot;,&quot; +sVersion + &quot;]&quot;) ;&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;getMatchedFilePath(new File(TIBCO_HOME), sVersion, sName, alMatchedFile);&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;##RepalceJarFile() Now get all matched File size = &quot; +alMatchedFile.size() + &quot; for the specific jar [&quot; + sName + &quot;,&quot; +sVersion + &quot;]&quot;) ;&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;&#9;if(alMatchedFile.size() !=0)&#13;&#10;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;        int j=0;&#13;&#10;&#9;&#9;        String sSourceFileName = sSourceLocation+ File.separator + sName; &#13;&#10;&#9;&#9;        if(isCopyBack ==true) {&#13;&#10;&#9;&#9;             sSourceFileName = sSourceFileName+&quot;.orig&quot;;&#13;&#10;&#9;&#9;        }&#13;&#10;&#9;&#9;        File fSourceFile = new File(sSourceFileName);&#13;&#10;&#9;&#9;    &#9;if(fSourceFile.exists()) &#13;&#10;                {&#13;&#10;&#9;&#9;&#9;&#9;&#9;for (Iterator iter = alMatchedFile.iterator(); iter.hasNext();) &#13;&#10;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;File aFile = (File) iter.next();&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;try &#13;&#10;                            {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;copyDirectory(fSourceFile, aFile);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;System.out.println(&quot;## Copy File[&quot; +j + &quot;] done to Target folder:\n&quot; + aFile.getAbsolutePath());&#13;&#10;&#9;                            j++;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;} catch (IOException e) &#13;&#10;                            {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;// TODO Auto-generated catch block&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;e.printStackTrace();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;}&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;    &#9;}else&#13;&#10;&#9;&#9;    &#9;{&#13;&#10;&#9;&#9;    &#9;&#9;System.out.println(&quot;#############Copy failed since the source does not exist : &quot; + fSourceFile.getAbsolutePath());&#13;&#10;&#9;&#9;    &#9;}&#9;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#13;&#10;    }&#13;&#10;&#9;/**&#13;&#10;&#9; * Copy the folder from soruce location to target location&#13;&#10;&#9; * @param sourceLocation&#13;&#10;&#9; * @param targetLocation&#13;&#10;&#9; * @throws IOException&#13;&#10;&#9; */&#13;&#10;void copyDirectory(File sourceLocation, File targetLocation)&#13;&#10;&#9;&#9;&#9;throws IOException {&#13;&#10;&#9;&#9;if (sourceLocation.isDirectory()) &#13;&#10;        {&#13;&#10;            if(!targetLocation.exists())&#13;&#10;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;targetLocation.mkdir();&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;String[] children = sourceLocation.list();&#13;&#10;&#9;&#9;&#9;if(children.length ==0) {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;targetLocation.mkdir();&#13;&#10;&#9;&#9;&#9;&#9;System.out.println(&quot;copyDirectory() create folder under target if source dir is empty  = &quot; + targetLocation.getAbsolutePath());&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;for (int i = 0; i &lt; children.length; i++) &#13;&#10;            {&#13;&#10;&#9;&#9;&#9;&#9;copyDirectory(new File(sourceLocation, children[i]), new File(&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;targetLocation, children[i]));&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;} else &#13;&#10;        {&#13;&#10;&#13;&#10;&#9;&#9;&#9;InputStream in = new FileInputStream(sourceLocation);&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;copyDirectory() Source folder = &quot; + sourceLocation.getAbsolutePath());&#13;&#10;&#9;&#9;&#9;System.out.println(&quot;copyDirectory() Target folder = &quot; + targetLocation.getAbsolutePath());&#13;&#10;&#9;&#9;&#9;OutputStream out= new FileOutputStream(targetLocation);&#13;&#10;&#13;&#10;&#9;&#9;&#9;// Copy the bits from instream to outstream&#13;&#10;&#9;&#9;&#9;byte[] buf = new byte[1024];&#13;&#10;&#9;&#9;&#9;int len;&#13;&#10;&#9;&#9;&#9;while ((len = in.read(buf)) &gt; 0) &#13;&#10;            {&#13;&#10;&#9;&#9;&#9;&#9;out.write(buf, 0, len);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;//System.out.println(&quot;Copy done for file &quot; + targetLocation);&#13;&#10;&#9;&#9;&#9;in.close();&#13;&#10;&#9;&#9;&#9;out.close();&#13;&#10;&#9;&#9;}&#13;&#10;}&#13;&#10;&#9;/**&#13;&#10;&#9; * Find the location wherever the specific jar present in TIBCO_HOME;&#13;&#10;&#9; * @param fTibcoHome&#13;&#10;&#9; * @param keyVersion&#13;&#10;&#9; * @param jarFileName&#13;&#10;&#9; * @param mylist&#13;&#10;&#9; */&#13;&#10;void getMatchedFilePath(File fTibcoHome, String keyVersion, String jarFileName, ArrayList mylist) {&#13;&#10;&#9;&#13;&#10;&#9;&#9;File[] files = fTibcoHome.listFiles();&#13;&#10;&#9;&#9;if (files != null) &#13;&#10;        {&#13;&#10;&#9;&#9;&#9;for (File f : files) &#13;&#10;            {&#13;&#10;&#9;&#9;&#9;&#9;if (f.isDirectory())&#13;&#10;                {&#13;&#10;&#9;&#9;&#9;&#9;&#9;getMatchedFilePath(f,keyVersion, jarFileName,mylist);&#13;&#10;&#13;&#10;&#9;&#9;&#9;&#9;} else if(f.isFile())&#13;&#10;                {&#13;&#10;&#9;&#9;&#9;&#9;&#9;//&#9;getMatchedFilePath(keyVersion, jarFileName);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;if(f.getAbsoluteFile().toString().contains(keyVersion) &amp;&amp; f.getAbsoluteFile().toString().contains(jarFileName) )&#13;&#10;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;System.out.println(&quot;Matched files is added to cart , file name= &quot; + f.getAbsolutePath().toString());&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;mylist.add(f);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;}&#13;&#10;}&#13;&#10;return findAndReplace();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Input parameters incorrect</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>1210</graphx>
<graphy>1210</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>1090</graphx>
<graphy>1090</graphy>
    </Node>


</TestCase>
