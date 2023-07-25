package org.example.www.AllMEPsWSDLFile;

import org.osoa.sca.annotations.Reference;
import org.example.allmepswsdlfile.AllMEPsWSDLFile;
import org.example.allMEPsWSDLFile.NewOperationDataBinaryDocument;
import org.example.allMEPsWSDLFile.NewOperationResponseDataTextDocument;
import org.example.allMEPsWSDLFile.NewOperationResponseDataDocument;
import org.example.allMEPsWSDLFile.NewOperationDataDocument;

/**
 * Abstract interface generated for component "Spring1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link org.example.www.AllMEPsWSDLFile.AbstractAllMEPsWSDLFileImpl AbstractAllMEPsWSDLFileImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractAllMEPsWSDLFileImpl implements AllMEPsWSDLFile {

	/**
	 * Implementation of the WSDL operation: In	 */
	public abstract void in(NewOperationDataDocument parameters);
	/**
	 * Implementation of the WSDL operation: InOut	 */
	public abstract NewOperationResponseDataDocument inOut(
			NewOperationDataDocument parameters);
	/**
	 * Implementation of the WSDL operation: InOutFault	 */
	public abstract NewOperationResponseDataTextDocument inOutFault(
			NewOperationDataBinaryDocument parameters)
			throws org.example.allmepswsdlfile.NewOperationFaultException;

	private AllMEPsWSDLFile AllMEPsWSDLFileRef1;

	public void setAllMEPsWSDLFileRef1(AllMEPsWSDLFile AllMEPsWSDLFileRef1) {
		this.AllMEPsWSDLFileRef1 = AllMEPsWSDLFileRef1;
	}

	public AllMEPsWSDLFile getAllMEPsWSDLFileRef1() {
		return this.AllMEPsWSDLFileRef1;
	}

}
