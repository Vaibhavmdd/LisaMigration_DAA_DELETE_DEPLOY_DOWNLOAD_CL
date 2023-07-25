package cmt_v30_01_ui;

import org.eclipse.swt.*;
import org.eclipse.swt.layout.*;
import org.eclipse.swt.widgets.*;
import org.eclipse.emf.edit.command.*;
import cmt_v30_01_model.cmtv3001mediationtaskmodel.*;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.forms.widgets.ScrolledForm;

import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;

import com.tibco.xpd.ui.properties.XpdFormToolkit;

import cmt_v30_01_model.CMTV3001MediationTaskReport;

import com.tibco.amsb.core.task.model.report.MediationTaskReport;
import com.tibco.amsb.core.task.ui.property.MediationTaskGeneralSection;

/**
 * CMTV3001GeneralSection is responsible for creating properties view general
 * section for the mediation task. The methods for creating and updating
 * properties view general section is based on editing events that are provided
 * in the MediationTaskGeneralSection base class. Developer of the custom
 * mediation task user interface can write their own mechanism for creating and
 * updating general section of the properties panel if the desire to do so.
 * 
 * @see CustomMediationTaskGeneralSection
 */

public class CMTV3001GeneralPropertySection extends MediationTaskGeneralSection {
	Text errorinfoText;

	/**
	 * Returns whether to make "Contribute Output to Mediation Exchange"
	 * property visible.
	 * 
	 * @return <code>true</code> if mediation task does define an output type
	 *         <code>false</code> if mediation task defines an output type
	 * 
	 */

	protected boolean showContributeOutputField() {
		CMTV3001MediationTaskReport mediationTaskReport = new CMTV3001MediationTaskReport(
				mediationTask);
		if (mediationTaskReport.getOutputTypeMode() == MediationTaskReport.TYPE_MODE_STATIC) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * Returns the control object that holds the widgets created for the General
	 * Section. This method creates the controls for each of the attributes that
	 * are defined for the mediation task model.
	 * 
	 * 
	 * @param parent
	 *            composite that build the General section
	 * @param toolkit
	 *            toolkit to create form widgets
	 * @return the control that holds widgets for mediation task attributes.
	 * @see Control
	 * @see Composite
	 * @see XpdFormToolKit
	 */

	protected Control doCreateControls(Composite parent, XpdFormToolkit toolkit) {
		ScrolledForm form = createBaseForm(parent, toolkit);
		Composite composite = form.getBody();
		toolkit.createLabel(composite, CMTV3001UIMessages
				.getString("CMTV3001GeneralSection.errorinfo.label"));
		this.errorinfoText = toolkit.createText(composite, null, SWT.BORDER);
		errorinfoText.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
		manageControl(errorinfoText);
		return form;
	}

	/**
	 * Creates the Compound command that gets registered with the editing
	 * domain's command stack.
	 * 
	 * @see CompountCommand
	 * @see CustomMediationTaskGeneralSection
	 */

	protected Command doGetCommand(Object obj) {
		CompoundCommand command = createBaseCommand(mediationTask);
		command.append(SetCommand.create(editPart.getEditingDomain(),
				mediationTask, CMTV3001MediationTaskPackage.eINSTANCE
						.getCMTV3001MediationTask_Errorinfo(), errorinfoText
						.getText()));
		return command;
	}

	/**
	 * Updates the widgets created for the General Section based on the editing
	 * events.
	 * 
	 */

	protected void doRefresh() {
		super.doRefresh();
		if (mediationTask != null) {
			CMTV3001MediationTask cMTV3001MediationTask = ((CMTV3001MediationTask) mediationTask);
			updateText(errorinfoText, cMTV3001MediationTask.getErrorinfo());
		}
	}
}
