package com.tibco.amx.it.upgrade.design.internal.actions;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.ide.IDE;

import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.extensionpoints.Implementation;
import com.tibco.amf.tools.composite.resources.ui.actions.SelectionBasedHandler;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;

public class UpgradeOpenImplementatoinHandler extends SelectionBasedHandler {

	protected Object doExecute(IStructuredSelection selection)
			throws ExecutionException {
		if (selection.size() == 1) {
			Component selectedComponent = (Component) selection
					.getFirstElement();
			IFile file = null;
			try {
				file = resolveConfigFile(selectedComponent);
				if (file != null) {
					IWorkbenchPage activePage = PlatformUI.getWorkbench()
							.getActiveWorkbenchWindow().getActivePage();
					IDE.openEditor(activePage, file);
				}
			} catch (PartInitException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	private IFile resolveConfigFile(Component component) {
		Implementation implementation = component.getImplementation();
		if ((implementation == null)
				|| !(implementation instanceof UpgradeImplementation)) {
			return null;
		}
		String configFilePath = ((UpgradeImplementation) implementation)
				.getConfigFile();
		URI base = ((EObject) implementation).eResource().getURI();
		try {
			URI resolved = URI.createURI(configFilePath).resolve(base);
			return WorkspaceSynchronizer.getFile(new ResourceImpl(resolved));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
