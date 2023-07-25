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

import org.eclipse.gmf.runtime.common.ui.services.dnd.core.AbstractDragDropListenerProvider;
import org.eclipse.gmf.runtime.common.ui.services.dnd.core.IDragDropListenerProvider;
import org.eclipse.gmf.runtime.common.ui.services.dnd.core.IDropListenerContext;
import org.eclipse.gmf.runtime.common.ui.services.dnd.drop.IDropTargetListener;

/**
 * An implementation of {@link IDragDropListenerProvider} to contribute drag and
 * drop listeners for upgrade components
 *  
 */
public class UpgradeDragDropListenerProvider extends
		AbstractDragDropListenerProvider {
	private UpgradeComponentCreationDropTargetListener componentCreationListener = new UpgradeComponentCreationDropTargetListener(); 
	
	/* (non-Javadoc)
	 * @see org.eclipse.gmf.runtime.common.ui.services.dnd.core.AbstractDragDropListenerProvider#getDropTargetListeners(org.eclipse.gmf.runtime.common.ui.services.dnd.core.IDropListenerContext)
	 */
	@Override
	public IDropTargetListener[] getDropTargetListeners(
			IDropListenerContext context) {
		return new IDropTargetListener[] { componentCreationListener };
	}
}
