insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('hparmar-t410-2013/08/08-14:24:31', 'hparmar-t410', 'WinXP_x86', 'superuser', to_date('2013/08/08-14:24:31', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '330', 'Version 3.3.0 build V39', 'runtime', null, 0, 0, 0, 0, 0, 'WinXP_x86/amsg-330-V39', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('hparmar-t410-2013/08/08-14:24:31', null, 'bat_2node_hsql', 'superuser', to_date('2013/08/08-14:24:32', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/bat_2node_hsql', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-14:24:31', 'bat_2node_hsql', 'setup', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-14:24:31', 'bat_2node_hsql', '5.6', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.6', 1, 'SOAP over JMS with Nested composite.
Pass properties through nested composites.
JMS RT with inline credentials imported from design-time.

Scenario: SOAP(JMS) <-> Composite1 <-> Composite2 <-> SOAP(JMS) | SOAP(JMS) <-> Java
          Nested Composite: SOAP <-> Java
MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-14:24:31', 'bat_2node_hsql', '5.8', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.8' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.8', 1, 'Description : Test Prepare-to-Undeploy intent.
              Node-level Substitution Variables are used for http Connector and Node name.
              
Scenario: Composite: SOAP BT(HTTP) <-> Mock

MEP: In-Out')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-14:24:31', 'bat_2node_hsql', '5.21', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='5.21' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '5.21', 1, 'SOAPException with SOAP/JMS
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('hparmar-t410-2013/08/08-14:24:31', 'bat_2node_hsql', '6.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='bat_2node_hsql' and case_id='6.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'bat_2node_hsql', '6.4', 1, 'Mediation with SCA wire.
Exercise GenerateReply Task in Mediation.
JMS RT with inline credentials are created (not imported) and deleted in CLI with no namespace declaration.
Clean up everything at the end.

C1 on Node1 : SOAP BT (HTTP) <-> Mediation <-> SCA
C2 on Node2 : SCA <-> Mediation (with GenerateReplyTask)
C3 on Node1 : SCA <-> Mediation <-> SOAP BT (JMS) <-> BW
   
C1 <-> C2
   <-> C3')
update tsi_tests_set set seq_no=5, end_time=to_date('2013/08/08-14:42:56', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=3, num_tc_failed=2, num_tc_error=0 where run_id='hparmar-t410-2013/08/08-14:24:31' and set_name='bat_2node_hsql'
update tsi_tests_run set end_time=to_date('2013/08/08-14:42:57', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=3, num_tc_failed=2, num_tc_error=0 where run_id='hparmar-t410-2013/08/08-14:24:31'
