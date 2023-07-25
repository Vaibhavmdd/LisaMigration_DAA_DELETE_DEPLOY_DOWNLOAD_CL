package com.tibco.qa.appupgrade522.java.component2;

import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.qa.appupgrade522.java.component2.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements HelloWorldPT {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

}
