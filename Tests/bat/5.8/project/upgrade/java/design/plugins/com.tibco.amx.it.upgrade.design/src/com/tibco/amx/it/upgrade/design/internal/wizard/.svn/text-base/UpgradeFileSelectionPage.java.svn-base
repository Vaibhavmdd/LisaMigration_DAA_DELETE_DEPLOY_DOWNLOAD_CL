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
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;

import com.tibco.amx.it.upgrade.design.UpgradeDesignPlugin;
import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amx.it.upgrade.design.internal.sections.UpgradeFileSelectionDialog;
import com.tibco.amf.tools.composite.resources.ui.wizard.pages.AbstractAMFWizardPage;

 /**
 * Wizard page to select an existing upgrade configuration file
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeFileSelectionPage extends AbstractAMFWizardPage implements
		SelectionListener {
	public static final String NAME = "upgrade-file-selection-page"; //$NON-NLS-1$

	private IFile upgradeFile = null;

	private Text fileText;

	private Button browseButton;

	/**
	 * <!-- begin-custom-doc -->
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileSelectionPage() {
	    //begin-custom-code
		super(NAME);
		setTitle(UpgradeMessages.UpgradeFileSelectionPage_title);
		setDescription(UpgradeMessages.UpgradeFileSelectionPage_description);
		setPageComplete(false);
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
     * @see
	 * org.eclipse.jface.dialogs.IDialogPage#createControl(org.eclipse.swt.widgets
	 * .Composite)
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void createControl(Composite parent) {
	    //begin-custom-code
		Composite root = new Composite(parent, SWT.NONE);
		root.setLayout(new GridLayout(3, false));

		Label label = new Label(root, SWT.NONE);
		label.setText(UpgradeMessages.UpgradeFileSelectionPage_ConfigFileLabel);
		label.setLayoutData(new GridData(SWT.BEGINNING, SWT.CENTER, false,
				false));

		fileText = new Text(root, SWT.BORDER | SWT.READ_ONLY);
		fileText.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true,
				false));
		fileText.addModifyListener(new ModifyListener() {
			public void modifyText(ModifyEvent e) {
				inputChanged();
			}
		});

		browseButton = new Button(root, SWT.PUSH);
		browseButton.setText(UpgradeMessages.UpgradeFileSelectionPage_BrowseButton_text);
		browseButton.setLayoutData(new GridData(SWT.END, SWT.CENTER,
				false, false));
		browseButton.addSelectionListener(this);

		// add a filler
		Composite filler = new Composite(root, SWT.NONE);
		filler
				.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true, 3,
						1));

		setControl(root);
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
     * @return the upgradeFile
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public IFile getUpgradeFile() {
		return upgradeFile;
	}

	/**
	 * <!-- begin-custom-doc -->
     *@see
	 * org.eclipse.swt.events.SelectionListener#widgetDefaultSelected(org.eclipse
	 * .swt.events.SelectionEvent)
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void widgetDefaultSelected(SelectionEvent e) {
		widgetSelected(e);
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @see
	 * org.eclipse.swt.events.SelectionListener#widgetSelected(org.eclipse.swt
	 * .events.SelectionEvent)
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void widgetSelected(SelectionEvent e) {
	    //begin-custom-code
		if (e.widget == browseButton) {
			UpgradeFileSelectionDialog upgradeFileSelectionDialog = new UpgradeFileSelectionDialog(
					getShell());
			upgradeFileSelectionDialog.setInput(ResourcesPlugin.getWorkspace()
					.getRoot());
			if (upgradeFileSelectionDialog.open() == Window.OK) {
				upgradeFile = (IFile) upgradeFileSelectionDialog.getFirstResult();
				fileText.setText(upgradeFile.getFullPath().toString());
			}
		}
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @see
	 * com.tibco.amf.tools.composite.resources.ui.wizard.pages.AbstractAMFWizardPage
	 * #validatePage()
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
	protected IStatus validatePage() {
	    //begin-custom-code
		String configFileLocation = fileText.getText();
		if (configFileLocation.length() == 0) {
			return createErrorStatus(UpgradeMessages.UpgradeFileSelectionPage_ValidationMsgs_NoConfigFile);
		} else {
			IPath configFilePath = new Path(configFileLocation);
			IFile configFile = ResourcesPlugin.getWorkspace().getRoot()
					.getFile(configFilePath);
			if (configFile == null || !configFile.exists()) {
				return createErrorStatus(UpgradeMessages.UpgradeFileSelectionPage_ValidationMsgs_ConfigFileDoesNotExist);
			}
		}
		return Status.OK_STATUS;
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	private IStatus createErrorStatus(String string) {
	    //begin-custom-code
		return new Status(IStatus.ERROR, UpgradeDesignPlugin.PLUGIN_ID, string, null);
		//end-custom-code
	}
}
