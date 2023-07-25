package com.sample.helloworld1;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of JavaHelloComponent component.
 *
 */
public class HelloWorld1Impl extends AbstractHelloWorld1Impl {

	/**
	 * Initialization of JavaHelloComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of JavaHelloComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName) {
		System.out.println("--> Generating Java Hello Component Response...");
		String name = firstName.getHelloRequest()==null||firstName.getHelloRequest().equals("")?"Friend":firstName.getHelloRequest();
		HelloResponseDocument resp = HelloResponseDocument.Factory.newInstance();
		resp.setHelloResponse("Hi " + name + "! " + "This is the Java component.\n");
		System.out.println("--> Java Hello Component Response: \n\t\t" + resp.getHelloResponse());
		return resp;
	}

}
