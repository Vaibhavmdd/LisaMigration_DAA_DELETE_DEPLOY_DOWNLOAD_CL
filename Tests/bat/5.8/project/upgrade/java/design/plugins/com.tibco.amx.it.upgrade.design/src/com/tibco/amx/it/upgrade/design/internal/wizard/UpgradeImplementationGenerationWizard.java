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
package com.tibco.amx.it.upgrade.design.internal.wizard;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;

import com.tibco.amf.tools.composite.resources.ui.wizard.AbstractImplementationGenerationWizard;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeImplementationGenerationWizard extends
		AbstractImplementationGenerationWizard {

	private UpgradeFileCreationPage upgradeFileCreationPage = null;
	
	private UpgradeFileNamePage upgradeFileNamePage = new UpgradeFileNamePage();
	
	/**
	 * <!-- begin-custom-doc -->
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeImplementationGenerationWizard() {
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @see org.eclipse.jface.wizard.Wizard#addPages()
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Overrid
	 */
	public void addPages() {
		if (isNewProjectWizard()) {
			addPage(upgradeFileNamePage);
		} else {
			ISelection currentSelection = null;
			IWorkbenchWindow activeWorkbenchWindow = PlatformUI.getWorkbench()
					.getActiveWorkbenchWindow();
			if (activeWorkbenchWindow != null)
				currentSelection = activeWorkbenchWindow.getSelectionService()
						.getSelection();
			upgradeFileCreationPage = new UpgradeFileCreationPage(
					currentSelection instanceof IStructuredSelection ? (IStructuredSelection) currentSelection
							: null);
			addPage(upgradeFileCreationPage);
		}
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @seecom.tibco.amf.tools.composite.resources.ui.wizard.
	 * IImplementationGenerationWizard#getWizardData()
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationData getData() {
		if (upgradeFileCreationPage != null)
			return upgradeFileCreationPage.getData();
		if (upgradeFileNamePage != null) {
			return upgradeFileNamePage.getData();
		}
		return null;
	}
}
