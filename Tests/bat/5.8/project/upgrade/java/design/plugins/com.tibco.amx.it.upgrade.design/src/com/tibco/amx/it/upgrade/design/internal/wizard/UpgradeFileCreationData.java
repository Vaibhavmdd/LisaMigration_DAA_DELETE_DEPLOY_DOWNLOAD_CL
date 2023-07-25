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

import org.eclipse.core.runtime.IPath;

 /**
 * Contains either the name or the complete path of the upgrade file to be created
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 *
 */
public class UpgradeFileCreationData {
	/**
	 * The full (workspace-relative) path of the upgrade file. If this is set then
	 * this should be used. This takes precedence over 'upgradeFileName'
	 */
	protected IPath upgradeFilePath;

	/**
	 * Just the name of the upgrade file. This will be used in cases where there
	 * location of the upgrade file cannot be determined initially
	 */
	protected String upgradeFileName;

	/**
	 * <!-- begin-custom-doc -->
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationData() {
		//begin-custom-code
		//end-custom-code
	}
	
	/**
	 * <!-- begin-custom-doc -->
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationData(IPath upgradeFilePath) {
		this.upgradeFilePath = upgradeFilePath;
	}

	/**
	 * <!-- begin-custom-doc -->
     *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeFileCreationData(String upgradeFileName) {
		this.upgradeFileName = upgradeFileName;
	}
	 
	/**
	 * <!-- begin-custom-doc -->
	 * Returns the complete path of the upgrade file
	 * @return the upgradeFilePatht
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public IPath getUpgradeFilePath() {
		return upgradeFilePath;
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @param upgradeFilePath
	 *            the upgradeFilePath to set
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void setUpgradeFilePath(IPath upgradeFilePath) {
		this.upgradeFilePath = upgradeFilePath;
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Returns the name of the upgrade file
	 * @return the upgradeFileName
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public String getUpgradeFileName() {
		return upgradeFileName;
	}

	/**
	 * <!-- begin-custom-doc -->
	 * @param upgradeFileName the upgradeFileName to set
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public void setUpgradeFileName(String upgradeFileName) {
		this.upgradeFileName = upgradeFileName;
	}
}
