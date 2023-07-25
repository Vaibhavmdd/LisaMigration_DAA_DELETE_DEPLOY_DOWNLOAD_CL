package com.sample.bat_52_soa_jmsjava;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.www.AllMEPsWSDLFile.AllMEPsWSDLFile;
import org.example.allMEPsWSDLFile.NewOperationResponseDataDocument;
import org.example.allMEPsWSDLFile.NewOperationDataDocument;
import org.example.allMEPsWSDLFile.NewOperationResponseDataDocument.NewOperationResponseData;

/**
 * Implementation of NewComponent component.
 *
 */
public class NewComponent extends AbstractNewComponent {

	/**
	 * Initialization of NewComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of NewComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: InOut	 */
	public NewOperationResponseDataDocument inOut(
			NewOperationDataDocument parameters) {
		// Add the business logic here
		System.out.println("************************");
		System.out.println("--------In Parameter JMS Java------" + parameters);
		
		
		NewOperationResponseDataDocument outresponse = NewOperationResponseDataDocument.Factory.newInstance();
		NewOperationResponseData newOperationResponseData=NewOperationResponseData.Factory.newInstance();
		
		newOperationResponseData.setOut(parameters.getNewOperationData().getIn().toString());
		outresponse.setNewOperationResponseData(newOperationResponseData);
	
		System.out.println("*************************");
		return outresponse;
	}

}
