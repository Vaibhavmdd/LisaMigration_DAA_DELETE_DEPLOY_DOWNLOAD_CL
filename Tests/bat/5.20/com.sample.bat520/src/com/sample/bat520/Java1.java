package com.sample.bat520;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;
import org.example.newWSDLFile.NewOperationInDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {

	private static int deliveryCountCase2 = 0;
	private static int deliveryCountCase3 = 0;
	
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
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters)
			throws org.example.newwsdlfile.NewOperation_faultMsgException {
		// Add the business logic here
		
		String in = parameters.getNewOperation().getIn();
		NewOperationResponseDocument doc = null;
		
		if(in.equalsIgnoreCase("case1"))
		{
//			try
//			{
				doc = getNewWSDLFile().newOperation(parameters);				
//			}
//			catch (Exception e)
//			{
//				 do not propagate the exception from Java2
//				System.out.println("catching exception in Java1 "+e.toString());
//			}
		}
		else if(in.equalsIgnoreCase("case2"))
		{
			deliveryCountCase2 = deliveryCountCase2 % 5;	//expecting 5 redeliveries
			deliveryCountCase2++;
			Jms.sendJMS(getBat520_out_jcf(), getBat520_out_jd(), in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase2);
			System.out.println(in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase2);
			throw new NullPointerException("**********  "+in+" deliveryCount "+deliveryCountCase2+"  **********");
		}
		else if(in.equalsIgnoreCase("case3"))
		{
			deliveryCountCase3++;
			Jms.sendJMS(getBat520_out_jcf(), getBat520_out_jd(), in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase3);
			System.out.println(in+this.getClass().getSimpleName()+" deliveryCount "+deliveryCountCase3);
			if(deliveryCountCase3 >= 2)
			{
				throw new SecurityException("**********  "+in+" deliveryCount "+deliveryCountCase3+"  **********");				
			}
			else
			{
				throw new NullPointerException("**********  "+in+" deliveryCount "+deliveryCountCase3+"  **********");
			}
		}
		else if(in.equalsIgnoreCase("case4"))
		{
			try
			{
				doc = getNewWSDLFile().newOperation(parameters);				
			}
			catch (Exception e)
			{
//				 do not propagate the exception from Java2
				System.out.println("catching exception in Java1 "+e.toString());
			}
		}
		else
		{
			doc = getNewWSDLFile().newOperation(parameters);			
		}
		
		
		deliveryCountCase2 = 0;
		deliveryCountCase3 = 0;
		
		return doc;
	}
	/**
	 * Implementation of the WSDL operation: NewOperationIn	 */
	public void newOperationIn(NewOperationInDocument parameters) {
		// Add the business logic here
		return;
	}

}
