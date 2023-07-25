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
  **/
package com.tibco.amx.it.upgrade.design.internal.wizard;

import org.eclipse.core.runtime.IProgressMonitor;

import com.tibco.amx.it.upgrade.model.UpgradeImplementationModelFactory;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.extensionpoints.Implementation;
import com.tibco.amf.tools.composite.resources.ui.wizard.IComponentCreator;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeComponentCreator implements IComponentCreator {

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void configure(Component component, IProgressMonitor progessMonitor) {
		// TODO To be implemented
		//begin-custom-code
		
		//end-custom-code
	}
	
	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public Implementation createImplementation() {
		//begin-custom-code
		return UpgradeImplementationModelFactory.INSTANCE.createUpgradeImplementation();
		//end-custom-code
	}

}
