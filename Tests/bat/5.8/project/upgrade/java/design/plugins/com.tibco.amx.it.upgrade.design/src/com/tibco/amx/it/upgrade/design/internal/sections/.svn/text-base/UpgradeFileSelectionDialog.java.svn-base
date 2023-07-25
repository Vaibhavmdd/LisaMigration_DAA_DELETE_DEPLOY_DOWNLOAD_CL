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
package com.tibco.amx.it.upgrade.design.internal.sections;

import java.util.Collections;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Shell;

import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amx.it.upgrade.design.internal.util.UpgradeConfigFileUtil;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.xpd.navigator.pickers.BaseObjectPicker;
import com.tibco.xpd.resources.projectconfig.SpecialFolder;
import com.tibco.xpd.ui.projectexplorer.viewerfilters.FileExtensionInclusionFilter;
import com.tibco.xpd.ui.projectexplorer.viewerfilters.NoFileContentFilter;
import com.tibco.xpd.ui.projectexplorer.viewerfilters.XpdNatureProjectsOnly;
import com.tibco.xpd.ui.resources.TypedElementSelectionValidator;

/**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeFileSelectionDialog extends BaseObjectPicker {

	private static final int BUTTON_NEW = 999;
	private Component component;
	
    /** (non-Javadoc)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileSelectionDialog(Shell parent) {
		super(parent);
		
		setTitle(UpgradeMessages.UpgradeFileSelectionDialog_title);
		setMessage(UpgradeMessages.UpgradeFileSelectionDialog_message);

		setValidator(new TypedElementSelectionValidator(
				new Class[] { IFile.class }, false));
		addFilter(new XpdNatureProjectsOnly());
		addFilter(new FileExtensionInclusionFilter(Collections
				.singleton("upgrade")));
		addFilter(new NoFileContentFilter());
	}
	
    /** (non-Javadoc)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileSelectionDialog(Shell shell, Component component) {
		// TODO Auto-generated constructor stub
		this(shell);
		this.component = component;
		
	}	

	/** (non-Javadoc)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @param workbenchPage
	 * @generated
	 * @Override
	 */
	protected void createButtonsForButtonBar(Composite parent) {
	    //begin-custom-code
		createButton(parent, BUTTON_NEW, UpgradeMessages.UpgradeFileSelectionDialog_button, false);
		super.createButtonsForButtonBar(parent);
		//end-custom-code
	}
	
	/** (non-Javadoc)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @param buttonId
	 * @generated
	 * @Override
	 */
	protected void buttonPressed(int buttonId) {
		//begin-custom-code 
		if (buttonId == BUTTON_NEW) {
			Object parent = getFirstResult();
			if (parent instanceof SpecialFolder) {
				parent = ((SpecialFolder) parent).getFolder();
			}
			if (parent instanceof IContainer) {
				IContainer cont = (IContainer) parent;
				IFile file = cont.getFile(new Path("my.upgrade"));
				UpgradeConfigFileUtil.writeComponentToConfigFile(file, component);
				setSelectionResult(new Object[] { file });
				setReturnCode(OK);
				close();
			} else {
				MessageDialog
						.openInformation(getShell(), UpgradeMessages.UpgradeFileSelectionDialog_container,
								UpgradeMessages.UpgradeFileSelectionDialog_container_detail);
			}
		}
		super.buttonPressed(buttonId);
		//end-custom-code
	}
}
