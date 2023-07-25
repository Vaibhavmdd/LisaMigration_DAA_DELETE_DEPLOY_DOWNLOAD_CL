package com.sample.mock;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;
import org.example.newWSDLFile.NewOperationResponseDocument.NewOperationResponse;

/**
 * Implementation of Component1 component.
 *
 */
public class Component1 extends AbstractComponent1 {

	/**
	 * Initialization of Component1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Component1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters) {
		// Add the business logic here
		
		NewOperationResponseDocument rspDoc = NewOperationResponseDocument.Factory.newInstance();
		NewOperationResponse rsp = rspDoc.addNewNewOperationResponse();
		rsp.setOut(parameters.getNewOperation().getIn());
		
		return rspDoc;
	}

}
