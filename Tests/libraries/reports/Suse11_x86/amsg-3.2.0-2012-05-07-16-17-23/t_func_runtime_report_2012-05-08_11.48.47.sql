insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('amxrel2qa1-2012/05/08-11:48:47', 'amxrel2qa1', 'Suse11_x86', 'superuser', to_date('2012/05/08-11:48:47', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '3.2.0', 'Version 3.2.0 build 2012-05-07-16-17-23', 'runtime', null, 0, 0, 0, 0, 0, 'Suse11_x86/amsg-3.2.0-2012-05-07-16-17-23', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('amxrel2qa1-2012/05/08-11:48:47', null, 'unknown', 'superuser', to_date('2012/05/08-11:48:47', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/unknown', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/05/08-11:48:47', 'unknown', 'setup', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='unknown' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'unknown', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
update tsi_tests_set set seq_no=1, end_time=to_date('2012/05/08-12:20:02', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=1, num_tc_failed=0, num_tc_error=0 where run_id='amxrel2qa1-2012/05/08-11:48:47' and set_name='unknown'
update tsi_tests_run set end_time=to_date('2012/05/08-12:20:03', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=1, num_tc_failed=0, num_tc_error=0 where run_id='amxrel2qa1-2012/05/08-11:48:47'
