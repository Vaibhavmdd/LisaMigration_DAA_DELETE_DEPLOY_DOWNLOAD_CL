package com.sample.jms.binding.queue.helloworld;

import org.osoa.sca.annotations.Reference;
import sample.jms.bt.amx.tibco.com.helloWorld.definitions.HelloWorld;
import sample.jms.bt.amx.tibco.com.helloWorld.schemas.GreetingDocument;
import sample.jms.bt.amx.tibco.com.helloWorld.schemas.NameDocument;

/**
 * Abstract interface generated for component "HelloWorldComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.jms.binding.queue.helloworld.AbstractHelloWorldImpl AbstractHelloWorldImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractHelloWorldImpl implements HelloWorld {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract GreetingDocument sayHello(NameDocument name)
			throws sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloNoSuchNameFaultException,
			sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloTimeoutFaultException,
			sample.jms.bt.amx.tibco.com.helloWorld.definitions.SayHelloNoGreetingFoundFaultException;

	private HelloWorld HelloWorldReferenceComponent;

	@Reference(name = "HelloWorldReferenceComponent")
	public void setHelloWorldReferenceComponent(
			HelloWorld HelloWorldReferenceComponent) {
		this.HelloWorldReferenceComponent = HelloWorldReferenceComponent;
	}

	public HelloWorld getHelloWorldReferenceComponent() {
		return this.HelloWorldReferenceComponent;
	}

}
