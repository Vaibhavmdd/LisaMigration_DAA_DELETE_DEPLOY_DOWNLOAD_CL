package com.sample.bat5212;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.bat521wsdl.BAT521WSDL;
import org.example.bat521wsdl.GreetOperation_faultMsgException;
import org.example.bat521WSDL.GreetOperationFaultDocument;
import org.example.bat521WSDL.GreetOperationResponseDocument;
import org.example.bat521WSDL.GreetOperationDocument;
import org.example.bat521WSDL.GreetOperationFaultDocument.GreetOperationFault;
import org.example.bat521WSDL.GreetOperationResponseDocument.GreetOperationResponse;

/**
 * Implementation of Java3 component.
 *
 */
public class Java3 extends AbstractJava3 {

	/**
	 * Initialization of Java3 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of Java3 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: GreetOperation	 */
	public GreetOperationResponseDocument greetOperation(
			GreetOperationDocument inParam)
			throws org.example.bat521wsdl.GreetOperation_faultMsgException {
		// Add the business logic here
		System.out.println("**********In Java3***********");
		if 	(	(inParam.getGreetOperation().getIn().equalsIgnoreCase("Case1"))	|| 
				(inParam.getGreetOperation().getIn().equalsIgnoreCase("Case2"))		)
			{
			System.out.println("*************In Java3-Case1/2");
			try{
				System.out.println("*****Java3::Case1/2::Throwing Undeclared Fault*****");
				int x=1/0;
			}
			catch(ArithmeticException e){
				throw e;
			}
		}
		else if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case3")){
			System.out.println("*************In Java3-Case3**************");
			throw new GreetOperation_faultMsgException(null,null);
		}
		GreetOperationResponseDocument response=GreetOperationResponseDocument.Factory.newInstance();
		GreetOperationResponse greetOperationResponse=GreetOperationResponse.Factory.newInstance();
		greetOperationResponse.setOut("Hello");
		response.setGreetOperationResponse(greetOperationResponse);
		return response;
	}

}
