package com.sample.bat82;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import soa.x1.x1.common.hc.sample.Sample;
import soa.x1.x1.common.hc.sample.NewOperationResponseDocument.NewOperationResponse;
import soa.x1.x1.common.hc.sample.NewOperationDocument;
import soa.x1.x1.common.hc.sample.NewOperationResponseDocument;

/**
 * Implementation of Java2 component.
 *
 */
public class Java2 extends AbstractJava2 {

	/**
	 * Initialization of Java2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java2 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(NewOperationDocument parameters) {
		NewOperationResponseDocument doc = NewOperationResponseDocument.Factory.newInstance();
		NewOperationResponse resp = NewOperationResponse.Factory.newInstance();
		resp.setOut(parameters.getNewOperation().getIn());
		doc.setNewOperationResponse(resp);

		return doc;
	}

}
