package com.tibco.amx.it.upgrade.design.internal.actions;
import java.util.Iterator;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.transaction.RecordingCommand;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.tools.composite.resources.ui.actions.SelectionBasedHandler;
import com.tibco.amx.it.upgrade.design.internal.util.UpgradeConfigFileUtil;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.xpd.resources.util.WorkingCopyUtil;

public class UpgradeRegenerateImplementationCommandHandler extends
		SelectionBasedHandler {

	@SuppressWarnings("unchecked")
	protected Object doExecute(IStructuredSelection selection)
			throws ExecutionException {
		try {
			// if selection is proper continue
			if (!isValid(selection))
				return null;

			CompoundCommand cmds = new CompoundCommand();
			Iterator<EObject> iter = selection.iterator();
			while (iter.hasNext()) {
				Component component = (Component) iter.next();
				cmds.append(generateConfigurationFile(component));
			}

			if (!cmds.isEmpty()) {
				EditingDomain ed = WorkingCopyUtil
						.getEditingDomain((EObject) selection.getFirstElement());
				ed.getCommandStack().execute(cmds.unwrap());
			}

		} catch (final Exception ex) {
			Display.getDefault().syncExec(new Runnable() {
				public void run() {
					MessageDialog.openError(Display.getDefault()
							.getActiveShell(), "Upgrade Implementation Generation Error", ex
							.getMessage());
				}
			});
			throw new ExecutionException("Upgrade Implementation Generation Error", ex);			
		}
		return null;
	}

	private Command generateConfigurationFile(final Component component) {
		final UpgradeImplementation implementation = (UpgradeImplementation) component.getImplementation();
        
        EditingDomain ed = WorkingCopyUtil.getEditingDomain(component);	        
		return new RecordingCommand((TransactionalEditingDomain) ed) {
			protected void doExecute() {
				ComponentType ct = UpgradeConfigFileUtil.createComponentType(component);
				UpgradeConfigFileUtil.writeComponentTypeToConfigFile(implementation, ct);				
			}
	    };
	}

	/**
	 * Check if the operation can be applied on all elements in the selection
	 * 
	 * @param selection
	 */
	private boolean isValid(final IStructuredSelection selection)
			throws Exception {
		if (selection.size() > 1) {
			MessageDialog.openWarning(new Shell(),
					"Upgrade Implementation Generation Warning!",
					"Please select a single component to generate configuration file");
			return false;
		}
		if (selection.size() == 1) {
			EObject input = (EObject) selection.getFirstElement();
			if (!(input instanceof Component)) {
				Display.getDefault().syncExec(new Runnable() {
					public void run() {
						MessageDialog
								.openError(Display.getDefault()
										.getActiveShell(),
										"Upgrade Implementation Generation Error",
										"The selection contains elements which are not Component");

					}
				});
				return false;
			}
			return true;
		}
		return false;
	}
}
