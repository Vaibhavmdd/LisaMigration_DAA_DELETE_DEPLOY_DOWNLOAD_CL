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
package com.tibco.amx.it.upgrade.design.internal.ct;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.model.UpgradeImplementationModelFactory;
import com.tibco.amf.sca.model.extensionpoints.Implementation;

 /**
 * <!-- begin-custom-doc -->
 * Factory for implementation type.
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeImplementationDelegate extends
		com.tibco.amf.sca.componenttype.implementation.ImplementationDelegate {

	/**
	 * <!-- begin-custom-doc -->
	 * Create unconfigured instance of the Upgrade Implementation.
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
	public Implementation createDefaultImplementation() {
		UpgradeImplementation implementation = UpgradeImplementationModelFactory.INSTANCE.createUpgradeImplementation();
		return implementation;
	}

}
