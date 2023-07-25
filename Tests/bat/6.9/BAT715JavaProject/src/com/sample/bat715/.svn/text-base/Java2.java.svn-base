package com.sample.bat715;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.qa.wsdl.echoaddress.AddressPort;
import com.tibco.qa.xsd.address.AddressResponseType;
import com.tibco.qa.xsd.address.AddressRequestElementDocument;
import com.tibco.qa.xsd.address.AddressRequestType;
import com.tibco.qa.xsd.address.AddressResponseElementDocument;
import com.tibco.qa.xsd.address.AddressResponseElementDocument.AddressResponseElement;

/**
 * Implementation of Java2 component.
 *
 */
public class Java2 extends AbstractJava2 {

	/**
	 * Initialization of Java2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java2 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: AddressElementOperation	 */
	public AddressResponseElementDocument addressElementOperation(
			AddressRequestElementDocument inPart)
			throws com.tibco.qa.wsdl.echoaddress.Address_FaultException {
		// Add the business logic here
		System.out.println(" ### Java IT called Element Operation ### ");
		System.out.println(" ### Request message ### ");
		System.out.println(inPart);
		
		AddressResponseElementDocument resdoc = AddressResponseElementDocument.Factory.newInstance();
		AddressResponseElement resele = AddressResponseElement.Factory.newInstance();
		
		resele.setName(inPart.getAddressRequestElement().getName());
		resele.setAddress(inPart.getAddressRequestElement().getAddress());
		resele.setCity(inPart.getAddressRequestElement().getCity());
		resele.setState(inPart.getAddressRequestElement().getState());
		resele.setZip(inPart.getAddressRequestElement().getZip());
		resdoc.setAddressResponseElement(resele);
		System.out.println(" ### Response message ### ");
		System.out.println(resdoc);
		
		return resdoc;
	}
	/**
	 * Implementation of the WSDL operation: AddressTypeOperation	 */
	public AddressResponseType addressTypeOperation(AddressRequestType inPart)
			throws com.tibco.qa.wsdl.echoaddress.Address_FaultException {
		// Add the business logic here
		System.out.println(" ### Java IT called Type Operation ### ");
		System.out.println(" ### Request message ### ");
		System.out.println(inPart);

		AddressResponseType restyp = AddressResponseType.Factory.newInstance();
				
		restyp.setName(inPart.getName());
		restyp.setAddress(inPart.getAddress());
		restyp.setCity(inPart.getCity());
		restyp.setState(inPart.getState());
		restyp.setZip(inPart.getZip());
		System.out.println(" ### Response message ### ");
		System.out.println(restyp);
		
		return restyp;
	}

}
