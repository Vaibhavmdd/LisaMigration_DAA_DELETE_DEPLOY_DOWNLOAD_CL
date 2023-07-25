package com.tibco.qa.appupgrade522.java.component1;

import org.osoa.sca.annotations.Reference;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddSubtractService;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddResponseDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.SubtractDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.SubtractResponseDocument;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.qa.appupgrade522.java.component1.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements AddSubtractService {

	/**
	 * Implementation of the WSDL operation: Add	 */
	public abstract AddResponseDocument add(AddDocument parameters);
	/**
	 * Implementation of the WSDL operation: Subtract	 */
	public abstract SubtractResponseDocument subtract(
			SubtractDocument parameters);

	private HelloWorldPT HelloWorldPT;

	@Reference(name = "HelloWorldPT")
	public void setHelloWorldPT(HelloWorldPT HelloWorldPT) {
		this.HelloWorldPT = HelloWorldPT;
	}

	public HelloWorldPT getHelloWorldPT() {
		return this.HelloWorldPT;
	}

}
