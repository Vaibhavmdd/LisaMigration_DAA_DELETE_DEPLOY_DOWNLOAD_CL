package com.sample.helloworldservice;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName) {
		// Add the business logic here
		System.out.println("*************************************************************");
		System.out.println("************Received request with name :" + firstName.getHelloRequest());
		HelloResponseDocument response = HelloResponseDocument.Factory.newInstance();
		response.setHelloResponse(firstName.getHelloRequest() + " Received");
		System.out.println("*************************************************************");
		return response;
	}

}
