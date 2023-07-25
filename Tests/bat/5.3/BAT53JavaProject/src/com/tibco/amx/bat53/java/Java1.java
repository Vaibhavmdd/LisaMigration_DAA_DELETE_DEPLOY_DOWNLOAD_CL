package com.tibco.amx.bat53.java;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.helloworld.SayHelloDocument;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {
	private Logger javaLogger = LoggerFactory.getLogger(Java1.class);
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
	public void sayHello(SayHelloDocument parameters) {
		// Add the business logic here
		String strin=parameters.getSayHello().getIn();
		System.out.println("-----Input received is: " + strin + "-----");
		javaLogger.info("-----INFO: Input received is: " + strin + " in Java Component-----");
		javaLogger.debug("-----DEBUG: Input received is: " + strin + " in Java Component-----");
		javaLogger.warn("-----WARN: Input received is: " + strin + " in Java Component-----");
		javaLogger.error("-----ERROR: Input received is: " + strin + " in Java Component-----");
		javaLogger.trace("-----TRACE: Input received is: " + strin + " in Java Component-----");
		this.getHelloworld().sayHello(parameters);
		return;
	}

}
