insert into tsi_tests_run(run_id, hostname, platform, user_name, start_time, end_time, product_name, product_version, product_build, category, status, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, t_tests_version, num_tc_error) values('jpandya-dt-2013/06/25-18:04:24', 'jpandya-dt', 'Win7_x86', 'superuser', to_date('2013/06/25-18:04:24', 'yyyy/mm/dd-hh24:mi:ss'), null, 'amsg', '320', 'Version 3.2.0 build V106 HF-5', 'runtime', null, 0, 0, 0, 0, 0, 'Win7_x86/amsg-320-V106-HF-5', null, 'LISA4.6', 0)
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-dt-2013/06/25-18:04:24', null, 'soap32_http', 'superuser', to_date('2013/06/25-18:04:31', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/soap/soap32_http', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', 'setup', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='setup' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', 'setup', 1, 'Create TPShell and Provision DB driver if Oracle/SQLServer/DB2
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
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.1', 1, 'Description : ComplexType
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.2', 1, 'Description : ComplexType
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
update tsi_tests_set set seq_no=3, end_time=to_date('2013/06/25-18:24:22', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=3, num_tc_failed=0, num_tc_error=0 where run_id='jpandya-dt-2013/06/25-18:04:24' and set_name='soap32_http'
insert into tsi_tests_set(run_id, seq_no, set_name, owner, start_time, end_time, num_tc_started, num_tc_passed, num_tc_failed, num_tc_manual, num_tc_uncertain, log_url, note, num_tc_error) values('jpandya-dt-2013/06/25-18:04:24', null, 'soap32', 'superuser', to_date('2013/06/25-18:24:25', 'yyyy/mm/dd-hh24:mi:ss'), null, 0, 0, 0, 0, 0, 'func/runtime/soap/soap32_http', null, 0)
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32', '1.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32' and case_id='1.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32', '1.3', 1, 'Description : ComplexTypeInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
update tsi_tests_set set seq_no=1, end_time=to_date('2013/06/25-18:30:03', 'yyyy/mm/dd-hh24:mi:ss'), num_tc_passed=1, num_tc_failed=0, num_tc_error=0 where run_id='jpandya-dt-2013/06/25-18:04:24' and set_name='soap32'
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.4', 1, 'Description : ComplexTypeMpartInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In Only
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.6', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.6', 1, 'Description : ComplexTypeRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.8', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.8' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.8', 1, 'Description : SimpleType
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.9', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.9' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.9', 1, 'Description : SimpleTypeInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.10', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.10' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.10', 1, 'Description : SimpleTypeMpartInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In Only
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.11', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.11' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.11', 1, 'Description : SimpleTypeMpartRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '1.13', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='1.13' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '1.13', 1, 'Description : Modified BAT 5.1 - Complex type having a single element ONLY
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) (Configured for AMX Provider)
									   SOAP BT(HTTP) (Configured for BW Provider)
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.2', 1, 'Description : ComplexTypeIn
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.3', 1, 'Description : ComplexTypeInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.4', 1, 'Description : ComplexTypeMpartInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In Only
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.5', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.5', 1, 'Description : ComplexTypeMpartRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.6', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.6', 1, 'Description : ComplexTypeRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.7', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.7' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.7', 1, 'Description : SimpleType
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.8', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.8' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.8', 1, 'Description : SimpleTypeIn
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.9', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.9' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.9', 1, 'Description : SimpleTypeInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.10', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.10' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.10', 1, 'Description : SimpleTypeMpartRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In Only
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.11', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.11' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.11', 1, 'Description : SimpleTypeMpartRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '2.12', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='2.12' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '2.12', 1, 'Description : SimpleTypeRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '3.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='3.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '3.1', 1, 'Description : Global-Local-Qual-UnQual-Test
Scenario 	: SOAP BT(HTTP) <-> JAVA
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '4.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='4.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '4.1', 1, 'Description : Context Propagation - Valid Positive case
Scenario 	: SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '4.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='4.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '4.3', 1, 'Description : Context Propagation - Setting context parameter with invalid datatype / Undeclared Fault
Scenario 	: SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '4.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='4.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '4.4', 1, 'Description : Context Propagation - valid case
Scenario 	: SOAP BT(HTTP) <-> JAVA 
MEP         : In-Only 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '4.5', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='4.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '4.5', 1, 'Description : Context Propagation - Test Fault context with declared fault
Scenario 	: SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '4.6', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='4.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '4.6', 1, 'Description : Context Propagation at Reference. Test fault and http transport headers
Scenario 	: SOAP BT(HTTP) <-> JAVA <--> SOAP BT(HTTP)
              SOAP BT(HTTP) <-> JAVA
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '6.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='6.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '6.1', 1, 'Description : Anonymous Addressing -ve testcases
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> SOAP BT(HTTP) 
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA 

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: RPC/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '6.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='6.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '6.2', 1, 'Description : WS Addressing Feature +ve and -ve cases
Scenario: 	Composite 1: 
			SOAP BT(HTTP / WS Addressing ) <-> JAVA <-> SOAP BT(HTTP / WS Addressing) 
			Composite 2:	
			SOAP BT(HTTP / WS Addressing) <-> JAVA (Configured for BW Provider)

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '7.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='7.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '7.1', 1, 'Description : Declared Header- Valid Positive case
Scenario 	: SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document - Element
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '8.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='8.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '8.1', 1, 'Description : Complex type with attribute group and mixed content
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '8.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='8.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '8.2', 1, 'Description : Mixed content
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : RPC
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '8.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='8.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '8.3', 1, 'Description : List and union
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '8.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='8.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '8.4', 1, 'Description : Substututiongroup
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '8.5', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='8.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '8.5', 1, 'Description : Groups
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '9.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='9.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '9.1', 1, 'Description : SOAP BT Reference Timeout
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA (Timeout) <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '9.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='9.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '9.2', 1, 'Description : Component Reference Timeout
Scenario 	: SOAP BT(HTTP) <-> JAVA (Timeout) <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '9.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='9.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '9.4', 1, 'Description : Sca Reference Timeout
Scenario 	: COMPOSITE1[SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SCA(timeout)] <-> COMPOSITE2[SCA <-> JAVA]
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '9.5', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='9.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '9.5', 1, 'Description : SCA Reference Timeout
Scenario 	: COMPOSITE1[SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SCA](timeout) <-> COMPOSITE2[SCA <-> JAVA]
MEP         : In-Out
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '12.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='12.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '12.1', 1, 'Description : Dynamic EPR - Valid Positive case
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> SOAP BT(HTTP)
              SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '12.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='12.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '12.2', 1, 'Description : Dynamic EPR - Error cases
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> SOAP BT(HTTP)
              SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '12.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='12.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '12.3', 1, 'Description : Dynamic EPR - Testing with WS-Addressing Enabled SOAP Reference
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> SOAP BT(HTTP)
              SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '12.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='12.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '12.4', 1, 'Description : Test EPR-1

Scenario: 	Composite 1: 
			SOAP BT(JMS) <-> JAVA <-> SOAP BT(JMS)
            
			Composite 2:	
			SOAP BT(JMS) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '12.5', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='12.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '12.5', 1, 'Description : Test End Point Reference

Scenario: 	Composite 1: 
			SOAP BT(JMS) <-> JAVA <-> SOAP BT(JMS)
            
			Composite 2:	
			SOAP BT(JMS) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 

 Wire by implementation  is disabled and EPR code is written in java. 
This code should be ignored and the normal response should be returned.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '18.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='18.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '18.1', 1, 'Description : Test JMS Headers 

Scenario: 				
			Composite 1:	
			SOAP BT(JMS) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 

The JMS headers are accessed from the java code.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '18.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='18.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '18.2', 1, 'Description : Test coverage with SOAP Styles specified at operation and binding level... 

Scenario: 				
			Composite 1:	
			SOAP BT(JMS) <-> JAVA

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 

The JMS headers are accessed from the java code.')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '30.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='30.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '30.1', 1, 'Description : AMRP-3417 (3.1.2.HF4) - SOAP BT Reference dropping XML prefixes 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '30.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='30.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '30.2', 1, 'Description : AMRP-3365: NPE when attempting to undeploy a component on configured state after node restart
Fix Version: 3.3.2-HF-004')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '31.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='31.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '31.1', 1, 'Description : Multiple Binding case
Scenario: SOAP BT(JMS) / SOAP BT(Http) -> Mediation
MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '30.4', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='30.4' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '30.4', 1, 'Description : AMRP-3904 - Context parameter pointing to a WSDL message defined in an imported WSDL
Fix Version : 3.1.5-HF2
Scenario 	: SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.1 
SOAP Style  : Document
Encoding    : Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.2', 1, 'Description : This test case is recreated with SOAP version 1.2 for Test Case # 24.5. 
Test Declared Fault Context 

Scenario: 	Composite 1:	
			SOAP BT(JMS) <-> JAVA

MEP: In-Out 
SOAP Version: 1.2 
SOAP Style/Encoding: Document/Literal 
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.6', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.6' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.6', 1, 'Description : WS Addressing Feature +ve and -ve cases
Scenario: 	Composite 1: 
			SOAP BT(HTTP / WS Addressing ) <-> JAVA <-> SOAP BT(HTTP / WS Addressing) 
			Composite 2:	
			SOAP BT(HTTP / WS Addressing) <-> JAVA (Configured for BW Provider)

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.5', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.5' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.5', 1, 'Description : Anonymous Addressing -ve testcases - Regenerated project on 320-v20
              Converted project 6.3 
Scenario: 	Composite 1: 
			SOAP BT(HTTP) <-> JAVA <-> SOAP BT(HTTP) 
			Composite 2:	
			SOAP BT(HTTP) <-> JAVA 

MEP: In-Out 
SOAP Version: 1.2
SOAP Style/Encoding: RPC/Literal


')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.12', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.12' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.12', 1, 'Description : ComplexTypeMpartInRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In Only
SOAP Version: 1.2
SOAP Style  : RPC
Encoding    : Literal
Recreated from : 1.4
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.13', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.13' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.13', 1, 'Description : SimpleTypeMpartRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.2 
SOAP Style  : RPC
Encoding    : Literal 
Recreated from : 1.11')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.14', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.14' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.14', 1, 'Description : ComplexTypeIn
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In 
SOAP Version: 1.2
SOAP Style  : Document
Encoding    : Literal 
Recreated from : 2.2
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.15', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.15' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.15', 1, 'Description : ComplexTypeRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.2
SOAP Style  : RPC
Encoding    : Literal
Recreated from : 2.6
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.16', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.16' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.16', 1, 'Description : SimpleTypeMpartRPC
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out 
SOAP Version: 1.2
SOAP Style  : RPC
Encoding    : Literal
Recreated from : 2.11
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.17', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.17' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.17', 1, 'Description : Complex type with attribute group and mixed content
Scenario 	: SOAP BT(HTTP) <-> JAVA <-> JAVA <-> SOAP BT(HTTP) <-> JAVA 
MEP         : In-Out
SOAP Version: 1.2
SOAP Style  : Document
Encoding    : Literal
Recreated from : 8.1
')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.19.1', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.19.1' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.19.1', 1, 'Description : Declared, undeclared faults, soap exception has complex type with no nested elements, one fault per operation
Scenario 	: SOAP BT(HTTP) <-> JAVA
MEP         : In-Out
SOAP Version: 1.2
SOAP Style  : Document
Encoding    : Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.19.2', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.19.2' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.19.2', 1, 'Description : Declared, undeclared faults, soap exception has complex type with nested elements, one fault per operation
Scenario 	: SOAP BT(HTTP) <-> JAVA
MEP         : In-Out
SOAP Version: 1.2
SOAP Style  : Document
Encoding    : Literal')
insert into tsi_tests_case(run_id, set_name, case_id, variant_seq, test_result, is_manual, note) values('jpandya-dt-2013/06/25-18:04:24', 'soap32_http', '20.19.3', '1', 'PASSED', 'N', null)
delete from tsi_tests_tc_desc where product_name='amsg' and category='func_runtime' and set_name='soap32_http' and case_id='20.19.3' and variant_seq=1
insert into tsi_tests_tc_desc(product_name, category, set_name, case_id, variant_seq, case_desc) values('amsg', 'func_runtime', 'soap32_http', '20.19.3', 1, 'Description : Declared, undeclared faults, soap exception has complex type with nested elements, multi fault per operation
Scenario 	: SOAP BT(HTTP) <-> JAVA
MEP         : In-Out
SOAP Version: 1.2
SOAP Style  : Document
Encoding    : Literal')
