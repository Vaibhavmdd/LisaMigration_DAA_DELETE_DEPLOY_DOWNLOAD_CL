package com.sample.bat_5_4_consumer;

import org.osoa.sca.annotations.Reference;
import com.tibco.matrix.qa.wsdl.address_gen.AddressPort;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.InputStringDocument;
import com.tibco.matrix.qa.xsd.address.AddressElementDocument;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_4_consumer.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements HelloPT {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			InputStringDocument inputString, HelloRequestDocument firstName)
			throws com.tibco.ns.Hello.HelloRequest_FaultException;

	private AddressPort AddressPort;

	@Reference(name = "AddressPort")
	public void setAddressPort(AddressPort AddressPort) {
		this.AddressPort = AddressPort;
	}

	public AddressPort getAddressPort() {
		return this.AddressPort;
	}

}
