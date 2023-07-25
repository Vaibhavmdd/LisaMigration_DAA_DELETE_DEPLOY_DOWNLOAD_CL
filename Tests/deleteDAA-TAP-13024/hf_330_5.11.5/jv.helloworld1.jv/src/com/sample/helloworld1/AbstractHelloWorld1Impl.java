package com.sample.helloworld1;

import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "JavaHelloComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.helloworld1.AbstractHelloWorld1Impl AbstractHelloWorld1Impl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractHelloWorld1Impl implements HelloWorldPT {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

}
