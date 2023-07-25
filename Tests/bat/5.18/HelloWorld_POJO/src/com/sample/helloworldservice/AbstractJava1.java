package com.sample.helloworldservice;

import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.helloworldservice.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements HelloPT {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

}
