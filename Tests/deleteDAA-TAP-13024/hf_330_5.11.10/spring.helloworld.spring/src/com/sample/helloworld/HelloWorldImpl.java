package com.sample.helloworld;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of SpringHelloWorldComponent component.
 *
 */
public class HelloWorldImpl extends AbstractHelloWorldImpl {

	/**
	 * Initialization of SpringHelloWorldComponent component.
	 */
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of SpringHelloWorldComponent component.
	 */
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName) {

		System.out.println("--> Generating Spring Hello Component Response...");
		String name = firstName.getHelloRequest() == null || firstName.getHelloRequest().equals("") ? "Friend" : firstName.getHelloRequest();
		HelloResponseDocument resp = HelloResponseDocument.Factory.newInstance();
		resp.setHelloResponse(getSpringGreeting() + " " + name + "! " + "This is the Spring component.\n");
		System.out.println("--> Spring Hello Component Response: \n\t\t"+ resp.getHelloResponse());
		return resp; 
	}

}
