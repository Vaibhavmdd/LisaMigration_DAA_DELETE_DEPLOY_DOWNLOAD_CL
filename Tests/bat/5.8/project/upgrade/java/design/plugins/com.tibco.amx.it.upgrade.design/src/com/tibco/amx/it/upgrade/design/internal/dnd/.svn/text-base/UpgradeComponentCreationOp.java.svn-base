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

import java.util.List;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.gmf.runtime.common.core.command.CommandResult;
import org.eclipse.gmf.runtime.emf.commands.core.command.AbstractTransactionalCommand;

import com.tibco.amf.sca.componenttype.ComponentTypeActivator;
import com.tibco.amf.sca.componenttype.CompositeModelBuilder;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.composite.Composite;
import com.tibco.amx.it.upgrade.design.UpgradeDesignPlugin;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.model.UpgradeImplementationModelFactory;


/**
 * An EMF operation to create a new upgrade Component within a Composite.
 *  
 */
public class UpgradeComponentCreationOp extends AbstractTransactionalCommand {
	
	private Composite composite;	
	private String configFile;
	
	/**
	 * @param domain
	 * @param label
	 * @param affectedFiles
	 */
	public UpgradeComponentCreationOp(TransactionalEditingDomain domain,
			String label, List<IFile> affectedFiles) {
		super(domain, label, affectedFiles);
	}

	public void setComposite(Composite composite) {
		this.composite = composite;
	}
	
	public void setConfigFile(String configFile) {
		this.configFile = configFile;
	}

	/* (non-Javadoc)
	 * @see org.eclipse.gmf.runtime.emf.commands.core.command.AbstractTransactionalCommand#doExecuteWithResult(org.eclipse.core.runtime.IProgressMonitor, org.eclipse.core.runtime.IAdaptable)
	 */
	@Override
	protected CommandResult doExecuteWithResult(IProgressMonitor monitor,
			IAdaptable info) throws ExecutionException {
		CommandResult commandResult = null;
		CompositeModelBuilder mb = ComponentTypeActivator.getDefault().getModelBuilder();
		UpgradeImplementation implementation = UpgradeImplementationModelFactory.INSTANCE
				.createUpgradeImplementation();
		implementation.setConfigFile(configFile);
		// Synchronize the component with the component type
		Component component = null;
		try {
//			ComponentUtil.syncComponentWithComponentType(component);
			component = mb.createComponent(composite, implementation);
		} catch (Exception e) {
			UpgradeDesignPlugin.getDefault().getLog().log(
					new Status(IStatus.ERROR, UpgradeDesignPlugin.PLUGIN_ID, e
							.getMessage(), e));
		}finally{
			commandResult = CommandResult.newOKCommandResult(component);	
		}
		return commandResult;
	}
}
