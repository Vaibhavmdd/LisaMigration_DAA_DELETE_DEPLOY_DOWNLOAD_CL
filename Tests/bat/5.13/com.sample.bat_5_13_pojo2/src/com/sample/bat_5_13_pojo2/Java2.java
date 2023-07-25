package com.sample.bat_5_13_pojo2;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of Java2 component.
 *
 */
public class Java2 extends AbstractJava2 {

	/**
	 * Initialization of Java2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java2 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public void sayHello(HelloRequestDocument firstName) {
		// Add the business logic here
		System.out.println("************* Inside Java2 *****************");
		return;
	}

}
