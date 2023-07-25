package cmt_v30_01_model;

import javax.xml.namespace.QName;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.*;

import com.tibco.amsb.core.mediationbpel.custom.task.persistence.CustomMediationTaskDeserializer;

/**
 * Model deserialization class for mediation task type <code>CMTV3001MediationTaskMediationTask</code>
 * 
 * @version 2.0
 */

public class CMTV3001MediationTaskDeserializer extends CustomMediationTaskDeserializer{

	public CMTV3001MediationTaskDeserializer() {
		registerCMTV3001MediationTaskDeserializer();
		CMTV3001MediationTaskPackageImpl.init();
	}

	/**
	 * Registers mediation task type deserializer with mediation flow deserializer.
	 * Mediation task types are registered based on qname.
	 */

	private void registerCMTV3001MediationTaskDeserializer() {
		QName qname = new QName(CMTV3001MediationTaskConstants.CUSTOM_MEDIATION_TASK_NAMESPACE,
				CMTV3001MediationTaskConstants.CUSTOM_MEDIATION_TASK_NAME,
				CMTV3001MediationTaskConstants.CUSTOM_MEDIATION_TASK_PREFIX);
		registerMediationTaskDeserializer(qname);
	}
}
