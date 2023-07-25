package com.sample.bat5_19;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import amx_rad_administrator_test.soapmediationjava.sayhelloimpl.HelloWorldPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {
	private Logger logger = LoggerFactory.getLogger(getClass());
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
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName) {
		// Add the business logic here
		System.out.println("--> Generating Java Hello Component Response...");

		   String name = firstName.getHelloRequest()==null||firstName.getHelloRequest().equals("")?"Friend":firstName.getHelloRequest(); 

		   HelloResponseDocument resp = 
		   HelloResponseDocument.Factory.newInstance(); 

		   //resp.setHelloResponse("Hi " + name + "! " +  "This is the Java component."); 
		   String str =resp.getHelloResponse();
		   resp=getHelloWorldPT().sayHello(firstName);
		   if (logger.isInfoEnabled()) {
	            logger.info("--> Java Hello Component Response: \n\t\t" + resp.getHelloResponse());		    
		   }
		   return resp;
	}

}
