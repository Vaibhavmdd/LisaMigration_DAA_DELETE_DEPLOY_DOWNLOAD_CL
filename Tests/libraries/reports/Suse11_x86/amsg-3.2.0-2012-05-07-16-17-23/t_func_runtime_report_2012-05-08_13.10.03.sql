insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('amxrel2qa1-2012/05/08-13:10:03', 'amxrel2qa1', 'Suse11_x86', 'superuser', to_date('2012/05/08-13:10:03', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '3.2.0', 'Version 3.2.0 build 2012-05-07-16-17-23', 'runtime', null, 0, 0, 0, 0, 0, 'Suse11_x86/amsg-3.2.0-2012-05-07-16-17-23', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('amxrel2qa1-2012/05/08-13:10:03', null, 'unknown', 'superuser', to_date('2012/05/08-13:10:03', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/unknown', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/05/08-13:10:03', 'unknown', '5.19', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='unknown' and case_id='5.19' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'unknown', '5.19', 1, 'Design Time CLI:
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
update tsi_tests_set set seq_no=1, end_time=to_date('2012/05/08-13:13:00', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='amxrel2qa1-2012/05/08-13:10:03' and set_name='unknown'
update tsi_tests_run set end_time=to_date('2012/05/08-13:13:00', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='amxrel2qa1-2012/05/08-13:10:03'
