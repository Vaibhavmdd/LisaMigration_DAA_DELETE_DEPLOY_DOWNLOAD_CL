<?xml version="1.0" ?>

<TestCase name="Sleep" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
</meta>

<id>a4d60a76</id>
<Documentation>Sleep for a number of seconds.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xOTY0MTA2MjU3</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>windowsSleep</key>
    <value></value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value></value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value></value>
    <name>lisa.Log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value></value>
    <name>lisa.Log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value></value>
    <name>lisa.continue.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value></value>
    <name>lisa.continue.rsp.time</name>
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
    <key>lisa.sleep.rsp</key>
    <value></value>
    <name>lisa.sleep.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.sleep.rsp.time</key>
    <value></value>
    <name>lisa.sleep.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="a4d60a76-Log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="sleep" > 

<log>Sleeping for {{windowsSleep}} on Windows or {{unixSleep}} on Unix ...</log>
    </Node>


    <Node name="sleep" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="a4d60a76-sleep" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<onerror>abort</onerror>
<script>sleep(secStr) {&#10;  try {&#10;    int secInt = Integer.parseInt(secStr);&#10;    if (secInt &lt; 0) Thread.sleep(0);&#10;    else Thread.sleep(secInt*1000);&#10;  }&#10;  catch(NumberFormatException nfe) {&#10;    Thread.sleep(0);&#10;  }&#10;}&#10;&#10;if (System.getProperty(&quot;os.name&quot;).toLowerCase().indexOf(&quot;windows&quot;) &gt; -1)&#10;  sleep(&quot;{{windowsSleep}}&quot;);&#10;else&#10;  sleep(&quot;{{unixSleep}}&quot;);</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="23357F35722811ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="a4d60a76-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="a4d60a76-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
