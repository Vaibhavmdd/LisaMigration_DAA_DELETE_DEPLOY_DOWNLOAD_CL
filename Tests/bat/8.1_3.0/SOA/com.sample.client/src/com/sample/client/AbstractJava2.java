package com.sample.client;

import org.osoa.sca.annotations.Reference;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.client.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements HelloWorldPT {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

	private HelloWorldPT HelloWorldPT;

	@Reference(name = "HelloWorldPT")
	public void setHelloWorldPT(HelloWorldPT HelloWorldPT) {
		this.HelloWorldPT = HelloWorldPT;
	}

	public HelloWorldPT getHelloWorldPT() {
		return this.HelloWorldPT;
	}

}
