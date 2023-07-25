<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Fri May 18 14:24:41 PDT 2007 -->


<TestCase name="RVStreamListen" version="2">
<id>7f2cd931</id>
<Documentation>Listens for TIBCO Rendezvous message on specified subject with RVStream.&#10;When the message is received the sub-process returns.&#10;&#10;Note1: RVStream supports listening on several subjects but this sub-process can listen to one subject at a time.&#10;Note2: Supported on Windows only.&#10;&#10;RVStream Version: 1.21&#10;&#10;Listen Options&#10;--------------&#10; -srv                : suppress Rendezvous system messages&#10; -srvall             : suppress all Rendezvous system &amp; service messages&#10; -shawk              : suppress Hawk implant messages&#10; -slocal             : suppress local messages&#10; -suppress &lt;subject&gt; : suppress messages from &apos;subject&apos;&#10;&#10; -rv                 : subscribe to standard Rendezvous system messages&#10; -rvall              : subscribe to all Rendezvous system messages&#10; -hawk               : subscribe to Hawk implant messages&#10; -local              : subscribe to local messages&#10;&#10; -verbose            : show session, subscription and suppression options&#10; -count              : show the current message number&#10; -scount             : show the current message number per subscription&#10; -time               : display a timestamp with each message&#10; -showreply          : show reply subject if present&#10;&#10; -file   &lt;name&gt;      : write messages to truncated file&#10; -append &lt;name&gt;      : append messages to file&#10; -echo               : with -file or -append, also display to standard output&#10;&#10; -remote  &lt;id&gt;       : enables remote access (see -usage)&#10; -command &lt;command&gt;  : NOT SUPPORTED BY THIS SUB-PROCESS. &#10;&#9;&#9;       THIS OPTION IS USED INTERNALLY TO EXIT THE SUB_PROCESS WHEN MESSAGE ARRIVES.&#10;&#10; -notypes            : hide types&#10; -nosizes            : hide sizes&#10; -nonames            : hide names&#10; -novalues           : hide values&#10; -nocontents         : hide types, sizes, names and values&#10; -deep               : display nested messages using deep indents&#10;&#10; -subject &lt;option&gt;   : esc, display any &apos;illegal&apos; control characters within subject.names as escape sequences&#10;&#10; -precision &lt;int&gt;    : set floating point precision&#10; -spacing   &lt;int&gt;    : set column spacing&#10; -quotes             : display &quot;subject.names&quot; and &quot;field names&quot; in quotes&#10; -record             : set suitable format options for playback&#10; -interval           : provide sleep command intervals for timed playback&#10;&#10; -string &lt;int&gt;       : limits the (pre-null) length of any displayed strings&#10; -string &lt;option&gt;    : esc, display control characters as escape sequences&#10;&#10; -opaque &lt;option&gt;    : default, as rvlisten style e.g. [10 opaque bytes]&#10;                     : char,    as printable characters&#10;                     : esc,     as escape sequences&#10;                     : binary,  as binary (suitable for redirecting to file)&#10;                     : int,     as integer values&#10;                     : hex,     as hexadecimal values&#10;                     : oct,     as octal values&#10;                     : dump,    as hex dump&#10;                     : debug,   as both hex and printable characters&#10;&#10; -asopaque &lt;option&gt;  : display all values as opaques: unsuitable for resending options as for -opaque (use -opaque OR -asopaque)&#10;&#10; -rvtype &lt;option&gt;    : RVMSG_TYPE,    e.g. RVMSG_INT&#10;                     : rvtype, type,  e.g. INT&#10;                     : singlechar, t, e.g. i</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjVlICgzMjM1KSZub2Rlcz0tMTA3ODc1MTk0NA==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>service</key>
    <value></value>
    <name>Service</name>
    </Parameter>
    <Parameter>
    <key>network</key>
    <value></value>
    <name>Network</name>
    </Parameter>
    <Parameter>
    <key>daemon</key>
    <value></value>
    <name>Daemon</name>
    </Parameter>
    <Parameter>
    <key>listenOptions</key>
    <value>-srv</value>
    <name>Listen options</name>
    </Parameter>
    <Parameter>
    <key>subject</key>
    <value>test.serge</value>
    <name>Listen for inbound messages on specified subject. One subject only can be specified</name>
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
    <key>lisa.rvStream.rsp</key>
    <value>Set in Step rvStream</value>
    </Parameter>
    <Parameter>
    <key>lisa.rvStream.rsp.time</key>
    <value>Set in Step rvStream</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step rvStream</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step rvStream</value>
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
    <key>lisa.validateOS.rsp</key>
    <value>Set in Step validateOS</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateOS.rsp.time</key>
    <value>Set in Step validateOS</value>
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
          next="validateOS" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>RVStream parameters:&#10;service: {{service}}&#10;network: {{network}}&#10;daemon: {{daemon}}&#10;Listen: {{listenOptions}}&#10;subject: {{subject}}&#10;</log>
    </Node>


    <Node name="validateOS" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>// The Utilities class has several methods for detecting&#10;// the host operating system:&#10;// Utilities.isWindows():boolean&#10;// Utilities.isUnix():boolean&#10;// Utilities.isOSX():boolean&#10;String errorMsgBase = &quot;RVStream Validation Error&quot;;&#10;if (!com.itko.util.Utilities.isWindows()) {&#10;  return errorMsgBase + &quot;: This sub-process is supported on Windows only&quot;;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert84" >
<log>{{lisa.validateOS.rsp}}</log>
<then>fail</then>
        <param>RVStream Validation Error</param>
</CheckResult>

    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="rvStream" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<script>return source(TIBCO_COMMON_LIBRARY + &quot;/com/tibco/lisa/rv/RVValidation.bsh&quot;);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert87" >
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
        <param>RV Validation Error</param>
</CheckResult>

    </Node>


    <Node name="rvStream" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<cmd>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv/rvstream -service &quot;{{service}}&quot; -network &quot;{{network}}&quot; -daemon &quot;{{daemon}}&quot; -listen &quot;{{subject}}&quot; {{listenOptions}} -command &quot;taskkill /F /IM rvstream.exe&quot;</cmd>
<basedir>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/rv</basedir>
<toNode>fail</toNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


</TestCase>
