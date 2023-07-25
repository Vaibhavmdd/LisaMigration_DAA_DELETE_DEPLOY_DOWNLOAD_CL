package com.sample.jms.binding.queue.helloworld;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.HelloWorld;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.NoGreetingFoundFaultDocument;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.NoSuchNameFaultDocument;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.NoSuchNameFaultDocument.NoSuchNameFault;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloNoGreetingFoundFaultException;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloNoSuchNameFaultException;
import sample.jms.bt.amx.tibco.com.helloWorld.schemas.GreetingDocument;
import sample.jms.bt.amx.tibco.com.helloWorld.schemas.NameDocument;

/**
 * Implementation of HelloWorldComponent component.
 *
 */
public class HelloWorldImpl extends AbstractHelloWorldImpl {

	/**
	 * Initialization of HelloWorldComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of HelloWorldComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public GreetingDocument sayHello(NameDocument name)
			throws sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloNoSuchNameFaultException,
			sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloTimeoutFaultException,
			sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloNoGreetingFoundFaultException {
		System.out.println("----- Received HelloWorld request in HelloWorldComponent -----");
		System.out.println("Request is : " + name);
		System.out.println("Calling Reference ...");		
		GreetingDocument greetingDoc = getHelloWorldReferenceComponent().sayHello(name);
		System.out.println("Received HelloWorld reply from reference : " + greetingDoc);
		return greetingDoc;
		
	}

}
