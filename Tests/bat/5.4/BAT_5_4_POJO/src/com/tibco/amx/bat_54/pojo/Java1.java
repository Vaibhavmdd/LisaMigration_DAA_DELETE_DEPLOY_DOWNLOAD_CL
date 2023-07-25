package com.tibco.amx.bat_54.pojo;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.matrix.qa.wsdl.address.Address_FaultException;
import com.tibco.matrix.qa.wsdl.address_gen.AddressPort;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.Hello.HelloRequest_FaultException;
import com.tibco.matrix.qa.xsd.address.AddressElementDocument;
import com.tibco.matrix.qa.xsd.address.AddressElementDocument.AddressElement;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;
import com.tibco.ns.hello.InputStringDocument;
import com.tibco.ns.hello.FaultElementDocument.FaultElement;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends com.sample.bat_5_4_consumer.AbstractJava1 {

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	@Override
	public HelloResponseDocument sayHello(InputStringDocument inputString,
			HelloRequestDocument firstName) throws HelloRequest_FaultException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		// Add the business logic here
		// Add the business logic here
		String input = inputString.getInputString();
		final String name = firstName.getHelloRequest();
		System.out.println("POJO1 : Received Request for input : " + input + " for name :" + name );

		// Try undeclared / system fault
		if (input.equalsIgnoreCase("Consumer-UndeclaredFault")) {
			int i = 9 / 0;
		}

		AddressElementDocument aedoc = AddressElementDocument.Factory
		.newInstance();
		AddressElement ae = aedoc.addNewAddressElement();
		ae.setAddress("3301 Hillview Ave");
		ae.setCity(input);
		ae.setName(name);
		ae.setState("CA");
		ae.setZip(94403);
		aedoc.setAddressElement(ae);

		try {
				this.getAddressPort().addressOperation(aedoc);
		} catch (com.tibco.matrix.qa.wsdl.address_gen.Address_FaultException e) {
			// TODO Auto-generated catch block
			com.tibco.ns.hello.FaultElementDocument fault = com.tibco.ns.hello.FaultElementDocument.Factory.newInstance();
			FaultElement faultElement = FaultElement.Factory.newInstance();
			faultElement.setFaultString("DeclaredFault from Consumer");
			fault.setFaultElement(faultElement); 
			throw new HelloRequest_FaultException(e.getMessage(), fault);
		}

		final HelloResponseDocument document = HelloResponseDocument.Factory.newInstance();
    	document.setHelloResponse("Hi " + name);
    	return document;
	}
}
