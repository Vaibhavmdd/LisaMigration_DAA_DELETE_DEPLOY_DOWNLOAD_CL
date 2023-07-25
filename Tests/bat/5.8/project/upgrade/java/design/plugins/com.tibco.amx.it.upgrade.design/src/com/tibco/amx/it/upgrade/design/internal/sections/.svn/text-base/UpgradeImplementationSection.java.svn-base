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

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.SWT;
//import org.eclipse.swt.events.SelectionAdapter;
//import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
//import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.widgets.Hyperlink;

import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationModelPackageImpl;

import com.tibco.amx.it.upgrade.design.UpgradeDesignPlugin;
import com.tibco.amf.sca.componenttype.operations.SyncWithImplementationOp;
import com.tibco.amf.sca.model.composite.Component;

import com.tibco.amf.tools.composite.resources.ui.util.ImplementationTypeFilter;
import com.tibco.xpd.ui.properties.AbstractTransactionalSection;
import com.tibco.xpd.ui.properties.XpdFormToolkit;

/**
 * Simple section with configuration for upgrade.id - a file picker.
 * 
 * @version 1.0.0
 * @generated
 */
@SuppressWarnings("restriction")
public class UpgradeImplementationSection extends AbstractTransactionalSection {

	private Text configText;
	private Hyperlink configTextLink;

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @param parent, toolkit
	 * @generated
	 * @Override
	 */	
	protected Control doCreateControls(Composite parent, XpdFormToolkit toolkit) {
		Composite root = toolkit.createComposite(parent);
		root.setLayout(new GridLayout(3, false));
		Label label = toolkit.createLabel(root, UpgradeMessages.UpgradeImplementationSection_label);
		GridData gd = new GridData(GridData.FILL_HORIZONTAL);
		gd.horizontalSpan = 3;
		label.setLayoutData(gd);

		toolkit.createLabel(root, UpgradeMessages.UpgradeImplementationSection_toolkit_label);
		
		configTextLink = toolkit.createHyperlink(root, "Click here.",SWT.WRAP);
		gd = new GridData(GridData.FILL_HORIZONTAL);
		configTextLink.setLayoutData(gd);
		configTextLink.addHyperlinkListener(new HyperlinkAdapter() {
			public void linkActivated(HyperlinkEvent e) {
				browseForConfig();
			}
		});
		manageControl(configTextLink);
		
		configText = toolkit.createText(root, "", UpgradeMessages.UpgradeImplementationSection_toolkit_text);
		gd = new GridData(GridData.HORIZONTAL_ALIGN_END);
		gd.widthHint = 1;
		gd.minimumWidth = 1;
		configText.setLayoutData(gd);
		configText.setVisible(false);
		manageControl(configText);

		return root;
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Action for the browse button.
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	protected void browseForConfig() {
		UpgradeFileSelectionDialog d = new UpgradeFileSelectionDialog(getSite().getShell(), (Component)getInput());
		d.setInput(ResourcesPlugin.getWorkspace().getRoot());
		if (d.open() == Window.OK) {
			IPath result = ((IFile) d.getFirstResult()).getFullPath();
			IPath base = WorkspaceSynchronizer.getFile(getInput().eResource())
					.getFullPath();

			URI baseURI = URI.createPlatformResourceURI(
					base.toPortableString(), false);
			URI resultURI = URI.createPlatformResourceURI(result
					.toPortableString(), false);

			String value = resultURI.deresolve(baseURI).toString();

			Component c = (Component) getInput();
			Command cmd = SetCommand.create(getEditingDomain(), c
					.getImplementation(),
					UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION__CONFIG_FILE,
					value);
			
			if (getEditingDomain() instanceof TransactionalEditingDomain){
				TransactionalEditingDomain domain = (TransactionalEditingDomain) getEditingDomain();
				SyncWithImplementationOp op = new SyncWithImplementationOp(domain,c);
				try {
				    getEditingDomain().getCommandStack().execute(cmd);
					op.execute(new NullProgressMonitor(), null);
				} catch (ExecutionException e) {
					WorkbenchPlugin.getDefault().getLog()
					   .log(new Status(Status.ERROR, UpgradeDesignPlugin.PLUGIN_ID, 0, "can not sync with implementation ", e));
					
					ErrorDialog.openError(getSite().getShell(), "Error", "", 
							new Status(Status.ERROR, UpgradeDesignPlugin.PLUGIN_ID, 0, "can not sync with implementation ", e));
				
					if(getEditingDomain().getCommandStack().canUndo()){
						getEditingDomain().getCommandStack().undo();
					}
				}
			}			
		}
	}

	/**
	 * Prepare the section to work on DiagramEditor (selection through EditPart)
	 * or ProjectExplorer (directly selected EObject)
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @param object
	 * @generated
	 * @Override
	 */	
	protected EObject resollveInput(Object object) {
		Object input = ImplementationTypeFilter.resolveInput(object);
		if (input instanceof EObject) {
			return (EObject) input;
		}
		return null;
	}

    /**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @param control
	 * @generated
	 * @Override
	 */	
	protected Command doGetCommand(Object control) {
		if (control == configText) {
			// modify config file location
			Component c = (Component) getInput();
			return SetCommand.create(getEditingDomain(), c.getImplementation(),
					UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION__CONFIG_FILE,
					configText.getText());
		}
		return null;
	}

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
	protected void doRefresh() {
		Component c = (Component) getInput();
		UpgradeImplementation impl = (UpgradeImplementation) c.getImplementation();

		// update controls
		updateText(configText, impl.getConfigFile());
		
		if(impl.getConfigFile()==null || impl.getConfigFile().length()==0)
			configTextLink.setText("- not set -");
		else
			configTextLink.setText(impl.getConfigFile());
	}
}
