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
package com.tibco.amx.it.upgrade.design.internal.dnd;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.eclipse.core.resources.IFile;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.gmf.runtime.common.core.command.ICommand;
import org.eclipse.gmf.runtime.common.ui.services.dnd.drop.IDropTargetListener;
import org.eclipse.gmf.runtime.emf.commands.core.command.CompositeTransactionalCommand;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.views.navigator.LocalSelectionTransfer;

import com.tibco.amx.it.upgrade.design.internal.UpgradeMessages;
import com.tibco.amf.sca.model.composite.Composite;
import com.tibco.amf.tools.composite.resources.ui.internal.dnd.AbstractAMFDropTargetListner;
import com.tibco.xpd.resources.util.WorkingCopyUtil;


/**
 * An implementation of {@link IDropTargetListener} which is responsible for
 * creating a upgrade component when a config file is dropped onto the composite.
 * Should be used within the context of the Composite Editor only
 * 
 */
@SuppressWarnings("restriction")
public class UpgradeComponentCreationDropTargetListener extends AbstractAMFDropTargetListner {

	private Composite targetComposite;
	private ArrayList<IFile> configFileList;

	
	/* (non-Javadoc)
	 * @see org.eclipse.gmf.runtime.common.ui.services.dnd.drop.AbstractDropTargetListener#canSupport()
	 */
	@Override
	public boolean canSupport() {
		Object target = getContext().getCurrentTarget();
		return getSelectedConfigFiles().size() > 0 && target instanceof Composite;
	}
	
	private List<IFile> getSelectedConfigFiles() {
		configFileList = new ArrayList<IFile>();
		if (LocalSelectionTransfer.getInstance().isSupportedType(
				getCurrentEvent().getCurrentDataType())) {
			Object object = LocalSelectionTransfer.getInstance()
					.nativeToJava(getCurrentEvent().getCurrentDataType());
			if (object instanceof Widget) {
				object = ((Widget) object).getData();
			}
			if (object instanceof IStructuredSelection) {
				Object[] selections = ((IStructuredSelection) object).toArray();	
				for (int i = 0; i < selections.length; i++) {
					if (selections[i] instanceof IFile) {
						IFile file = (IFile)selections[i];
						if (file.getFileExtension().equals("upgrade")){
							configFileList.add(file);
						}
					}
				}					
			}
		}
		return configFileList;
	}	

	/* (non-Javadoc)
	 * @see org.eclipse.gmf.runtime.common.ui.services.dnd.drop.AbstractDropTargetListener#getExecutableContext(org.eclipse.swt.dnd.DropTargetEvent)
	 */
	@Override
	public ICommand doGetExecutableContext(DropTargetEvent event) {
		targetComposite = (Composite) getContext().getCurrentTarget();
		TransactionalEditingDomain ed = (TransactionalEditingDomain) WorkingCopyUtil
				.getEditingDomain((EObject) targetComposite);
		CompositeTransactionalCommand compositeCommand = new CompositeTransactionalCommand(ed,"Create Component from Composite");
		for (IFile file : configFileList) {
			UpgradeComponentCreationOp createCompCommand = new UpgradeComponentCreationOp(
					ed,
					UpgradeMessages.UpgradeComponentCreationDropTargetListener_ComponentCreationOp_label, 
					Collections
					.singletonList(file));
			createCompCommand.setComposite(targetComposite);
			URI uri = URI.createPlatformResourceURI(file.getFullPath().toPortableString());
			URI base = ((EObject)targetComposite).eResource().getURI();
			createCompCommand.setConfigFile(uri.deresolve(base).toString());
			
			compositeCommand.add(createCompCommand);
		}	
		return compositeCommand;		
	}
}
