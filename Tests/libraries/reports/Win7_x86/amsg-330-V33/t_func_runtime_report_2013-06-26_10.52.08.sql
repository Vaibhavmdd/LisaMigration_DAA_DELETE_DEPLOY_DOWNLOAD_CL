insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('jpandya-dt-2013/06/26-10:52:08', 'jpandya-dt', 'Win7_x86', 'superuser', to_date('2013/06/26-10:52:08', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '330', 'Version 3.3.0 build V33', 'runtime', null, 0, 0, 0, 0, 0, 'Win7_x86/amsg-330-V33', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-dt-2013/06/26-10:52:08', null, 'intent_onewaytxn', 'superuser', to_date('2013/06/26-10:52:12', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/intents/onewayTxn/intent_onewaytxn', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/26-10:52:08', 'intent_onewaytxn', 'setup', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='intent_onewaytxn' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'intent_onewaytxn', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
update tsi_tests_set set seq_no=1, end_time=to_date('2013/06/26-10:59:20', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='jpandya-dt-2013/06/26-10:52:08' and set_name='intent_onewaytxn'
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-dt-2013/06/26-10:52:08', null, 'intent', 'superuser', to_date('2013/06/26-10:59:23', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/intents/onewayTxn/intent_onewaytxn', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/26-10:52:08', 'intent', '14.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='intent' and case_id='14.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'intent', '14.1', 1, 'Oneway Txn test. SOAP -- Java with In-only  WSDL.

Intent on the Component service for redelivery.
')
update tsi_tests_set set seq_no=1, end_time=to_date('2013/06/26-11:01:17', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='jpandya-dt-2013/06/26-10:52:08' and set_name='intent'
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/26-10:52:08', 'intent_onewaytxn', '14.2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='intent_onewaytxn' and case_id='14.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'intent_onewaytxn', '14.2', 1, 'Oneway Txn test. SOAP (Node1) -- Java (Node2) each deployed in with In-only  WSDL.

Intent on the Component service for redelivery.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/26-10:52:08', 'intent_onewaytxn', '14.3', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='intent_onewaytxn' and case_id='14.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'intent_onewaytxn', '14.3', 1, 'Oneway Txn test. SOAP -- Java with In-only  WSDL.

Intent on the Component service for redelivery.

When Null Pointer exception is thrown, Stop redelivery is triggered.')
