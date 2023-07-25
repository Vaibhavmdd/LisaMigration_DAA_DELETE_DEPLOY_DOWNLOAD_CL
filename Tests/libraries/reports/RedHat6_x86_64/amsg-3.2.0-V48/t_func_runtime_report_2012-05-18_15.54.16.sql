insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('spiderman-2012/05/18-15:54:16', 'spiderman', 'RedHat6_x86_64', 'superuser', to_date('2012/05/18-15:54:16', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '3.2.0', 'Version 3.2.0 build V48', 'runtime', null, 0, 0, 0, 0, 0, 'RedHat6_x86_64/amsg-3.2.0-V48', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('spiderman-2012/05/18-15:54:16', null, 'unknown', 'superuser', to_date('2012/05/18-15:54:16', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/unknown', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('spiderman-2012/05/18-15:54:16', 'unknown', '5.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='unknown' and case_id='5.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'unknown', '5.1', 1, 'Description : Test Declared / Undeclared fault with AMX and BW Provider
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) (Configured for AMX Provider)
									   SOAP BT(HTTP) (Configured for BW Provider)
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
update tsi_tests_set set seq_no=1, end_time=to_date('2012/05/18-15:57:33', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='spiderman-2012/05/18-15:54:16' and set_name='unknown'
update tsi_tests_run set end_time=to_date('2012/05/18-15:57:33', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='spiderman-2012/05/18-15:54:16'
