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
package com.tibco.amx.it.upgrade.design.internal.actions;

import org.eclipse.gmf.runtime.common.ui.services.action.contributionitem.AbstractContributionItemProvider;
import org.eclipse.gmf.runtime.common.ui.util.IPartSelector;
import org.eclipse.gmf.runtime.common.ui.util.IWorkbenchPartDescriptor;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IWorkbenchPart;

import com.tibco.amf.tools.composite.editor.part.CompositeDiagramEditor;

/**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeContributionItemProvider extends
		AbstractContributionItemProvider {

	/** 
	 * @see org.eclipse.gmf.runtime.common.ui.services.action.contributionitem.AbstractContributionItemProvider#createAction(java.lang.String, org.eclipse.gmf.runtime.common.ui.util.IWorkbenchPartDescriptor)
	 * <!-- begin-custom-doc -->
	 * 
     * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	protected IAction createAction(String actionId,
			IWorkbenchPartDescriptor partDescriptor) {
		//begin-custom-code
		if (UpgradeCreateComponentAction.ACTION_ID.equals(actionId)) {
			UpgradeCreateComponentAction upgradeCreateComponentAction = new UpgradeCreateComponentAction(
					partDescriptor.getPartPage());
			upgradeCreateComponentAction.setPartSelector(new IPartSelector() {
				public boolean selects(IWorkbenchPart part) {
					return part instanceof CompositeDiagramEditor;
				}
			});
			return upgradeCreateComponentAction;
		}
		return super.createAction(actionId, partDescriptor);
		//end-custom-code
	}
}
