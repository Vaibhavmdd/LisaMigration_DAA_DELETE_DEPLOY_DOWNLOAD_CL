package com.sample.helloworld;

import org.osoa.sca.annotations.Property;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "SpringHelloWorldComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.helloworld.AbstractHelloWorldImpl AbstractHelloWorldImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractHelloWorldImpl implements HelloWorldPT {

	private java.lang.String SpringGreeting;

	public void setSpringGreeting(java.lang.String SpringGreeting) {
		this.SpringGreeting = SpringGreeting;
	}

	public java.lang.String getSpringGreeting() {
		return SpringGreeting;
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

}
