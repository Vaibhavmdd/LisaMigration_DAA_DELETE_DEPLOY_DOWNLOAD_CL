package com.sample.bat82;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import soa.x1.x1.common.hc.sample.Sample;
import soa.x1.x1.common.hc.sample.NewOperationDocument;
import soa.x1.x1.common.hc.sample.NewOperationResponseDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(NewOperationDocument parameters) {
		
		NewOperationResponseDocument doc = this.getSample().newOperation(parameters);
		
		return doc;
	}

}
