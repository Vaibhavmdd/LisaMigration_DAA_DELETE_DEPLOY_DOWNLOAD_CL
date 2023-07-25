package cmt_v30_01_ui;

import java.io.InputStream;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;

import com.tibco.amsb.core.task.ui.FlowDataProvider;
import com.tibco.amsb.core.task.ui.property.TaskEditPart;

/**
 * CMTV3001EditParts acts as the <I>Controller</I> and ties the mediation
 * task model to its visual representation. TaskEditPart holds the model and
 * provides methods that update the model based editing events.
 * 
 * @see TaskEditPart
 * @see EditPart
 */

public class CMTV3001EditPart extends TaskEditPart {

	public CMTV3001EditPart(FlowDataProvider fdp, Object theObject) {
		super(fdp, theObject);
	}

	/* Returns the edit part name which is usually the task short description.
	 * @param task data from the task may be used in the text
	 * 
	 * @return display string
	 */

	public String getText(Object task) {
				return CMTV3001UIMessages.getString("CMTV3001Plugin.mediation.task.description");
	}
			
	/**
	 * Returns a small icon for the task to be associated with this edit
	 * part.
	 * 
	 * @param task
	 *            data from the task may be used to determine the icon
	 * 
	 * @return 16x16 icon images
	 */
	public Image getImage(Object task) {
		InputStream in = getClass().getClassLoader().getResourceAsStream(CMTV3001Constants.ICON_TASK_SMALL);
		return new Image(Display.getCurrent(),in);
	}
}
