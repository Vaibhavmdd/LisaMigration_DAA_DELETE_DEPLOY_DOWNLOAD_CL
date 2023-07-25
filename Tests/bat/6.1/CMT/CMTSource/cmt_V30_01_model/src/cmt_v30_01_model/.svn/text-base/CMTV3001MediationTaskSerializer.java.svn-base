package cmt_v30_01_model;

import javax.xml.namespace.QName;

import com.tibco.amsb.core.mediationextmodel.MediationTask;
import com.tibco.amsb.core.task.model.report.MediationTaskReport;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.*;
import com.tibco.amsb.core.mediationbpel.custom.task.persistence.CustomMediationTaskSerializer;

/**
 * Model serialization class for mediation task type <code>CMTV3001MediationTaskMediationTask</code>
 * 
 * @version 2.0
 * @see MediationTask
 */


public class CMTV3001MediationTaskSerializer extends CustomMediationTaskSerializer {
	
	public CMTV3001MediationTaskSerializer(){
		registerCMTV3001MediationTaskSerializer();
		CMTV3001MediationTaskPackageImpl.init();
	}
	
	/**
	 * Registers mediation task type serializer with mediation flow deserializer.
	 * Mediation task types are registered based on qname.
	 */
	
	private void registerCMTV3001MediationTaskSerializer() {
		QName qname = new QName(
				CMTV3001MediationTaskConstants.CUSTOM_MEDIATION_TASK_NAMESPACE,
				CMTV3001MediationTaskConstants.CUSTOM_MEDIATION_TASK_NAME,
				CMTV3001MediationTaskConstants.CUSTOM_MEDIATION_TASK_PREFIX);
		registerMediationTaskSerializer(qname);
	}
	

	/**
	 * Creates mediation task report object <code>CMTV3001MediationTaskMediationTaskReport<code>.
	 * 
	 * @returns MediationTaskReport - mediation Task report. 
	 * 
	 * @see MediationTaskReport
	 */
	
	public MediationTaskReport getMediationTaskReport(MediationTask mediationTask) {
		CMTV3001MediationTaskReportFactory factory = new CMTV3001MediationTaskReportFactory();
		return factory.createMediationTaskReport(mediationTask);
	}
}

