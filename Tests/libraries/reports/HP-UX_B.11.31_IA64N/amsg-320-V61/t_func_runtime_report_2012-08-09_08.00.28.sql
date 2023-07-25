insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('hpita17-2012/08/09-08:00:28', 'hpita17', 'HP-UX_B.11.31_IA64N', 'superuser', to_date('2012/08/09-08:00:28', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '320', 'Version 3.2.0 build V61', 'runtime', null, 0, 0, 0, 0, 0, 'HP-UX_B.11.31_IA64N/amsg-320-V61', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('hpita17-2012/08/09-08:00:28', null, 'lifecycle_4node_hsql', 'superuser', to_date('2012/08/09-08:00:48', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/admin/lifecycle/lifecycle_4node_hsql', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', 'install', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='install' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', 'install', 1, 'Install ActiveMatrix in silent mode.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', 'setup', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', 'postsetup', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='postsetup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', 'postsetup', 1, 'Delete Existing RT/RIs
Setup Nodes
Setup RI/RIs
Restart TIBCO Host')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.0', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.0' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.0', 1, 'Lifecycle Test, deploy apps - restart nodes
 1) Configure and Deploy Apps with start = true
 2) Check SOAP Request Reply (should get response)
 3) Stop and Start Nodes
 4) Sleep for completion
 5) Check SOAP Request Reply (should get response)
 6) Cleanup Apps 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.1', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.1', 1, 'Lifecyle Test, Offline deployment online start
 1) Stop Nodes
 2) Configure and Deploy Apps with start = false
 3) Start Nodes and Apps
 4) Sleep for completion
 5) Check SOAP Request Reply (should get response)
 6) Cleanup Apps 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.2', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.2', 1, 'Lifecyle Test, Offline deployment offline start
 1) Stop Nodes
 2) Configure and Deploy Apps with start = true
 3) Start Nodes and Apps
 4) Sleep for completion
 5) Check SOAP Request Reply (should get response)
 6) Cleanup Apps  ')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.3', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.3', 1, 'Lifecyle Test, Offline Stop
1) Start Nodes
2) Configure and Deploy Apps with start = true
3) Check SOAP Request Reply (should get response)
4) Stop Nodes and Apps
5) Restart Nodes
6) Check SOAP Request Reply (response page not found)
7) Cleanup Apps ')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.4', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.4', 1, 'Lifecyle Test, Offline Undeploy
1) Start Nodes
2) Configure and Deploy Apps with start = true
3) Check SOAP Request Reply (should get response)
4) Stop Nodes and Undeploy Apps
5) Restart Nodes
6) Check SOAP Request Reply (response page not found)
7) Cleanup Apps')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.5', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.5', 1, 'Lifecyle Test, standard deploy-undeploy-deploy sequence
1) Start Nodes
2) Configure and Deploy Apps with start = true
3) Check SOAP Request Reply (should get response)
4) Undeploy Apps
5) Check SOAP Request Reply (response page not found)
6) Redeploy Apps
7) Check SOAP Request Reply (should get response)
8) Cleanup Apps 
 ')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.6', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.6', 1, 'Lifecycle Test, stop apps - restart nodes - undeploy apps
 1) Configure and Deploy Apps with start = true
 2) Check SOAP Request Reply (should get response)
 3) Stop Apps
 4) Stop and start Nodes
 5) Cleanup Apps (undeploy + delete Apps)
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hpita17-2012/08/09-08:00:28', 'lifecycle_4node_hsql', '1.7', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='lifecycle_4node_hsql' and case_id='1.7' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'lifecycle_4node_hsql', '1.7', 1, 'Lifecycle Test, stop apps - restart node - start apps
 1) Configure and Deploy Apps with start = true
 2) Check SOAP Request Reply (should get response)
 3) Stop Apps
 4) Stop and Start Nodes
 5) Start Apps
 6) Check SOAP Request Reply (should get response)
 7) Cleanup Apps 
')
update tsi_tests_set set seq_no=11, end_time=to_date('2012/08/09-08:14:24', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=11, num_tc_error=0 where run_id='hpita17-2012/08/09-08:00:28' and set_name='lifecycle_4node_hsql'
update tsi_tests_run set end_time=to_date('2012/08/09-08:14:24', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=11, num_tc_error=0 where run_id='hpita17-2012/08/09-08:00:28'
