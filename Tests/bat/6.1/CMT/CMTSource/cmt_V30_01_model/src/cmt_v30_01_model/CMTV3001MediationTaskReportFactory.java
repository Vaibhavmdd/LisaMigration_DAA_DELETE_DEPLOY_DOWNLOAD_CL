package cmt_v30_01_model;

import org.eclipse.xsd.XSDElementDeclaration;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.*;

import com.tibco.amsb.core.mediationextmodel.MediationTask;
import com.tibco.amsb.core.task.model.report.MediationTaskReport;
import com.tibco.amsb.core.task.model.report.MediationTaskReportFactory;

/**
 * Factory class for mediation task report <code>CMTV3001MediationTaskMediationTaskReport</code> objects.
 * 
 * @version 2.0
 * @see MediationTask
 * @see MediationTaskReport
 * @see XSDElementDeclaration
 */

public class CMTV3001MediationTaskReportFactory implements MediationTaskReportFactory {

	/**
	 * Creates mediation task report object
	 * <code>CMTV3001MediationTaskMediationTaskReport<code>.
	 * 
	 * @returns MediationTaskReport - mediation Task report. 
	 * 
	 * @see MediationTaskReport
	 */

	public MediationTaskReport createMediationTaskReport(
			MediationTask mediationTask) {
		return new CMTV3001MediationTaskReport(mediationTask);
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
