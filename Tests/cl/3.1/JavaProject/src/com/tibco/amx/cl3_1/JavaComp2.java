package com.tibco.amx.cl3_1;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.xsd.address.AddressInfoDocument;
import com.tibco.matrix.qa.xsd.address.Address;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Implementation of JavaComp2 component.
 *
 */
public class JavaComp2 extends AbstractJavaComp2 {
	private Logger javaLogger = LoggerFactory.getLogger(JavaComp2.class);
	/**
	 * Initialization of JavaComp2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of JavaComp2 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: GetAddress	 */
	public Address getAddress(AddressInfoDocument request) {
		// Add the business logic here
		String inputState = request.getAddressInfo().getState();
		String inputCity = request.getAddressInfo().getCity();
		int inputZip = request.getAddressInfo().getZip();
		Address resp = Address.Factory.newInstance();
		String out = "The request info:"+ " " + inputState+ " " + inputCity+ " " + inputZip;
		resp.setStringValue(out);
		javaLogger.debug("debug log message in cl3_1 java component2");
		javaLogger.info("info log message in cl3_1 java component2");
		javaLogger.warn("warn log message in cl3_1 java component2");
		javaLogger.error("error log message in cl3_1 java component2");
		javaLogger.trace("trace log message in cl3_1 java component2");
        return resp;
	}

}
