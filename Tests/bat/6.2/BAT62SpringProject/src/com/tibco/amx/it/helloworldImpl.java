package com.tibco.amx.it;

import org.example.helloworld.SayHelloDocument;
import org.example.helloworld.SayHelloFaultDocument;
import org.example.helloworld.SayHelloResponseDocument;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Implementation of SpringComp component.
 *
 */
public class helloworldImpl extends AbstracthelloworldImpl {
	private final Logger HelloWorldLogger = LoggerFactory.getLogger(helloworldImpl.class.getName());
	/**
	 * Initialization of SpringComp component.
	 */
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of SpringComp component.
	 */
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public SayHelloResponseDocument sayHello(SayHelloDocument parameters)
			throws org.example.www.helloworld.SayHello_faultMsgException {
		// Add the business logic here
		HelloWorldLogger.info("The data flow go to spring component");
		String in=parameters.getSayHello().getIn();
		
		if (parameters.getSayHello().getIn().equals("DFault")){
			HelloWorldLogger.info("The mediation flow go to declared fault path");
			SayHelloFaultDocument fdocument = SayHelloFaultDocument.Factory.newInstance();
			fdocument.addNewSayHelloFault();
            fdocument.getSayHelloFault().setSayHelloFault("This is a declared fault exception");
            org.example.www.helloworld.SayHello_faultMsgException dfault=new org.example.www.helloworld.SayHello_faultMsgException("Declared fault exception detailed",fdocument);
			throw dfault;
		}
		else if (parameters.getSayHello().getIn().equals("UdFault")){
			HelloWorldLogger.info("The mediation flow go to undeclared fault path");
			throw new java.lang.NullPointerException();
		}
		SayHelloResponseDocument document = SayHelloResponseDocument.Factory.newInstance();
		HelloWorldLogger.info("Send response from spring Component");
		document.addNewSayHelloResponse();
		document.getSayHelloResponse().setOut("Hello " + in);
		HelloWorldLogger.info("Hello " + in);
		return document;
	}

}