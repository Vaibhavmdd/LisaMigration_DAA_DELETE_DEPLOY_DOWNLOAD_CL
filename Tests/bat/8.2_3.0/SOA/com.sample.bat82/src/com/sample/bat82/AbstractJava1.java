package com.sample.bat82;

import org.osoa.sca.annotations.Reference;
import soa.x1.x1.common.hc.sample.Sample;
import soa.x1.x1.common.hc.sample.NewOperationDocument;
import soa.x1.x1.common.hc.sample.NewOperationResponseDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat82.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements Sample {

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public abstract NewOperationResponseDocument newOperation(
			NewOperationDocument parameters);

	private Sample Sample;

	@Reference(name = "Sample")
	public void setSample(Sample Sample) {
		this.Sample = Sample;
	}

	public Sample getSample() {
		return this.Sample;
	}

}
