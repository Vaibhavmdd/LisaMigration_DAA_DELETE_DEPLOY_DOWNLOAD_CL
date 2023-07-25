package com.tibco.cl3_22;

import java.sql.Timestamp;
import java.util.HashMap;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.corona.eventformat.model.base.BaseEventFactory;
import com.tibco.corona.eventformat.model.base.BaseEventFormat;
import com.tibco.corona.eventformat.model.base.Classifier;
import com.tibco.corona.eventformat.model.base.ECompId;
import com.tibco.corona.eventformat.model.base.ReportingComponentId;
import com.tibco.corona.eventformat.model.base.SituationType;
import com.tibco.corona.eventformat.model.engine.EngineEventFactory;
import com.tibco.commonlogging.factory.SituationCriteria;
import com.tibco.corona.eventformat.model.HashMapping;
import com.tibco.matrix.qa.wsdl.lotteryservice.LotteryPort;
import com.tibco.matrix.qa.xsd.lottery.OneToNinetyNine;
import com.tibco.cl3_22.JavaComponent;
import com.tibco.cl3_22.AbstractJavaComponent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class JavaComponent extends AbstractJavaComponent {
	private Logger javaLogger = LoggerFactory.getLogger(JavaComponent.class);
	private String curtime;
		/**
	 * Initialization of JavaComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of JavaComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: GetNumber	 */
	public OneToNinetyNine getNumber(OneToNinetyNine part1) {
		// Add the business logic here
		Integer input=part1.getIntValue();
		javaLogger.info("The input 3_22QA value:" + input);
		javaLogger.debug("Debug.say 3_21QA log message in Java component");
		javaLogger.info("Info.say 3_22QA log message in Java component");
		javaLogger.warn("Warn.say 3_22QA log message in Java component");
		javaLogger.error("Error.say 3_22QA log message in Java component");
		javaLogger.trace("Trace.say 3_22QA log message in Java component");
		
		curtime = new Timestamp(System.currentTimeMillis()).toString();
		HashMap<String, String> logMap = new HashMap<String, String>();
		logMap.put(HashMapping.CL_GLOBAL_INSTANCE_ID, curtime);
		logMap.put(HashMapping.CL_CREATION_TIME, "2011-03-11 15:26:54.562");
		logMap.put(HashMapping.CL_LOCATION_ID, "loctype=FQHostname;locvalue=bclab-dt.na.tibco.com");
		logMap.put(HashMapping.CL_CONTEXT_ID, "1fc69da2-e78f-11db-8314-0800200c9a66");
		logMap.put(HashMapping.CL_PARENT_CONTEXT_ID, "6d32d53e-e7a2-11db-8314-0800200c9a66");
		logMap.put(HashMapping.CL_SECURITY_PRINCIPAL, "CN=John Doe, OU=Industry Solutions, O=TIBCO, C=US");
		logMap.put(HashMapping.CL_MSG_ID, "QAENGINE-999999");
		logMap.put(HashMapping.CL_MSG, "QA for Classifier testing");
		logMap.put(HashMapping.CL_THREAD_ID, "T131431415412");
		logMap.put(HashMapping.CL_OSPROCESS_ID, "OS12314311234123");
		logMap.put(HashMapping.CL_SCHEME, "bw");
		logMap.put(HashMapping.CL_PHYSICAL_COMPID_MATRIX_ENV, "my_domain");
		logMap.put(HashMapping.CL_PHYSICAL_COMPID_MATRIX_MACHINE, "my_instance");
		logMap.put(HashMapping.CL_LOGICAL_COMPID_MATRIX_SA, "my_ear");
		logMap.put(HashMapping.CL_LOGICAL_COMPID_MATRIX_SU, "handlePO");
		logMap.put(HashMapping.CL_LOGICAL_COMPID_MATRIX_SERVICE, "sendPO");
		logMap.put(HashMapping.CL_SITUATION_URN, SituationCriteria.REQUEST_SITUATION_SUCCESSFUL_REQUEST_INITIATED);
		if (javaLogger.isInfoEnabled()) {
			javaLogger.info("HashMapping", logMap);
		}
		
		BaseEventFormat bef = EngineEventFactory.eINSTANCE.createBWEngineEventFormat();
		Classifier classifier = BaseEventFactory.eINSTANCE.createClassifier();
		classifier.setName("ClassifierName");
		classifier.setValue("QAclassifiervalue");
		bef.getClassifiers().add(classifier);	
		bef.setContextId("1fc69da2-e78f-11db-8314-0800200c9a66");
		bef.setExpirationTimeInDB(1);
		bef.setCreationTime(System.currentTimeMillis());
		bef.setGlobalInstanceId(curtime);
		 
		bef.setMsg("QA for Classifier testing");
		bef.setMsgId("BWENGINE-999999");
		ECompId pecompid = BaseEventFactory.eINSTANCE.createMatrixPhysicalECompId();
		pecompid.setScheme("amx33");
		pecompid.setUrn("amx33#DevEnvironment#DevNode#TIBCO-IT-JAVA#SystemHost");
		bef.setPhysicalComponentId(pecompid);

		ECompId lecompid = BaseEventFactory.eINSTANCE.createMatrixLogicalECompId();
		lecompid.setScheme("amx33#JmsAppenderForPayload.app");
		lecompid.setUrn("amx33#JmsAppenderForPayload.app#PayloadJMSAppender#1.0.0.201009210146#JmsAppenderForPayload.app#PayloadJMSAppender#1.0.0.201009210146");
		bef.setLogicalComponentId(lecompid);

		ReportingComponentId rep = BaseEventFactory.eINSTANCE.createReportingComponentId();
		rep.setClassloader("org3.eclipse.osgi.internal.baseadaptor.DefaultClassLoader@e1e3c7");
		rep.setScheme("amx33");
		rep.setValue("com.tibco3");
		bef.setReportingComponentId(rep);

		SituationType situationtype = BaseEventFactory.eINSTANCE.createSituationType();
		situationtype.setReasoningScope("EXTERNAL");
		situationtype.setUrn("SituationType=StartSituation: SuccessDisposition=SUCCESSFUL: SituationQualifier=RESTART INITIATED");
		bef.setSituation(situationtype);
		 
		 
		if(javaLogger.isInfoEnabled())
		{
			 javaLogger.info("EObject",bef);
		}

		OneToNinetyNine resp=OneToNinetyNine.Factory.newInstance();
		resp.setIntValue(50);	
		return resp;
	}

}
