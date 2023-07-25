package cmt_v30_01_model;

import java.text.MessageFormat;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.*;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.IValidationContext;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.validation.AbstractModelConstraint;

public class errorinfoNonNullConstraint extends AbstractModelConstraint {

	@Override
	public IStatus validate(IValidationContext ctx) {
		EObject target = ctx.getTarget();
		if (target instanceof CMTV3001MediationTask) {
			CMTV3001MediationTask mediationTask = (CMTV3001MediationTask) target;
			return check(ctx, mediationTask);
		}
		return ctx.createSuccessStatus();
	}

	protected IStatus check(IValidationContext ctx,
			final CMTV3001MediationTask mediationTask) {
		String value = mediationTask.getErrorinfo();
		if (value != null && value != "") {
			return ctx.createSuccessStatus();
		} else {
			return ctx.createFailureStatus(MessageFormat.format(Messages
					.getString("cmtv3001mediationtask.null.attribute.value"),
					CMTV3001MediationTaskPackage.eINSTANCE
							.getCMTV3001MediationTask_Errorinfo().getName()));
		}

	}
}
