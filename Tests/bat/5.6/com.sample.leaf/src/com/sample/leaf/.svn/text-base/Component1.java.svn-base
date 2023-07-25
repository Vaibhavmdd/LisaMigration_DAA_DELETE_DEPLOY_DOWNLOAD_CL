package com.sample.leaf;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;

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
		
		//this is service message
		String in = parameters.getNewOperation().getIn();
		System.out.println(in);
		
		//forwarding service message to reference
		NewWSDLFile ref = this.getNewWSDLFile1();
		NewOperationResponseDocument refDoc = ref.newOperation(parameters);
		
		//extracting reference massage
		String rsp = refDoc.getNewOperationResponse().getOut();
		
		//returning reference message to service requester while adding my property
		refDoc.getNewOperationResponse().setOut(rsp + " " + this.getProperty1());
		return refDoc;
	}

}
