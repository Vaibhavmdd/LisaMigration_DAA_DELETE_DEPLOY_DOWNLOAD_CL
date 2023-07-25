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

import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;

import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amf.tools.composite.resources.ui.wizard.pages.AbstractAMFWizardPage;
 
 /**
 * A {@link WizardPage} that takes as input the name of the upgrade f
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeFileNamePage extends AbstractAMFWizardPage {
	protected Text upgradeFileNameText = null;

	protected UpgradeFileCreationData pageData = new UpgradeFileCreationData("sample.upgrade"); //$NON-NLS-1$

	/**
	 * <!-- begin-custom-doc -->
	 * @param containerPath
	 *            the path of the folder under which this upgrade file will the
	 *            created.
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileNamePage() {
		super("upgrade-file-name-page"); //$NON-NLS-1$
		setTitle(UpgradeMessages.UpgradeFileNamePage_title);
		setDescription(UpgradeMessages.UpgradeFileNamePage_description);
		//begin-custom-code
		
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
		Composite control = new Composite(parent, SWT.NONE);
		control.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		control.setLayout(new GridLayout(2, false));

		Label upgradeFileNameLabel = new Label(control, SWT.NONE);
		upgradeFileNameLabel.setLayoutData(new GridData(SWT.BEGINNING, SWT.CENTER,
				false, false));
		upgradeFileNameLabel.setText(UpgradeMessages.UpgradeFileNamePage_FileNameLabel);
		upgradeFileNameText = new Text(control, SWT.BORDER | SWT.SINGLE);
		upgradeFileNameText.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true,
				false));
		final String upgradeFileName = pageData.getUpgradeFileName();
		if (pageData.getUpgradeFileName() != null) {
			upgradeFileNameText.setText(upgradeFileName);
		}
		upgradeFileNameText.addModifyListener(new ModifyListener() {
			public void modifyText(ModifyEvent e) {
				Text text = (Text) e.widget;
				_setUpgradeFileName(text.getText());
				inputChanged();
			}
		});

		createControls(control);
		setControl(control);

		if (upgradeFileName == null || upgradeFileName.trim().length() == 0) {
			setPageComplete(false);
		}
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Sets the name of the upgrade file and also updates the UI to show this name
	 * 
	 * @param upgradeFileName
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void setUpgradeFileName(String upgradeFileName) {
		_setUpgradeFileName(upgradeFileName);
		if (upgradeFileNameText != null && getUpgradeFileName() != null) {
			upgradeFileNameText.setText(getUpgradeFileName());
		}
		//begin-custom-code
		
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @param upgradeFileName
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	protected void _setUpgradeFileName(String upgradeFileName) {
		assert (upgradeFileName != null);
		if (!upgradeFileName.endsWith(".upgrade") && !upgradeFileName.endsWith(".Upgrade")) { //$NON-NLS-1$ //$NON-NLS-2$
			upgradeFileName = upgradeFileName.concat(".upgrade"); //$NON-NLS-1$
		}
		pageData.setUpgradeFileName(upgradeFileName);
		//begin-custom-code
		
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Returns the name of the upgrade file specified in this wizard page
	 * 
	 * @return
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public String getUpgradeFileName() {
		return pageData.getUpgradeFileName();
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Sub-classes can override this method to create additional UI
	 * 
	 * @param control
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	protected void createControls(Composite control) {
		//begin-custom-code
		
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationData getData() {
		return pageData;
	}
}
