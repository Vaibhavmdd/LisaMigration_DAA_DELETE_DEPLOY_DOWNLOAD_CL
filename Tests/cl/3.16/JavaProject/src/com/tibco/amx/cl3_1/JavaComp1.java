package com.tibco.amx.cl3_1;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.xsd.address.AddressInfoDocument;
import com.tibco.matrix.qa.xsd.address.Address;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Implementation of JavaComp1 component.
 *
 */
public class JavaComp1 extends AbstractJavaComp1 {
	private Logger javaLogger = LoggerFactory.getLogger(JavaComp1.class);
	/**
	 * Initialization of JavaComp1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of JavaComp1 component.
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
		javaLogger.debug("debug log message in cl3_1 java component1");
		javaLogger.info("info log message in cl3_1 java component1");
		javaLogger.warn("warn log message in cl3_1 java component1");
		javaLogger.error("error log message in cl3_1 java component1");
		javaLogger.trace("trace log message in cl3_1 java component1");
        return this.getAddressPort().getAddress(request);
	}

}
