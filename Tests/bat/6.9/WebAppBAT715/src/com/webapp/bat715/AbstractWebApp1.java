package com.webapp.bat715;

import javax.servlet.http.HttpServlet;
import org.osoa.sca.annotations.Reference;
import com.tibco.qa.wsdl.echoaddress.AddressPort;
import com.tibco.qa.xsd.address.AddressResponseType;
import com.tibco.qa.xsd.address.AddressRequestElementDocument;
import com.tibco.qa.xsd.address.AddressRequestType;
import com.tibco.qa.xsd.address.AddressResponseElementDocument;

/**
 * Abstract interface generated for component "WebApp1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.webapp.bat715.AbstractWebApp1 AbstractWebApp1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractWebApp1 extends HttpServlet {

	private AddressPort AddressPort1;

	@Reference(name = "AddressPort1")
	public void setAddressPort1(AddressPort AddressPort1) {
		this.AddressPort1 = AddressPort1;
	}

	public AddressPort getAddressPort1() {
		return this.AddressPort1;
	}

}
