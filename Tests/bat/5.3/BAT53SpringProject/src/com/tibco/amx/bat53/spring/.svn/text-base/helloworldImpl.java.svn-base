package com.tibco.amx.bat53.spring;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.helloworld.SayHelloDocument;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * Implementation of Spring2 component.
 *
 */
public class helloworldImpl extends AbstracthelloworldImpl {
	private Logger springLogger = LoggerFactory.getLogger(helloworldImpl.class);
	/**
	 * Initialization of Spring2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Spring2 component.
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
		springLogger.info("-----INFO: Input received is: " + strin + " in Spring Component-----");
		springLogger.debug("-----DEBUG: Input received is: " + strin + " in Spring Component-----");
		springLogger.warn("-----WARN: Input received is: " + strin + " in Spring Component-----");
		springLogger.error("-----ERROR: Input received is: " + strin + " in Spring Component-----");
		springLogger.trace("-----TRACE: Input received is: " + strin + " in Spring Component-----");
	}

}
