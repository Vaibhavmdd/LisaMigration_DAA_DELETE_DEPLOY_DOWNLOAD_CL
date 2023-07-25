package cmt_v30_01_model;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.*;

import com.tibco.amsb.core.mediationextmodel.MediationTask;
import com.tibco.amsb.core.task.model.ext.MediationTaskTypeExtension;


/**
 * Factory class for mediation task <code>CMTV3001MediationTaskMediationTask</code> objects.
 * 
 * @version 2.0
 * @see MediationTask
 */

public class CMTV3001MediationTaskTypeExtensionImpl extends
		MediationTaskTypeExtension {

	/**
	 * Creates mediation task  object
	 * <code>CMTV3001MediationTaskMediationTask<code>.
	 * 
	 * @returns MediationTask - mediation Task. 
	 * 
	 * @see MediationTask
	 */
	
	public MediationTask createMediationTaskTypeInstance() {
		CMTV3001MediationTask mediationTask =  CMTV3001MediationTaskFactory.eINSTANCE.createCMTV3001MediationTask();
		mediationTask.setName("cmtv3001");
		mediationTask.setDescription("");
		mediationTask.setContributeData(false);
		return mediationTask;
	}

	/**
	 * 
	 * Utility method to check the type mediation task.
	 * 
	 * @returns <code>true<code> If the mediation task is of the same type
	 *          as the one that mediation task report is associated with 
	 *          <code>false<code> if mediation task is not of the same type
	 *          as the one associated with mediation task report.
	 *              
	 * 
	 * @see MediationTask
	 */

	public boolean isOfThisType(MediationTask mediationTask) {
		return mediationTask instanceof CMTV3001MediationTask;
	}

}
