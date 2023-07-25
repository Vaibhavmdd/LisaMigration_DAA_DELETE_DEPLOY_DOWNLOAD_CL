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

import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.AbstractModelConstraint;
import org.eclipse.emf.validation.IValidationContext;

import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.composite.ComponentReference;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;

/**
 * @author adhariya
 * 
 */
public class UpgradeReferenceAdditionSupport extends AbstractModelConstraint {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.eclipse.emf.validation.AbstractModelConstraint#validate(org.eclipse
	 * .emf.validation.IValidationContext)
	 */
	@Override
	public IStatus validate(final IValidationContext ctx) {
		final EObject target = ctx.getTarget();
		final Component component = (Component) target.eContainer();

		if (component.getImplementation() instanceof UpgradeImplementation)
		{
			final UpgradeImplementation impl = (UpgradeImplementation) component.getImplementation();
			if(impl == null) {
				return ctx.createSuccessStatus();
			}
			
			if (target instanceof ComponentReference) {
				final ComponentReference componentReference = (ComponentReference) target;
				return ctx.createFailureStatus(componentReference.getName());
			}
		}
		return ctx.createSuccessStatus();
	}

}
