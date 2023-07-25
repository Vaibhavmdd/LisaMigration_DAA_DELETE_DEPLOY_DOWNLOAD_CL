insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('amxrel2qa1-2012/06/13-17:55:23', 'amxrel2qa1', 'Suse11_x86', 'superuser', to_date('2012/06/13-17:55:23', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '3.1.5', 'Version 3.1.5 build V15.2', 'runtime', null, 0, 0, 0, 0, 0, 'Suse11_x86/amsg-3.1.5-V15.2', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('amxrel2qa1-2012/06/13-17:55:23', null, 'unknown', 'superuser', to_date('2012/06/13-17:55:23', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/bat/unknown', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('amxrel2qa1-2012/06/13-17:55:23', 'unknown', '5.10', '1', 'FAILED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='unknown' and case_id='5.10' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'unknown', '5.10', 1, 'Description : Test Resources Templates in Java component: JMS, SMTP, LDAP, Teneo (-> Hibernate -> JDBC).
              Import RT from DAA is false. All RT are create and installed via CLI.
              
Scenario: Composite: 
            SOAP BT(HTTP) <-> Java1(Teneo RT) <-> Java2(JMS RT)
            JMS BT <-> Java3(SMTP RT) <-> Java4(LDAPConn RT)

MEP: In-Out

JMS RT with inline credential
JDBC RT with keystore credential
SMTP RT with keystore credential
LDAP RT with keystore cred')
update tsi_tests_set set seq_no=1, end_time=to_date('2012/06/13-17:57:38', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='amxrel2qa1-2012/06/13-17:55:23' and set_name='unknown'
update tsi_tests_run set end_time=to_date('2012/06/13-17:57:38', 'yyyy/mm/dd-hh24:mi:ss'), status='COMPLETED', num_tc_passed=0, num_tc_failed=1, num_tc_error=0 where run_id='amxrel2qa1-2012/06/13-17:55:23'
