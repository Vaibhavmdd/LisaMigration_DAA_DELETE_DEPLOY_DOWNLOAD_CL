package org.example.www.AllMEPsWSDLFile;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.allmepswsdlfile.AllMEPsWSDLFile;
import org.example.allMEPsWSDLFile.NewOperationDataBinaryDocument;
import org.example.allMEPsWSDLFile.NewOperationResponseDataTextDocument;
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
	 * Implementation of the WSDL operation: In	 */
	public void in(NewOperationDataDocument parameters) {
		// Add the business logic here
		return;
	}
	/**
	 * Implementation of the WSDL operation: InOut	 */
	public NewOperationResponseDataDocument inOut(
			NewOperationDataDocument parameters) {
		System.out.println("***** IN Spring Component *******");
		return this.getAllMEPsWSDLFileRef1().inOut(parameters);
	}
	/**
	 * Implementation of the WSDL operation: InOutFault	 */
	public NewOperationResponseDataTextDocument inOutFault(
			NewOperationDataBinaryDocument parameters)
			throws org.example.allmepswsdlfile.NewOperationFaultException {
		// Add the business logic here
		return null;
	}

}
