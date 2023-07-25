package com.sample.soapcompreftimeout;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;

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
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters) {
		// Add the business logic here
		String currentThread = Thread.currentThread().getName();
        System.out.println("In Java2 current thread is : " +  Thread.currentThread().getName());
        System.out.println((new StringBuilder("got ")).append(parameters.getNewOperation().getIn()).toString());
        String in = parameters.getNewOperation().getIn();
        parameters.getNewOperation().setIn((new StringBuilder(String.valueOf(in))).append(currentThread).toString());
        NewOperationResponseDocument doc = getNewWSDLFile().newOperation(parameters);
        return doc;

	}

}
