package com.tibco.qa.appupgrade522.java.component1;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.hello.HelloWorldPT;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddSubtractService;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddResponseDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.SubtractDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.SubtractResponseDocument;
import com.tibco.ws.spline.wsdl.elements.mathservice.AddResponseDocument.AddResponse;
import com.tibco.ws.spline.wsdl.elements.mathservice.SubtractResponseDocument.SubtractResponse;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

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
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: Add	 */
	public AddResponseDocument add(AddDocument parameters) {
		// Add the business logic here
		AddResponseDocument respdoc =AddResponseDocument.Factory.newInstance();
		System.out.println("Test Add");
		AddResponse addresp = respdoc.addNewAddResponse();			
		addresp.setAddResult(parameters.getAdd().getA()+parameters.getAdd().getB());		
		HelloRequestDocument name= HelloRequestDocument.Factory.newInstance();
		name.setHelloRequest("Abdul");
		HelloResponseDocument resp= getHelloWorldPT().sayHello(name); 
		System.out.println("response from java2 "+resp);
		System.out.println(" Add result \n"+respdoc);
		return respdoc;
	}
	/**
	 * Implementation of the WSDL operation: Subtract	 */
	public SubtractResponseDocument subtract(SubtractDocument parameters) {
		// Add the business logic here
		SubtractResponseDocument respDoc = SubtractResponseDocument.Factory.newInstance();
		System.out.println("Test Subtract");
		SubtractResponse resp = respDoc.addNewSubtractResponse();
		resp.setSubtractResult(parameters.getSubtract().getA() - parameters.getSubtract().getB());
		HelloRequestDocument name= HelloRequestDocument.Factory.newInstance();
		name.setHelloRequest("Abdul");
		HelloResponseDocument resp2= getHelloWorldPT().sayHello(name); 
		System.out.println("response from java2 "+resp2);
		System.out.println(" subtract result "+respDoc);
		return respDoc;
	}

}
