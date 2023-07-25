package com.sample.soapcompreftimeout;

import org.osoa.sca.annotations.Property;
import org.example.newWSDLFile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;

/**
 * Abstract interface generated for component "Java3".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.soapcompreftimeout.AbstractJava3 AbstractJava3}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava3 implements NewWSDLFile {

	private int t2;

	@Property(name = "t2")
	public void setT2(int t2) {
		this.t2 = t2;
	}

	public int getT2() {
		return t2;
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public abstract NewOperationResponseDocument newOperation(
			NewOperationDocument parameters);

}
