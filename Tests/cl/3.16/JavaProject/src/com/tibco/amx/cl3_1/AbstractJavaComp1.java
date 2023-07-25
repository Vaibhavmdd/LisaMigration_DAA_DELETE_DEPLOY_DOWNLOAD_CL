package com.tibco.amx.cl3_1;

import org.osoa.sca.annotations.Reference;
import service.web.com.soap.http.amxservice.addressservice.AddressPort;
import com.tibco.matrix.qa.xsd.address.AddressInfoDocument;
import com.tibco.matrix.qa.xsd.address.Address;

/**
 * Abstract interface generated for component "JavaComp1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.cl3_1.AbstractJavaComp1 AbstractJavaComp1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJavaComp1 implements AddressPort {

	/**
	 * Implementation of the WSDL operation: GetAddress	 */
	public abstract Address getAddress(AddressInfoDocument request);

	private AddressPort AddressPort;

	@Reference(name = "AddressPort")
	public void setAddressPort(AddressPort AddressPort) {
		this.AddressPort = AddressPort;
	}

	public AddressPort getAddressPort() {
		return this.AddressPort;
	}

}
