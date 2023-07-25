package com.sample.bat5_19;

import org.osoa.sca.annotations.Reference;
import amx_rad_administrator_test.soapmediationjava.sayhelloimpl.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat5_19.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements com.tibco.ns.hello.HelloWorldPT {

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
