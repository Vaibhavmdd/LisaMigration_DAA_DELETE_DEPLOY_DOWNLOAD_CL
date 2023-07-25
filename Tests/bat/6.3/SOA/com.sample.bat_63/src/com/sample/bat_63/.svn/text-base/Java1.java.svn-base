package com.sample.bat_63;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.example.xmlns._1201081326343.raisesImpl.Raiseamerica;
import org.example.raiseamerica.RaisesDocument;
import org.example.raiseamerica.RaisesResponseDocument;
import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
import com.tibco.amf.platform.runtime.extension.context.MutableRequestContext;
import com.tibco.amf.platform.runtime.extension.context.RequestContext;

import org.osoa.sca.annotations.Context;

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
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: raises	 */
	public RaisesResponseDocument raises(RaisesDocument parameters) {
		// Add the business logic here
		System.out.print("Retrieving the value of variable contextParameter1: ");
		RequestContext requestContext = (RequestContext) componentContext.getRequestContext();
		String contextParameter1 = requestContext.getParameter("contextParameter1", String.class);
		
		//if (contextParameter1.length()<1)
		//CallbackContext callbackContext = requestContext.getCallbackContext();
		System.out.println("contextParameter1 value is that:"+contextParameter1);
		
		System.out.print("Set the value of Reference variable contextParameter1: ");
		MutableRequestContext requestContext1 = (MutableRequestContext)componentContext.createMutableRequestContext();
		requestContext1.setParameter("contextParameter1", String.class, "12");
		requestContext1.setCallback(requestContext.getCallback());
		componentContext.setRequestContext(requestContext1);
		
		
		
		RaisesResponseDocument doc = RaisesResponseDocument.Factory.newInstance();		
		doc = this.getReference1().raises(parameters);		
		//999999999999999999
		
//        RaisesResponseDocument doc = RaisesResponseDocument.Factory.newInstance();
//        doc.addNewRaisesResponse();
//        doc.getRaisesResponse().setResult(123);
        
		return doc;
		}

}
