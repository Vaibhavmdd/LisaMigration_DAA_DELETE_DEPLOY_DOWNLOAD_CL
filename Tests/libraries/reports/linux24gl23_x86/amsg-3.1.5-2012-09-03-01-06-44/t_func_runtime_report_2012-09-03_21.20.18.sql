insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('amxrel2qa1-2012/09/03-21:20:18', 'amxrel2qa1', 'linux24gl23_x86', 'superuser', to_date('2012/09/03-21:20:18', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '3.1.5', 'Version 3.1.5 build 2012-09-03-01-06-44', 'runtime', null, 0, 0, 0, 0, 0, 'linux24gl23_x86/amsg-3.1.5-2012-09-03-01-06-44', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('amxrel2qa1-2012/09/03-21:20:18', null, 'bat_2node_hsql', 'superuser', to_date('2012/09/03-21:20:18', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/bat_2node_hsql', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', 'install2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='install2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', 'install2', 1, 'suite installation in silent mode of:
- ActiveMatrix Service Grid
- CPP IT
- Adapter BT
- EJB BT
- CLR IT (on Windows only)')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', 'setup', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
Bootstrap TIBCOHost 
Bootstrap Admin SystemNode
Setup Nodes (osgi console port 1129 and 1139)
Set Node Loggers
Install Resources Instances
Deploy Dashboard
Deploy MCR (optional) 
Deploy Log Service (optional)
Deploy Payload Service (optional)
Deploy Mediation')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.1', 1, 'Description : Test Declared / Undeclared fault with AMX and BW Provider
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) (Configured for AMX Provider)
									   SOAP BT(HTTP) (Configured for BW Provider)
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.2', 1, 'JMS BT Service and Reference.
JMS RT (not imported from design-time) with inline credentials.

Composite1: 
JMS BT (Topic - Serv1) <-> SPRING <-> JMS BT (Queue - Ref1)
                       <-> JMS BT (Queue - Ref1)
Composite2:
JMS BT (Queue - Serv2) <-> JAVA
                                     
JMS Service1 and JMS Ref1 bindings are created in Admin through CLI.
JMS Service2 and Ref2 are created at design-time.

Project1 is configured for BW Provider for following cases:
       ')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.3', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.3', 1, 'Description :   Test File-based Logging.
                Create 3 loggers: logger1 for Nodes (done in setup), logger2 for Java Component, logger3 for Application
Scenario:       SOAP BT(HTTP) -> Java -> Spring

MEP: In-Only 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.4', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.4', 1, 'Description : Test WS Addressing (Anonymous   Non Anonymous) with Declared and Undeclared fault
Scenario: 	Composite 1: 
			SOAP BT(HTTP) (Anonymous ws addressing) <-> JAVA <-> SOAP BT(HTTP) (Non Anonymous ws addressing) 
			Composite 2:	
			SOAP BT(HTTP) (Non Anonymous ws addressing) <-> JAVA 
MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: RPC/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.5', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.5', 1, 'SCA Wire
Service Virtualization is created in CLI (does not exist at design-time)
Reference Virtualization is wired in CLI
Deploy App and invoke
Restart App and invoke
Redeploy App and invoke

Scenario: SOAP BT (HTTP) <-> Spring <-> SCA | SCA <-> Java
MEP: In-Out
RPC/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.6', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.6', 1, 'SOAP over JMS with Nested composite.
Pass properties through nested composites.
JMS RT with inline credentials imported from design-time.

Scenario: SOAP(JMS) <-> Composite1 <-> Composite2 <-> SOAP(JMS) | SOAP(JMS) <-> Java
          Nested Composite: SOAP <-> Java
MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.7', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.7' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.7', 1, 'Description: Test SOAP over HTTPS
Scenario: SOAP BT(HTTPS without MutualAuthentication) <-> JAVA <-> SOAP BT(HTTPS with MutualAuthentication) 

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Doc/Literal/Type - RPC/Literal/Type 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.8', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.8' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.8', 1, 'Description : Test Prepare-to-Undeploy intent.
              Node-level Substitution Variables are used for http Connector and Node name.
              
Scenario: Composite: SOAP BT(HTTP) <-> Mock

MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.9', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.9' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.9', 1, 'Graceful Start intent.
Use Node Svars, Binding properties, Reference wiring.

Scenario: 
App1: SOAP BT(HTTP) <-> Java <-> Java <-> SCA (wired to App2)
App2: SCA <-> Java

Starting App1 also starts App2.
Stopping App2 also stops App1.
Clean up Apps at the end.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.10', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.10' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.10', 1, 'Description : Test Resources Templates in Java component: JMS, SMTP, LDAP, Teneo (-> Hibernate -> JDBC).
              Import RT from DAA is false. All RT are create and installed via CLI.
              
Scenario: Composite: 
            SOAP BT(HTTP) <-> Java1(Teneo RT) <-> Java2(JMS RT)
            JMS BT <-> Java3(SMTP RT) <-> Java4(LDAPConn RT)

MEP: In-Out

JMS RT with inline credential
JDBC RT with keystore credential
SMTP RT with keystore credential
LDAP RT with keystore cred')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.11', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.11' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.11', 1, 'Scenario: WebApp - Java with Hibernate Shared Resource
Import the RTs from DAA
Overwrite RTs by merging with previously imported RTs
MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.12', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.12' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.12', 1, 'Global Transaction with Oracle 11g.
Provision and remove Oracle JDBC feature.
Use App SVars.
Stop/Start App

Scenario: SOAP(HTTP) <-> Java <-> Java 

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Doc/Literal/Type
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.13', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.13' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.13', 1, 'One way Transaction intent with Oracle 11g.
Provision and remove Oracle JDBC feature.
Validate database rollback and message redelivery both for 
Java and Spring components

Scenario: SOAP(HTTP) <-> Java <-> Spring <-> Java 

MEP: In-Only 
SOAP Version: 1.1 
SOAP Style/Encoding: Doc/Literal/Type
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.18', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.18' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.18', 1, 'Description : Restart TIBCO Host, make sure application is still running upon restart.
              Check runtime wsdl url.
Scenario 	: SOAP BT(HTTP) <-> JAVA 

')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.19', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.19' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.19', 1, 'Design Time CLI:
Import SOA project (SOAP-Java-SOAP) and Java project into new Workspace
Create new Composite
Add Java Component to Composite
Promote Service and Reference 
Create DAA

Admin CLI:
Add SOAP/HTTP binding to Service and Reference
Deploy App
Invoke Service
Undeploy App')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.20', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.20' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.20', 1, 'Test AtLeastOnce
Scenario: SOAP BT(HTTP)<->JAVA1<->JAVA2<->JAVA3

OFF case1: Throw valid business fault from Java2 - No atleastOnce functionality should kick in. User should get the valid fault back.
ON case2: Throw Undeclared fault from Java1 - after 5 tries - message should be moved to queue - Java1_atLeastOnce
OFF case3: After say 2 retries, throw an exception specified to stop the delivery from Java1 - Redelivery should be stopped and message should be immediately moved to the Java1_atLeast')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.21', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.21' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.21', 1, 'SOAPException with SOAP/JMS
Comp1:SOAP(JMS)<->JAVA1<->JAVA2<->SOAP(JMS)
Comp2:SOAP(JMS)<->JAVA3

1. Java3 throws undeclared. 
Caught by Java2 that throws a SOAPException with custom faultcode/faultrole
Caught by Java1 that throws SOAPException with new faultcode/faultrole
2. Same but use SOAPException constructor to have faultcode as string
3. Java3 throws declared with null details
Java2 receives it as SOAPException
Caught by Java1 that throws the same
4. Java1 throws SOAPException')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '5.22', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.22' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.22', 1, 'Application Upgrade Test:

- V1 App: SOAP(HTTP)<->Java1<->Java2
- Upload V1 DAA and Map the application to the node.
- Deploy V1 and invoke the service.
- V2 App: Changed wsdl interface on the component Reference of java1 and component Service of java2 (-> Java2 impl changes)
- Upload V2 DAA , upgrade and Provision the new feature.
- Deploy V2 and invoke the service.
- Undeploy the application and delete the apptemplate

')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.1', 1, 'Exercise Custom Mediation Task
Exercise Mediation Faults: Declared Fault, Undeclared Fault, MediationTask Fault, MediationTaskRuntime Fault, Timeout Fault (triggered by by Socket Timeout in HTTP Client).

Scenario: SOAP BT (HTTP) <-> Mediation (with CMT) <-> SOAP BT (HTTP) <-> BW

Set enterprise-level Sub Vars
Deploy, Invoke, Undeploy, Redeploy, Invoke again.
Clean up everyhing at the end')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.2', 1, 'Reliable message intent with Mediation.
Mediation with Log task, Route task, Transform task, End task, 
In-Only MEP Mediation Interface, In-Only MEP and In-Out MEP Target Interfaces.

Composite: SOAP BT(HTTP) -> Mediation -> Spring

MEP: In-Only and In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.3', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.3', 1, 'Scenario: SOAP BT (HTTP) <-> Java <-> Mediation <-> SOAP BT (HTTP)
MEP: In-Out

Java sets context.
Mediation consumes context set by Java.
Java consumes context set by Mediation output.
Med Input Path: SetContext Task, Log task.
Med Output path: ParseXML task, RenderXML, Validate XML, SetContext Task, Log task.
Clean up App, RI, RT at the end.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.4', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.4', 1, 'Mediation with SCA wire.
Exercise GenerateReply Task in Mediation.
JMS RT with inline credentials are created (not imported) and deleted in CLI with no namespace declaration.
Clean up everything at the end.

C1 on Node1 : SOAP BT (HTTP) <-> Mediation <-> SCA
C2 on Node2 : SCA <-> Mediation (with GenerateReplyTask)
C3 on Node1 : SCA <-> Mediation <-> SOAP BT (JMS) <-> BW
   
C1 <-> C2
   <-> C3')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.5', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.5', 1, 'Mediation with DynamicRoute and QueryDB Tasks.
Clean up App, RI, RT at the end.

Scenario: 	
    Composite 1: SOAP BT(HTTP) <-> Mediation-SCA (wired by implementation)
    Composite 2: SCA <-> Mediation (with GenerateReply Task)

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.6', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.6', 1, 'Mediation IT with Custom XPath Function.
JMS RT with keystore credentials.

Scenario: JMS BT <-> Mediation
MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.7', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.7' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.7', 1, 'Adapter BT with RV transport (Reliable Message)
Set RV parameter in CLI for Adapter Reference

Scenario: AdapterBT (RV) <-> Mediation <-> AdapterBT (RV) <-> BW GAC
MEP: In-Out

Deploy Adapter BT
Deploy user App
Invoke twice
Undeploy-Redeploy User App
Invoke again')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.8', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.8' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.8', 1, 'Test EJB BT for EJB 3.0 with JBOSS 5.0.1
Scenario: SOAP BT(HTTP) <-> Mediation <-> EJB BT <-> JBOSS Server 
MEP: In-Out 
- Deploy EJB BT
- Deploy vendor Jar
- Deploy User App
- Invoke service
- Undeploy User App
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.9', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.9' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.9', 1, 'Scenario: WebApp <-> Mediation <-> Java 
MEP: In-Out

- Deploy - Invoke
- Undeploy/Redeploy - Invoke again
- Undeploy')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '6.10', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.10' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.10', 1, 'Adapter BT with JMS transport

Scenario: SOAPBT (HTTP) <-> Mediation <-> AdapterBT (JMS) <-> BW GAC
MEP: In-Out

Deploy Adapter BT
Import JMS resources from design-time
Set Sub Var for JNDI connection
Set rpcTimeout in CLI for Adapter Reference
Deploy user App
Invoke Service
Invoke Service for declared fault
Invoke Service for undeclared fault
Invoke Service for timeout
Undeploy App and Adapter BT
Clean up RT, SubVar')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '7.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='7.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '7.1', 1, 'JMS transport over SSL.
CPP Component.
Bindings are added to the service and reference at design time.

•	Composite: SOAP BT(JMS SSL)<–> Spring <–> CPP <–> JMS BT (SSL)
•	Use InOut MEP for Service/Reference.
•	WSDL Type: Doc Literal 
•	Singlepart operation, where WSDL part refers to an element which in turn refers to complex types and attributes.
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/09/03-21:20:18', 'bat_2node_hsql', '7.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='7.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '7.3', 1, 'CLR IT test on Windows (test is passthrough on Unix)
              
Scenario1: Composite: SOAP BT(HTTP) <-> CLR IT <-> SOAP BT(HTTP)
Scenario2: Composite: SOAP BT(HTTP) <-> CLR IT
MEP: In-Out and In-Out with Faults

')
update tsi_tests_set set seq_no=32, end_time=to_date('2012/09/03-21:50:34', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=2, num_tc_failed=30, num_tc_error=0 where run_id='amxrel2qa1-2012/09/03-21:20:18' and set_name='bat_2node_hsql'
update tsi_tests_run set end_time=to_date('2012/09/03-21:50:35', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=2, num_tc_failed=30, num_tc_error=0 where run_id='amxrel2qa1-2012/09/03-21:20:18'
