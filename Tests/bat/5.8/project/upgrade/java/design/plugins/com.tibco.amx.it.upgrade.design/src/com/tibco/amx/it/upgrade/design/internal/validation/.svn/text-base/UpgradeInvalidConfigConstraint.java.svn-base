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
package com.tibco.amx.it.upgrade.design.internal.validation;

import java.util.Properties;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.validation.AbstractModelConstraint;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
 /**
 * <!-- begin-custom-doc -->
 *
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeInvalidConfigConstraint extends AbstractModelConstraint {

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
    public IStatus validate(IValidationContext ctx) {
    	//begin-custom-code
		UpgradeImplementation target = (UpgradeImplementation) ctx.getTarget();
		String configFile = target.getConfigFile();
	    URI base = ((EObject) target).eResource().getURI();
		ctx.addResult(((EObject) target).eContainer());

		try {
				URI resolved = URI.createURI(configFile).resolve(base);
				IFile file = WorkspaceSynchronizer.getFile(new ResourceImpl(resolved));
				file.refreshLocal(0, new NullProgressMonitor());
				Properties properties = new Properties();
				properties.loadFromXML(file.getContents());
		} catch (Exception e) {
			return ctx.createFailureStatus("Configuration File doesn't exists");
		}
		
		return ctx.createSuccessStatus();
		//end-custom-code        
    }
}
