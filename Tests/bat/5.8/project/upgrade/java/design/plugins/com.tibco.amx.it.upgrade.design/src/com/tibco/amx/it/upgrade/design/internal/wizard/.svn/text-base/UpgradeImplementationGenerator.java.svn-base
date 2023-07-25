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

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.transaction.RecordingCommand;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.ide.undo.CreateFileOperation;
import org.eclipse.ui.ide.undo.WorkspaceUndoUtil;

import com.tibco.amx.it.upgrade.design.UpgradeDesignPlugin;
import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.model.UpgradeImplementationModelFactory;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.tools.composite.resources.ui.wizard.IImplementationGenerator;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeImplementationGenerator implements IImplementationGenerator {
	protected Component component = null;
	
	protected UpgradeFileCreationData upgradeFileCreationData = null;

	/**
	 * <!-- begin-custom-doc -->
     * @see
	 * com.tibco.amf.tools.composite.resources.ui.wizard.IImplementationGenerator
	 * #generate(com.tibco.amf.sca.model.composite.Component, java.lang.Object,
	 * org.eclipse.core.runtime.IProgressMonitor)
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void generate(Component component, Object wizardData,
			IProgressMonitor monitor) {
		//begin-custom-code
		try {
			this.component = component;
			this.upgradeFileCreationData = (UpgradeFileCreationData) wizardData;

			IFile upgradeConfigFile = createUpgradeFile(monitor);
			IPath base = WorkspaceSynchronizer.getFile(component.eResource())
					.getFullPath();
			URI baseURI = URI.createPlatformResourceURI(
					base.toPortableString(), false);
			URI resultURI = URI.createPlatformResourceURI(upgradeConfigFile
					.getFullPath().toPortableString(), false);
			String upgradeFileURI = resultURI.deresolve(baseURI).toString();

			final UpgradeImplementation upgradeImplementation = UpgradeImplementationModelFactory.INSTANCE
					.createUpgradeImplementation();
			upgradeImplementation.setConfigFile(upgradeFileURI);
			TransactionalEditingDomain editingDomain = TransactionUtil
					.getEditingDomain(component);
			RecordingCommand setImplCommand = new RecordingCommand(
					editingDomain) {
				protected void doExecute() {
					UpgradeImplementationGenerator.this.component
							.setImplementation(upgradeImplementation);
				}
			};
			editingDomain.getCommandStack().execute(setImplCommand);
		} finally {
			cleanUp();
		}
		//end-custom-code
	}
	
	/**
	 * <!-- begin-custom-doc -->
	 * @param monitor
	 * @return
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	protected IFile createUpgradeFile(IProgressMonitor monitor) {
	    //begin-custom-code
		IPath upgradeFilePath = upgradeFileCreationData.getUpgradeFilePath();
		if(upgradeFilePath == null) {
			// Build the upgrade file path using the upgrade file name
			IFile file = WorkspaceSynchronizer.getFile(component.eResource());
			IPath upgradeFileContainerPath = file.getParent().getFullPath();
			upgradeFilePath = upgradeFileContainerPath.append(upgradeFileCreationData.getUpgradeFileName());
		}
		IFile newFileHandle = ResourcesPlugin.getWorkspace().getRoot().getFile(
				upgradeFilePath);
		InputStream initialContents = getInitialContents();

		CreateFileOperation op = new CreateFileOperation(newFileHandle, null,
				initialContents, UpgradeMessages.UpgradeImplementationGenerator_CreateFileOp_label);
		try {
			PlatformUI.getWorkbench().getOperationSupport()
					.getOperationHistory().execute(
							op,
							monitor,
							WorkspaceUndoUtil.getUIInfoAdapter(Display
									.getDefault().getActiveShell()));
		} catch (ExecutionException e) {

		}
		return newFileHandle;
		//end-custom-code
	}
	
	/**
	 * <!-- begin-custom-doc -->
     *
	 * <!-- end-custom-doc -->
	 * @generated
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
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */	
	protected void cleanUp() {
	    //begin-custom-code
		this.component = null;
		this.upgradeFileCreationData = null;
		//end-custom-code
	}
}
