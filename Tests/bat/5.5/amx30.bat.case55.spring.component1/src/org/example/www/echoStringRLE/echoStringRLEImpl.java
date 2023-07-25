package org.example.www.echoStringRLE;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
//import org.example.www.echoStringRLE.EchoStringRLE;
import org.example.echoStringRLE.DataDocument;

/**
 * Implementation of Component1 component.
 *
 */
public class echoStringRLEImpl extends AbstractechoStringRLEImpl {

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
	 * Implementation of the WSDL operation: echo	 */
	public DataDocument echo(DataDocument echoRequest) {
		// Add the business logic here
		
		return this.getEchoReference().echo(echoRequest);
		
	}

}
