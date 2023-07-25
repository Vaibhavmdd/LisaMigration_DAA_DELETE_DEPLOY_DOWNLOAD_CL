package com.tibco.amx.cl3_1;

import com.tibco.matrix.qa.wsdl.addressservice.AddressPort;
import com.tibco.matrix.qa.xsd.address.AddressInfoDocument;
import com.tibco.matrix.qa.xsd.address.Address;

/**
 * Abstract interface generated for component "JavaComp2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.cl3_1.AbstractJavaComp2 AbstractJavaComp2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJavaComp2 implements AddressPort {

	/**
	 * Implementation of the WSDL operation: GetAddress	 */
	public abstract Address getAddress(AddressInfoDocument request);

}
