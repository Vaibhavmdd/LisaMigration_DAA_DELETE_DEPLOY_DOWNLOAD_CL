package cmt_v30_01_ui;

import java.io.InputStream;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;
import org.eclipse.jface.resource.ImageDescriptor;

import com.tibco.amsb.core.task.ui.FlowDataProvider;
import com.tibco.amsb.core.task.ui.MediationTaskUIFactory;
import com.tibco.amsb.core.task.ui.property.TaskEditPart;

import com.tibco.amsb.core.mediationextmodel.MediationTask;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask;

/**
 * Factory class for mediation task edit part <code>CMTV3001EditPart</code>
 * objects.
 * 
 * @version 2.0
 * @see TaskEditPart
 * @see MediationTask
 */

public class CMTV3001UIFactory extends MediationTaskUIFactory {

	public CMTV3001UIFactory() {
	}

	/**
	 * Access method to get the type name of the mediation task.
	 * 
	 * @return name string
	 */

	public String getName() {
		return CMTV3001UIMessages.getString("CMTV3001Plugin.mediation.task.name");
	}

	/**
	 * Return a short description of this type of mediation task.
	 * 
	 * @return short description string
	 */

	public String getShortDescription() {
		return CMTV3001UIMessages.getString("CMTV3001Plugin.mediation.task.description");
	}

	/**
	 * Return an icon suitable for a palette or menu (e.g. 16x16).
	 * 
	 * @return image descriptor
	 */

	public ImageDescriptor getSmallIcon() {
		InputStream in = getClass().getClassLoader().getResourceAsStream(CMTV3001Constants.ICON_TASK_SMALL);
		Image image = new Image(Display.getCurrent(),in);
		return ImageDescriptor.createFromImage(image);
	}

	/**
	 * Return an icon suitable for a palette or menu (e.g. 32x32).
	 * 
	 * @return image descriptor
	 */

	public ImageDescriptor getLargeIcon() {
		InputStream in = getClass().getClassLoader().getResourceAsStream(CMTV3001Constants.ICON_TASK_LARGE);
		Image image = new Image(Display.getCurrent(),in);
		return ImageDescriptor.createFromImage(image);
	}

	/**
	 * Create an edit part delegate object. This delegate is used to extend the
	 * base mediation diagram task edit part, and is the object that is actually
	 * selected when a mediation task is selected on the diagram.
	 * 
	 * @param fdp -
	 *            use the flow data provider to obtain context information
	 * @param taskModel -
	 *            the task model is provided in case information is needed from
	 *            it
	 * @return a new task edit part object
	 */
	public TaskEditPart createTaskEditPart(FlowDataProvider flowDataProvider,
			MediationTask taskModel) {
		if (taskModel instanceof CMTV3001MediationTask) {
			return new CMTV3001EditPart(flowDataProvider, taskModel);
		}
		return null;
	}
}
