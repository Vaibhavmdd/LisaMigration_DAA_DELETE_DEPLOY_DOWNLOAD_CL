package com.sample.bat_5_10;

import org.osoa.sca.annotations.Property;
import org.osoa.sca.annotations.Reference;
import com.tibco.amf.sharedresource.runtime.core.teneo.sharedresource.TeneoSessionFactory;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_10.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements HelloPT {

	private TeneoSessionFactory teneo;

	@Property(name = "teneo")
	public void setTeneo(TeneoSessionFactory teneo) {
		this.teneo = teneo;
	}

	public TeneoSessionFactory getTeneo() {
		return teneo;
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

	private HelloPT HelloPT;

	@Reference(name = "HelloPT")
	public void setHelloPT(HelloPT HelloPT) {
		this.HelloPT = HelloPT;
	}

	public HelloPT getHelloPT() {
		return this.HelloPT;
	}

}
