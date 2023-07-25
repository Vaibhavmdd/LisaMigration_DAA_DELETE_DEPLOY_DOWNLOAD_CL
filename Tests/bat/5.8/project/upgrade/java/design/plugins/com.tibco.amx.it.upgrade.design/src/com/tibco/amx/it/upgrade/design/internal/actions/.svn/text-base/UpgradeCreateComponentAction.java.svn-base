/**
*(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
*
* LEGAL NOTICE:  This source code is provided to specific authorized end
* users pursuant to a separate license agreement.  You MAY NOT use this
* source code if you do not have a separate license from TIBCO Software
* Inc.  Except as expressly set forth in such license agreement, this
* source code, or any portion thereof, may not be used, modified,
* reproduced, transmitted, or distributed in any form or by any means,
* electronic or mechanical, without written permission from
* TIBCO Software Inc.
*/
package com.tibco.amx.it.upgrade.design.internal.actions;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWizard;

import com.tibco.amx.it.upgrade.design.UpgradeDesignPlugin;
import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amf.tools.composite.editor.util.AbstractAMFActionHandler;
import com.tibco.amf.tools.composite.resources.ui.CompositeResourcesUIActivator;

/**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeCreateComponentAction extends AbstractAMFActionHandler {
	public static final String ACTION_ID = "implementationtype.upgrade.UpgradeCreateComponentAction";

	/**
	 * @param workbenchPage
	 * @generated
	 */
	public UpgradeCreateComponentAction(IWorkbenchPage workbenchPage) {
		super(workbenchPage);
		_init();
	}
	
	/**
	 * @param workbenchPart
	 * @generated
	 */
	public UpgradeCreateComponentAction(IWorkbenchPart workbenchPart) {
		super(workbenchPart);
		_init();
	}

	/**
	 * @generated
	 */
	private void _init() {
	    //begin-custom-code
		setText(UpgradeMessages.UpgradeCompoentAction_text);
		setImageDescriptor(UpgradeDesignPlugin.getDefault().getImageRegistry()
				.getDescriptor(UpgradeDesignPlugin.Images.UPGRADE_SMALL.getPath()));
		setId(ACTION_ID);
		//end-custom-code
	}

	/** (non-Javadoc)
	 * @see org.eclipse.gmf.runtime.common.ui.action.AbstractActionHandler#doRun(org.eclipse.core.runtime.IProgressMonitor)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	protected void doRun(IProgressMonitor progressMonitor) {
	    //begin-custom-code
		IWorkbenchWizard wizard = CompositeResourcesUIActivator.getDefault().getCreationWizardsService()
				.getComponentCreationWizard("implementation.upgrade");
		wizard.init(getWorkbench(),
				transformSelection(getStructuredSelection()));
		WizardDialog wizardDialog = new WizardDialog(Display.getCurrent()
				.getActiveShell(), wizard);
		wizardDialog.setBlockOnOpen(true);
		wizardDialog.open();
		//end-custom-code
	}
}
