package org.example.www.AllMEPsWSDLFile;


import org.example.www.AllMEPsWSDLFile.AllMEPsWSDLFile;
import org.example.allMEPsWSDLFile.NewOperationResponseDataDocument;
import org.example.allMEPsWSDLFile.NewOperationDataDocument;
 
/**
 * Implementation of Spring1 component.
 *
 */
public class AllMEPsWSDLFileImpl extends AbstractAllMEPsWSDLFileImpl {

	
	

	/**
	 * Initialization of Spring1 component.
	 */
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Spring1 component.
	 */
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: InOut	 */
	public NewOperationResponseDataDocument inOut(
			NewOperationDataDocument parameters) {
		// Add the business logic here
		
		
		System.out.println("***********Inside SPRING**************************");
		
		if (parameters.getNewOperationData().getIn().toString().trim().contains("BW_SERVER"))
		{	
		System.out.println("--------In out begin for BW server for Valid Response-----------");
		
		NewOperationResponseDataDocument inOut = getReference1().inOut(parameters);
		System.out.println(" Response from JMS Reference" + inOut.getNewOperationResponseData().getOut() );
		System.out.println("-------------In Out end for BW server for Valid Response-------------");
		return inOut;
		}
		else
		if (parameters.getNewOperationData().getIn().toString().trim().contains("JMS_JAVA")) 
		{
			System.out.println("--------In out begin for JMS JAVA-----------");		
			NewOperationResponseDataDocument inOut = getAllMEPsWSDLFile1().inOut(parameters);
			System.out.println(" Response from JMS Java" + inOut.getNewOperationResponseData().getOut() );
			System.out.println("-------------In Out end for JMS JAVA-------------");
			return inOut;  
		}
		else 
			if (parameters.getNewOperationData().getIn().toString().trim().contains("INVALID_RESPONSE")) 
			{
				System.out.println("--------In out begin for BW server for Invalid Response-----------");
				
				NewOperationResponseDataDocument inOut = getReference1().inOut(parameters);
				System.out.println(" Response from JMS Reference" + inOut.getNewOperationResponseData().getOut() );
				System.out.println("-------------In Out end for BW server for Invalid Response-------------");
				return inOut;
			}
		else
		{
			throw new RuntimeException("Runtime Exception from Spring" );
        		
		}
	}

}
