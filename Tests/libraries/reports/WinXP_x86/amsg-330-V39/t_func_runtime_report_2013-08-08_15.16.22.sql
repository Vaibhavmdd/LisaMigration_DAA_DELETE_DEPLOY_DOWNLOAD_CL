insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('hparmar-t410-2013/08/08-15:16:22', 'hparmar-t410', 'WinXP_x86', 'superuser', to_date('2013/08/08-15:16:22', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '330', 'Version 3.3.0 build V39', 'runtime', null, 0, 0, 0, 0, 0, 'WinXP_x86/amsg-330-V39', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('hparmar-t410-2013/08/08-15:16:22', null, 'unknown', 'superuser', to_date('2013/08/08-15:16:22', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/unknown', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-15:16:22', 'unknown', '5.21', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='unknown' and case_id='5.21' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'unknown', '5.21', 1, 'SOAPException with SOAP/JMS
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
update tsi_tests_set set seq_no=1, end_time=to_date('2013/08/08-15:17:04', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=1, num_tc_failed=0, num_tc_error=0 where run_id='hparmar-t410-2013/08/08-15:16:22' and set_name='unknown'
update tsi_tests_run set end_time=to_date('2013/08/08-15:17:04', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=1, num_tc_failed=0, num_tc_error=0 where run_id='hparmar-t410-2013/08/08-15:16:22'
