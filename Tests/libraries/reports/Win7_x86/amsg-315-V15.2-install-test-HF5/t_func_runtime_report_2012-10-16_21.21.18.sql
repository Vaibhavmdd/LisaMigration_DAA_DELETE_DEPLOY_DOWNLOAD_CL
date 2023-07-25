insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('jpandya-z400-2012/10/16-21:21:18', 'jpandya-z400', 'Win7_x86', 'superuser', to_date('2012/10/16-21:21:18', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '315', 'Version 3.1.5 build V15.2 install-test-HF5', 'runtime', null, 0, 0, 0, 0, 0, 'Win7_x86/amsg-315-V15.2-install-test-HF5', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-z400-2012/10/16-21:21:18', null, 'test-32_2node_hsql', 'superuser', to_date('2012/10/16-21:21:18', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/test-32_2node_hsql', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-z400-2012/10/16-21:21:18', 'test-32_2node_hsql', 'installHF', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='test-32_2node_hsql' and case_id='installHF' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'test-32_2node_hsql', 'installHF', 1, 'Suite installation in silent mode of:
- AMX SG
- CPP IT
- Adapter BT
- EJB BT
- CLR IT (if Windows)
Then install AMX HF on top of it in silent mode.')
update tsi_tests_set set seq_no=1, end_time=to_date('2012/10/16-21:22:40', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='jpandya-z400-2012/10/16-21:21:18' and set_name='test-32_2node_hsql'
update tsi_tests_run set end_time=to_date('2012/10/16-21:22:40', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='jpandya-z400-2012/10/16-21:21:18'
