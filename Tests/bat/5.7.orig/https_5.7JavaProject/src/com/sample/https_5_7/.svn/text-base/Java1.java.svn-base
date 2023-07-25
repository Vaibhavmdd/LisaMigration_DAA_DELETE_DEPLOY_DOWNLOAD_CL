/**
 *
 */
package com.sample.https_5_7;

import org.osoa.sca.annotations.Init;
import com.sample.https_5_7.AbstractJava1;
import com.tibco.ns.hello1.HelloWorldResponseDocument;
import com.tibco.ns.hello1.HelloWorldRequestDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Implementation of the WSDL operation: sayHelloWorld	 */
	public HelloWorldResponseDocument sayHelloWorld(
			HelloWorldRequestDocument name) {
		// Add the business logic here
		System.out.println("*******************************************************************************");
		System.out.println("***START POJO1 Component for https_5.7***");
		
		System.out.println("Input Name = " + name.getHelloWorldRequest());
		
		System.out.println("***Inside POJO1 - Before Calling Reference***");
		HelloWorldResponseDocument reply = getReference1().sayHelloWorld(name);
		System.out.println("***Inside POJO1 - After Calling Reference***");
		
		System.out.println("Greeting from BW = " + reply.getHelloWorldResponse());
		
		System.out.println("***END POJO1 Component for https_5.7***");
		System.out.println("*******************************************************************************");
		
		return reply;
	}
}
