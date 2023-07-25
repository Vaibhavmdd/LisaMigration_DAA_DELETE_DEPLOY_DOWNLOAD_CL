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

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.widgets.Event;

import com.tibco.amx.it.upgrade.design.UpgradeDesignPlugin;
import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.xpd.ui.dialogs.WizardNewFileInSpecialFolderCreationPage;

 /**
 * <!-- begin-custom-doc -->
 * Contains either the name or the complete path of the upgrade file to be created
 *
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeFileCreationPage extends
		WizardNewFileInSpecialFolderCreationPage {
	protected UpgradeFileCreationData upgradeFileData = new UpgradeFileCreationData();

	/**
	 * <!-- begin-custom-doc -->
     * @param pageName
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationPage(IStructuredSelection selection) {
		super("upgrade-file-creation-page", selection); //$NON-NLS-1$
		setTitle(UpgradeMessages.UpgradeFileCreationPage_title);
		setFileExtension("upgrade"); //$NON-NLS-1$
		setDescription(UpgradeMessages.UpgradeFileCreationPage_description);
		//begin-custom-code
		
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @see
	 * org.eclipse.ui.dialogs.WizardNewFileCreationPage#getInitialContents()
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	protected InputStream getInitialContents() {
		//begin-custom-code
		Properties prop = new Properties();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		try {
			prop.store(out, "Created by: " + System.getProperty("user.name")); //$NON-NLS-1$ //$NON-NLS-2$
		} catch (IOException e) {
			UpgradeDesignPlugin.getDefault().getLog().log(
					new Status(IStatus.ERROR, UpgradeDesignPlugin.PLUGIN_ID, e
							.getMessage(), e));
		}
		return new ByteArrayInputStream(out.toByteArray());
		//end-custom-code
	}
	
	/**
	 * <!-- begin-custom-doc -->
	 * @see
	 * com.tibco.xpd.ui.dialogs.WizardNewFileInSpecialFolderCreationPage#handleEvent(org.eclipse.swt.widgets.Event)
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	public void handleEvent(Event event) {
		super.handleEvent(event);
		updateUpgradeFileLocation();
		//begin-custom-code
		
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	protected void updateUpgradeFileLocation() {
	    //begin-custom-code
		IPath folderPath = getContainerFullPath();
		if (folderPath != null) {
			IPath upgradeFilePath = folderPath.append(getFileName());
			upgradeFileData.setUpgradeFilePath(upgradeFilePath);
		}
		//end-custom-code
	}
	
	/**
	 * <!-- begin-custom-doc -->
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationData getData() {
		return upgradeFileData;
	}
}
