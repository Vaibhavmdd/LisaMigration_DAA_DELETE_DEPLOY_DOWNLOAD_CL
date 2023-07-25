package com.tibco.amx.cl3_2;

import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "JavaComp".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.cl3_2.AbstractJavaComp AbstractJavaComp}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJavaComp implements HelloWorldPT {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

}
