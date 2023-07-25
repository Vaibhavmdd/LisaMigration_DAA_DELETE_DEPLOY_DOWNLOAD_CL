package com.sample.bat_5_4_provider;

import com.tibco.matrix.qa.wsdl.address.AddressPort;
import com.tibco.matrix.qa.xsd.address.AddressElementDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_4_provider.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements AddressPort {

	/**
	 * Implementation of the WSDL operation: AddressOperation	 */
	public abstract AddressElementDocument addressOperation(
			AddressElementDocument inPart)
			throws com.tibco.matrix.qa.wsdl.address.Address_FaultException;

}
