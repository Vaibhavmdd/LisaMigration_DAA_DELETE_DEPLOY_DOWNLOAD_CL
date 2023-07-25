package com.sample.cl1_8;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * Implementation of JavaComp component.
 *
 */
public class JavaComp extends AbstractJavaComp {

	private Logger javaLogger = LoggerFactory.getLogger(JavaComp.class);
	/**
	 * Initialization of JavaComp component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of JavaComp component.
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
		System.out.println("--> Generating Java Hello Component Response...");
		String name = firstName.getHelloRequest()==null||firstName.getHelloRequest().equals("")?"Friend":firstName.getHelloRequest();
		HelloResponseDocument resp = HelloResponseDocument.Factory.newInstance();
		javaLogger.debug("Hi " + name + "! " + "This is the Java component debug message.");
		javaLogger.info("Hi " + name + "! " + "This is the Java component info message.");
		javaLogger.warn("Hi " + name + "! " + "This is the Java component warn message.");
		javaLogger.error("Hi " + name + "! " + "This is the Java component error message.");
		javaLogger.trace("Hi " + name + "! " + "This is the Java component trace message.");
		resp.setHelloResponse("Hi " + name + "! " + "This is the Java component.\n");
		System.out.println("--> Java Hello Component Response: \n\t\t" + resp.getHelloResponse());
		return resp;
	}

}
