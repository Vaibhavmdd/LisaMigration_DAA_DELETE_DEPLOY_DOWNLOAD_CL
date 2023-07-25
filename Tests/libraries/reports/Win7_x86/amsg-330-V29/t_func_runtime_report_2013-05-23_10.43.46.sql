insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('jpandya-z400-2013/05/23-10:43:46', 'jpandya-z400', 'Win7_x86', 'superuser', to_date('2013/05/23-10:43:46', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '330', 'Version 3.3.0 build V29', 'runtime', null, 0, 0, 0, 0, 0, 'Win7_x86/amsg-330-V29', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-z400-2013/05/23-10:43:46', null, 'bat_2node_orcl', 'superuser', to_date('2013/05/23-10:43:56', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/bat_2node_orcl', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-z400-2013/05/23-10:43:46', 'bat_2node_orcl', 'install2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='install2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_orcl', 'install2', 1, 'suite installation in silent mode of:
- ActiveMatrix Service Grid
- CPP IT
- Adapter BT
- EJB BT
- CLR IT (on Windows only)')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-z400-2013/05/23-10:43:46', 'bat_2node_orcl', 'setup', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_orcl', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-z400-2013/05/23-10:43:46', 'bat_2node_orcl', '5.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_orcl', '5.1', 1, 'Description : Test Declared / Undeclared fault with AMX and BW Provider
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) (Configured for AMX Provider)
									   SOAP BT(HTTP) (Configured for BW Provider)
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-z400-2013/05/23-10:43:46', 'bat_2node_orcl', '5.2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_orcl' and case_id='5.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_orcl', '5.2', 1, 'JMS BT Service and Reference.
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
update tsi_tests_set set seq_no=4, end_time=to_date('2013/05/23-10:51:23', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=4, num_tc_error=0 where run_id='jpandya-z400-2013/05/23-10:43:46' and set_name='bat_2node_orcl'
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-z400-2013/05/23-10:43:46', null, 'null', 'superuser', to_date('2013/05/23-10:51:24', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/bat_2node_orcl', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-z400-2013/05/23-10:43:46', 'null', '5.3', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='null' and case_id='5.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'null', '5.3', 1, 'Description :   Test File-based Logging.
                Create 3 loggers: logger1 for Nodes (done in setup), logger2 for Java Component, logger3 for Application
Scenario:       SOAP BT(HTTP) -> Java -> Spring

MEP: In-Only 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal')
update tsi_tests_set set seq_no=1, end_time=to_date('2013/05/23-11:03:03', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='jpandya-z400-2013/05/23-10:43:46' and set_name='null'
update tsi_tests_run set end_time=to_date('2013/05/23-11:03:03', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=5, num_tc_error=0 where run_id='jpandya-z400-2013/05/23-10:43:46'
