package com.tibco.qa.appupgrade522.java.component2;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

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
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
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
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName,
			HelloRequestDocument lastName) {
		// Add the business logic here	
		System.out.println("--> Generating Java Hello Component Response...");
		String fname = firstName.getHelloRequest()==null||firstName.getHelloRequest().equals("")?"Friend":firstName.getHelloRequest();
		String lname = lastName.getHelloRequest()==null||lastName.getHelloRequest().equals("")?"Friend":lastName.getHelloRequest();
		String name= fname+" "+lname;
		HelloResponseDocument resp = HelloResponseDocument.Factory.newInstance();
		resp.setHelloResponse("Hi " + name + "! " + "This is the Java component.\n");
		System.out.println("--> Java Hello Component Response: \n\t\t" + resp.getHelloResponse());
		return resp;
	}

}
