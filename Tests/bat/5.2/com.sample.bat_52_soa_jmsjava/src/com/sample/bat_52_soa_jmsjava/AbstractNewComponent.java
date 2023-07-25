package com.sample.bat_52_soa_jmsjava;

import org.example.www.AllMEPsWSDLFile.AllMEPsWSDLFile;
import org.example.allMEPsWSDLFile.NewOperationResponseDataDocument;
import org.example.allMEPsWSDLFile.NewOperationDataDocument;

/**
 * Abstract interface generated for component "NewComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_52_soa_jmsjava.AbstractNewComponent AbstractNewComponent}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractNewComponent implements AllMEPsWSDLFile {

	/**
	 * Implementation of the WSDL operation: InOut	 */
	public abstract NewOperationResponseDataDocument inOut(
			NewOperationDataDocument parameters);

}
