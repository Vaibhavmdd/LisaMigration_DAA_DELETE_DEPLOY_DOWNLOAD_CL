<?xml version="1.0" ?>

<TestCase name="5.1" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/05/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="12/20/2022" host="na2devasgaks01" />
</meta>

<id>a1d828a5</id>
<Documentation>Description : Test Declared / Undeclared fault with AMX and BW Provider&#13;&#10;Scenario: &#9;Composite 1: &#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) &lt;-&gt; JAVA &lt;-&gt; JAVA &lt;-&gt; SOAP BT(HTTP) (Configured for AMX Provider)&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;   SOAP BT(HTTP) (Configured for BW Provider)&#13;&#10;&#9;&#9;&#9;Composite 2:&#9;&#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) &lt;-&gt; JAVA&#13;&#10;&#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTEwMjEyOTY3MA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="a1d828a5-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="a1d828a5-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="a1d828a5-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="275B1408749611ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
