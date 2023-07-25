/**
 * Copyright 2008 TIBCO Software Inc.
 */
package com.tibco.amx.it.upgrade.design.internal.validation;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.transaction.RecordingCommand;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;
import org.eclipse.jface.window.Window;

import com.tibco.amx.it.upgrade.design.internal.sections.UpgradeFileSelectionDialog;
import com.tibco.amx.it.upgrade.design.internal.util.UpgradeConfigFileUtil;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.xpd.validation.resolutions.AbstractWorkingCopyResolution;
import com.tibco.xpd.validation.resolutions.ResolutionException;

  /**
 * <!-- begin-custom-doc -->
 *
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeItResolution extends AbstractWorkingCopyResolution {

	/**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
	protected Command getResolutionCommand(EditingDomain ed,
			final EObject target, IMarker marker) throws ResolutionException {

		if (target instanceof Component&& ((Component) target).getImplementation() instanceof UpgradeImplementation) {
			final UpgradeImplementation upgrade = (UpgradeImplementation) ((Component) target).getImplementation();
	        if ((upgrade.getConfigFile() == null)|| "".equals(upgrade.getConfigFile().trim())) {
			    final UpgradeFileSelectionDialog d = new UpgradeFileSelectionDialog(null);
			    d.setInput(ResourcesPlugin.getWorkspace().getRoot());
				if (d.open() == Window.OK) {
					return new RecordingCommand((TransactionalEditingDomain) ed) {
						protected void doExecute() {
							IPath result = ((IFile) d.getFirstResult()).getFullPath();
							IPath base = WorkspaceSynchronizer.getFile(target.eResource()).getFullPath();
							URI baseURI = URI.createPlatformResourceURI(base.toPortableString(), false);
							URI resultURI = URI.createPlatformResourceURI(result.toPortableString(), false);
							String value = resultURI.deresolve(baseURI).toString();
							
							upgrade.setConfigFile(value);
							ComponentType ct = UpgradeConfigFileUtil.createComponentType((Component)target);
							UpgradeConfigFileUtil.writeComponentTypeToConfigFile(upgrade, ct);				
						}
				    };
				} 
	        }
	        	        
			return new RecordingCommand((TransactionalEditingDomain) ed) {
				protected void doExecute() {
					ComponentType ct = UpgradeConfigFileUtil.createComponentType((Component)target);
					UpgradeConfigFileUtil.writeComponentTypeToConfigFile(upgrade, ct);				
				}
		    };
		}
		return null;		
	}

}
