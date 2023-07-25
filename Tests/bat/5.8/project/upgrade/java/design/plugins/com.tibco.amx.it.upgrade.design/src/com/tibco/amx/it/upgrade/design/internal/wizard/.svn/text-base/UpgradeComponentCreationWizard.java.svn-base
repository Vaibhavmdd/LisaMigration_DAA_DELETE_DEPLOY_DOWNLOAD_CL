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

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.emf.common.util.URI;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbench;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.model.UpgradeImplementationModelFactory;
import com.tibco.amf.sca.model.extensionpoints.Implementation;
import com.tibco.amf.tools.composite.resources.ui.wizard.AbstractComponentCreationWizard;

/**
 * <!-- begin-custom-doc -->
 * The bottom-up wizard for creating a upgrade component.
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 * 
 */
public class UpgradeComponentCreationWizard extends
		AbstractComponentCreationWizard {
	
	private UpgradeFileSelectionPage upgradeFileSelectionPage;

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeComponentCreationWizard() {
		upgradeFileSelectionPage = new UpgradeFileSelectionPage();
	}

	/**
	 *  @see org.eclipse.jface.wizard.Wizard#addPages
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	public void addPages() {
		super.addPages();
		addPage(upgradeFileSelectionPage);
	}

	/**
	 * @see
	 * com.tibco.amf.tools.composite.resources.ui.wizard.IComponentCreationWizard
	 * #createImplementation()
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public Implementation createImplementation() {
	    //begin-custom-code
		if (!canFinish())
			return null;
		UpgradeImplementation upgradeImplementation = UpgradeImplementationModelFactory.INSTANCE
				.createUpgradeImplementation();
		IFile upgradeFile = upgradeFileSelectionPage.getUpgradeFile();
		URI baseURI = getEnclosingContext().getCompositeLocation();
		IPath result = upgradeFile.getFullPath();
		URI resultURI = URI.createPlatformResourceURI(result
				.toPortableString(), false);
		String value = resultURI.deresolve(baseURI).toString();
		upgradeImplementation.setConfigFile(value);
		return upgradeImplementation;
		//end-custom-code
	}

	/**
	 * @see org.eclipse.ui.IWorkbenchWizard#init(org.eclipse.ui.IWorkbench,
	 * org.eclipse.jface.viewers.IStructuredSelection)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void init(IWorkbench workbench, IStructuredSelection selection) {
		// TODO (ddwarapu) : check if the selection is a upgrade config file
	}
}
