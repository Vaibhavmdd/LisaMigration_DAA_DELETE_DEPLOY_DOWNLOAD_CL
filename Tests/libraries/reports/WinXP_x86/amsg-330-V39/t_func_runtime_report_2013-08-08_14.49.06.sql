insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('hparmar-t410-2013/08/08-14:49:06', 'hparmar-t410', 'WinXP_x86', 'superuser', to_date('2013/08/08-14:49:06', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '330', 'Version 3.3.0 build V39', 'runtime', null, 0, 0, 0, 0, 0, 'WinXP_x86/amsg-330-V39', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('hparmar-t410-2013/08/08-14:49:06', null, 'unknown', 'superuser', to_date('2013/08/08-14:49:06', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/unknown', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-14:49:06', 'unknown', '5.6', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='unknown' and case_id='5.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'unknown', '5.6', 1, 'SOAP over JMS with Nested composite.
Pass properties through nested composites.
JMS RT with inline credentials imported from design-time.

Scenario: SOAP(JMS) <-> Composite1 <-> Composite2 <-> SOAP(JMS) | SOAP(JMS) <-> Java
          Nested Composite: SOAP <-> Java
MEP: In-Out')
update tsi_tests_set set seq_no=1, end_time=to_date('2013/08/08-14:49:12', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='hparmar-t410-2013/08/08-14:49:06' and set_name='unknown'
update tsi_tests_run set end_time=to_date('2013/08/08-14:49:13', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='hparmar-t410-2013/08/08-14:49:06'
