package com.sample.bat520;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationFaultDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;
import org.example.newWSDLFile.NewOperationInDocument;
import org.example.newWSDLFile.NewOperationFaultDocument.NewOperationFault;

/**
 * Implementation of Java2 component.
 *
 */
public class Java2 extends AbstractJava2 {

	private static int deliveryCountCase1 = 0;
	private static int deliveryCountCase5 = 0;
	
	/**
	 * Initialization of Java2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
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
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters)
			throws org.example.newwsdlfile.NewOperation_faultMsgException {
		// Add the business logic here
		
		String in = parameters.getNewOperation().getIn();
		NewOperationResponseDocument doc = null;
		
		if(in.equalsIgnoreCase("case1"))
		{
			deliveryCountCase1++;
			Jms.sendJMS(getBat520_out_jcf(), getBat520_out_jd(), in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase1);
			NewOperationFaultDocument fault = NewOperationFaultDocument.Factory.newInstance();
			NewOperationFault faultOp = fault.addNewNewOperationFault();
			faultOp.setNewOperationFault("throwing declared fault for "+"deliveryCount "+deliveryCountCase1+" "+in+" from "+this.getClass().getSimpleName());
			throw new org.example.newwsdlfile.NewOperation_faultMsgException("", fault);
		}
		else if(in.equalsIgnoreCase("case4"))
		{
			try
			{
				doc = getNewWSDLFile().newOperation(parameters);				
			}
			catch (Exception e)
			{
//				 do not propagate the exception from Java3
				System.out.println("catching exception in Java2 "+e.toString());
			}
		}		
		else if(in.equalsIgnoreCase("case5"))
		{
			deliveryCountCase5++;
			Jms.sendJMS(getBat520_out_jcf(), getBat520_out_jd(), in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase5);
			System.out.println(in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase5);
			throw new NullPointerException("**********  "+in+" deliveryCount "+deliveryCountCase5+"  **********");
		}
		else
		{
			doc = getNewWSDLFile().newOperation(parameters);			
		}
		
		return doc;
	}
	/**
	 * Implementation of the WSDL operation: NewOperationIn	 */
	public void newOperationIn(NewOperationInDocument parameters) {
		// Add the business logic here
		return;
	}

}
