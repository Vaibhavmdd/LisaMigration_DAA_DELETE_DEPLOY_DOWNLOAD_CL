package cmt_v30_01_model;

import java.io.InputStream;

import org.eclipse.xsd.XSDElementDeclaration;

import com.tibco.amsb.core.mediationextmodel.MediationTask;
import com.tibco.amsb.core.task.model.report.MediationTaskReport;
import com.tibco.amsb.core.mediation.model.report.impl.MediationTaskReportImpl;

import cmt_v30_01_model.CMTV3001MediationTaskConstants;

/**
 * CMTV3001MediationTaskReport is an implementation of the <tt>MediationTaskReport</tt>
 * interface. This implementation provides methods to determine input/output
 * type of a mediation task as schema element as well as mode that is used to
 * determine their type.
 * 
 * @version 2.0
 * @see MediationTask
 * @see MediationTaskReport
 * @see XSDElementDeclaration
 */

public class CMTV3001MediationTaskReport extends MediationTaskReportImpl {

	public CMTV3001MediationTaskReport(MediationTask mediationTask) {
		super(mediationTask);
		init();
	}

	/**
	 * Loads the output schema element as XSDElementDeclaration.
	 * <p>
	 * If the current output schema URI is not defined correctly then the method
	 * will set customOutputType as null.
	 * 
	 * @see XSDElementDeclaration
	 */

	public void init() {
		// Load input schema element if the input mode is of static type.
		if (this.getInputTypeMode() == MediationTaskReport.TYPE_MODE_STATIC) {
			createCustomInputType(CMTV3001MediationTaskConstants.TASK_INPUT_SCHEMA_URI,CMTV3001MediationTaskConstants.SCHEMA_FOLDER,CMTV3001MediationTaskConstants.TASK_INPUT_SCHEMA_ELEMENT_NAME,getClass().getClassLoader());
		}

		// Load output schema element if the output mode is of static type.
		if (this.getOutputTypeMode() == MediationTaskReport.TYPE_MODE_STATIC) {
			createCustomOutputType(CMTV3001MediationTaskConstants.TASK_OUTPUT_SCHEMA_URI,CMTV3001MediationTaskConstants.SCHEMA_FOLDER,CMTV3001MediationTaskConstants.TASK_OUTPUT_SCHEMA_ELEMENT_NAME,getClass().getClassLoader());
		}
	}
	
	public int getInputTypeMode() {
		return MediationTaskReport.TYPE_MODE_LOOK_BACK;
	}
	
	/**
	 * Returns the output as schema element. Schema element is loaded as
	 * XSDElementDeclaration during initialization.
	 * 
	 * @return XSDElementDeclaration - Schema Element.
	 * 
	 * @see XSDElementDeclaration
	 */

	public XSDElementDeclaration getCustomInputType() {
		return customInputType;
	}
	
	/**
	 * Return the name of the element that defines the mediation task output
	 * type.
	 * 
	 * @return String - Element name.
	 */

	public String getInputElementName() {
		return CMTV3001MediationTaskConstants.TASK_INPUT_SCHEMA_ELEMENT_NAME;
	}

	/**
	 * Returns the mode that determines the output type of the mediation task.
	 * The modes that determines output type of a mediation task are:
	 * <ul>
	 * <li>TYPE_MODE_NO_TYPE
	 * <li>TYPE_MODE_STATIC
	 * <li>TYPE_MODE_LOOK_BACK
	 * <li>TYPE_MODE_LOOK_FORWARD
	 * </ul>
	 * 
	 * @return <code>TYPE_MODE_NO_TYPE</code> if the task does not define an
	 *         output type <code>TYPE_MODE_NO_STATIC</code> if the output of
	 *         the task is static <code>TYPE_MODE_LOOK_BACK</code> if the
	 *         output is determined by looking back at the data flowing upstream
	 *         in the mediation flow <code>TYPE_MODE_LOOK_FORWARD</code> if
	 *         the output is determined by looking forward.
	 * @see MediationTaskReport
	 */

	public int getOutputTypeMode() {
		return MediationTaskReport.TYPE_MODE_LOOK_BACK;
	}

	/**
	 * Returns the output as schema element. Schema element is loaded as
	 * XSDElementDeclaration during initialization.
	 * 
	 * @return XSDElementDeclaration - Schema Element.
	 * 
	 * @see XSDElementDeclaration
	 */

	public XSDElementDeclaration getCustomOutputType() {
		return customOutputType;
	}
	
	/**
	 * Return the name of the element that defines the mediation task output
	 * type.
	 * 
	 * @return String - Element name.
	 */

	public String getOutputElementName() {
		return CMTV3001MediationTaskConstants.TASK_OUTPUT_SCHEMA_ELEMENT_NAME;
	}
}