package com.sample.bat520;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;
import org.example.newWSDLFile.NewOperationInDocument;
import org.example.newWSDLFile.NewOperationResponseDocument.NewOperationResponse;

/**
 * Implementation of Java3 component.
 *
 */
public class Java3 extends AbstractJava3 {

	private static int deliveryCountCase4 = 0;
	
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
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters)
			throws org.example.newwsdlfile.NewOperation_faultMsgException {
		// Add the business logic here
		
		String in = parameters.getNewOperation().getIn();
		System.out.println("In Java3 "+ " deliveryCountCase4 = "+deliveryCountCase4);
		
		if(in.equalsIgnoreCase("case4"))
		{
			deliveryCountCase4++;
			Jms.sendJMS(getBat520_out_jcf(), getBat520_out_jd(), in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase4);
			System.out.println(in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase4);
			throw new NullPointerException("**********  "+in+" deliveryCount "+deliveryCountCase4+"  **********");
		}
		
		NewOperationResponseDocument doc = NewOperationResponseDocument.Factory.newInstance();
		NewOperationResponse response = doc.addNewNewOperationResponse();
		response.setOut("response");
		
		deliveryCountCase4 = 0;
		
		return doc;
	}
	/**
	 * Implementation of the WSDL operation: NewOperationIn	 */
	public void newOperationIn(NewOperationInDocument parameters) {
		// Add the business logic here
		return;
	}

}
