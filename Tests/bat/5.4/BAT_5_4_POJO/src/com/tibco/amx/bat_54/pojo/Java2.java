package com.tibco.amx.bat_54.pojo;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.wsdl.address.AddressPort;
import com.tibco.matrix.qa.wsdl.address.Address_FaultException;
import com.tibco.matrix.qa.xsd.address.AddressElementDocument;
import com.tibco.matrix.qa.xsd.address.AddressElementDocument.AddressElement;

/**
 * Implementation of Java2 component.
 *
 */
public class Java2 extends com.sample.bat_5_4_provider.AbstractJava2 {

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
	 * Implementation of the WSDL operation: AddressOperation	 */
	public AddressElementDocument addressOperation(AddressElementDocument inPart)
			throws com.tibco.matrix.qa.wsdl.address.Address_FaultException {
		// Add the business logic here
		// Add the business logic here
		// Add the business logic here
		String address = inPart.getAddressElement().getAddress();
		String name = inPart.getAddressElement().getName();
		String input = inPart.getAddressElement().getCity();
		String state = inPart.getAddressElement().getState();
		int zip = inPart.getAddressElement().getZip();

		System.out.println("City is " + input + "--" + name + "--" + address
				+ "--" + state + "--" + zip);

		if (input.contains("DeclaredFaultCity"))
			throw new Address_FaultException("DeclaredFaultCity fault for name :" + name, inPart);

		if (input.contains("NoDetailCity"))
			throw new Address_FaultException("NoDetailCity fault for name :" + name, AddressElementDocument.Factory.newInstance());

		if (input.contains("UndeclaredFaultCity")) {
			int i = 9 / 0;
		}

		//if (name.equalsIgnoreCase("print")) {
		//	printAddressingProperties();
		//}	

		AddressElementDocument response = AddressElementDocument.Factory
				.newInstance();
		AddressElement ae = response.addNewAddressElement();
		ae.setAddress(address);
		ae.setCity(input);
		ae.setName(name);
		ae.setState(state);
		ae.setZip(zip);
		response.setAddressElement(ae);

		return response;

	}

}
