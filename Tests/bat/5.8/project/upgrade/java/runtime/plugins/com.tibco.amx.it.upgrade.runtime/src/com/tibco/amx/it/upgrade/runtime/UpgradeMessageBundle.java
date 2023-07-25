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
package com.tibco.amx.it.upgrade.runtime;

import com.tibco.neo.localized.BundleMessage;
import com.tibco.neo.localized.MessageBundle;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeMessageBundle extends MessageBundle {

    public static final String BUNDLE_NAME =
        UpgradeMessageBundle.class.getPackage().getName() + ".Resources"; //$NON-NLS-1$

    static {
    	MessageBundle.initializeMessages(UpgradeMessageBundle.class);
    }
    
	public static BundleMessage SUCCESS_INIT;
	public static BundleMessage SUCCESS_DESTROY;
	public static BundleMessage SUCCESS_INIT_IMPLEMENTATION;
	public static BundleMessage SUCCESS_DESTROY_IMPLEMENTATION;
	public static BundleMessage SUCCESS_INSTALL_IMPLEMENTATION;
	public static BundleMessage SUCCESS_UNINSTALL_IMPLEMENTATION;
	public static BundleMessage PREPARE_UNDEPLOY_IMPLEMENTATION;
	public static BundleMessage READY_UNDEPLOY_IMPLEMENTATION;

	public static BundleMessage INFO_PROPERTY;
	public static BundleMessage INFO_REFERENCE;

	public static BundleMessage ERROR_CREATING_LISTENER;
	public static BundleMessage ERROR_INCORRECT_TARGETTYPE;
}
