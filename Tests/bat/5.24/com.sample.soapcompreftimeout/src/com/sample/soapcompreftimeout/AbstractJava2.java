package com.sample.soapcompreftimeout;

import org.osoa.sca.annotations.Reference;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.soapcompreftimeout.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements NewWSDLFile {

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public abstract NewOperationResponseDocument newOperation(
			NewOperationDocument parameters);

	private NewWSDLFile NewWSDLFile;

	@Reference(name = "NewWSDLFile")
	public void setNewWSDLFile(NewWSDLFile NewWSDLFile) {
		this.NewWSDLFile = NewWSDLFile;
	}

	public NewWSDLFile getNewWSDLFile() {
		return this.NewWSDLFile;
	}

}
