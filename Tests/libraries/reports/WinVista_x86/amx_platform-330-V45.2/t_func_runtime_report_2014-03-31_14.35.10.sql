insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'KPHAPUNK-Z820', 'WinVista_x86', 'superuser', to_date('2014/03/31-14:35:10', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amx_platform', '330', 'Version 3.3.0 build V45.2', 'runtime', null, 0, 0, 0, 0, 0, 'WinVista_x86/amx_platform-330-V45.2', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('KPHAPUNK-Z820-2014/03/31-14:35:10', null, 'bat_2node_orcl', 'superuser', to_date('2014/03/31-14:35:10', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/bat_2node_orcl', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', 'tctSilentSetup', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='tctSilentSetup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', 'tctSilentSetup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.1', 1, 'Description : Test Declared / Undeclared fault with AMX and BW Provider
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) (Configured for AMX Provider)
									   SOAP BT(HTTP) (Configured for BW Provider)
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.2', 1, 'JMS BT Service and Reference.
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.3', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.3', 1, 'Description :   Test File-based Logging.
                Create 3 loggers: logger1 for Nodes (done in setup), logger2 for Java Component, logger3 for Application
Scenario:       SOAP BT(HTTP) -> Java -> Spring

MEP: In-Only 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.4', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.4', 1, 'Description : Test WS Addressing (Anonymous   Non Anonymous) with Declared and Undeclared fault
Scenario: 	Composite 1: 
			SOAP BT(HTTP) (Anonymous ws addressing) <-> JAVA <-> SOAP BT(HTTP) (Non Anonymous ws addressing) 
			Composite 2:	
			SOAP BT(HTTP) (Non Anonymous ws addressing) <-> JAVA 
MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: RPC/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.5', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.5', 1, 'SCA Wire
Service Virtualization is created in CLI (does not exist at design-time)
Reference Virtualization is wired in CLI
Deploy App and invoke
Restart App and invoke
Redeploy App and invoke

Scenario: SOAP BT (HTTP) <-> Spring <-> SCA | SCA <-> Java
MEP: In-Out
RPC/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.6', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.6', 1, 'SOAP over JMS with Nested composite.
Pass properties through nested composites.
JMS RT with inline credentials imported from design-time.

Scenario: SOAP(JMS) <-> Composite1 <-> Composite2 <-> SOAP(JMS) | SOAP(JMS) <-> Java
          Nested Composite: SOAP <-> Java
MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.7', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.7' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.7', 1, 'Description: Test SOAP over HTTPS
Scenario: SOAP BT(HTTPS without MutualAuthentication) <-> JAVA <-> SOAP BT(HTTPS with MutualAuthentication) 

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Doc/Literal/Type - RPC/Literal/Type 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.8', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.8' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.8', 1, 'Description : Test Prepare-to-Undeploy intent.
              Node-level Substitution Variables are used for http Connector and Node name.
              
Scenario: Composite: SOAP BT(HTTP) <-> Mock

MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.9', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.9' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.9', 1, 'Graceful Start intent.
Use Node Svars, Binding properties, Reference wiring.

Scenario: 
App1: SOAP BT(HTTP) <-> Java <-> Java <-> SCA (wired to App2)
App2: SCA <-> Java

Starting App1 also starts App2.
Stopping App2 also stops App1.
Clean up Apps at the end.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.10', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.10' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.10', 1, 'Description : Test Resources Templates in Java component: JMS, Teneo (-> Hibernate -> JDBC).
              Import RT from DAA is false. All RT are create and installed via CLI.
              
Scenario: Composite: 
            SOAP BT(HTTP) <-> Java1(Teneo RT) <-> Java2(JMS RT)
            

MEP: In-Out

JMS RT with inline credential
JDBC RT with keystore credential

')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.11', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.11' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.11', 1, 'Scenario: WebApp - Java with Hibernate Shared Resource
Import the RTs from DAA
Overwrite RTs by merging with previously imported RTs
MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.12', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.12' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.12', 1, 'Global Transaction with Oracle 11g.
Provision and remove Oracle JDBC feature.
Use App SVars.
Stop/Start App

Scenario: SOAP(HTTP) <-> Java <-> Java 

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Doc/Literal/Type
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('KPHAPUNK-Z820-2014/03/31-14:35:10', 'bat_2node_orcl', '5.13', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amx_platform' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.13' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amx_platform', 'func_runtime', 'bat_2node_orcl', '5.13', 1, 'One way Transaction intent with Oracle 11g.
Provision and remove Oracle JDBC feature.
Validate database rollback and message redelivery both for 
Java and Spring components

Scenario: SOAP(HTTP) <-> Java <-> Spring <-> Java 

MEP: In-Only 
SOAP Version: 1.1 
SOAP Style/Encoding: Doc/Literal/Type
')
