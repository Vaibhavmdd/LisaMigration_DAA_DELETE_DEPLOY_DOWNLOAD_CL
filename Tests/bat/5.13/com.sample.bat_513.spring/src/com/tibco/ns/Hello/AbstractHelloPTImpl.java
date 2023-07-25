package com.tibco.ns.Hello;

import org.osoa.sca.annotations.Property;
import org.osoa.sca.annotations.Reference;
import javax.sql.DataSource;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Spring1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.ns.Hello.AbstractHelloPTImpl AbstractHelloPTImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractHelloPTImpl implements HelloPT {

	private DataSource BAT_5_13_jbdc_2;

	public void setBAT_5_13_jbdc_2(DataSource BAT_5_13_jbdc_2) {
		this.BAT_5_13_jbdc_2 = BAT_5_13_jbdc_2;
	}

	public DataSource getBAT_5_13_jbdc_2() {
		return BAT_5_13_jbdc_2;
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract void sayHello(HelloRequestDocument firstName);

	private HelloPT HelloPT2;

	public void setHelloPT2(HelloPT HelloPT2) {
		this.HelloPT2 = HelloPT2;
	}

	public HelloPT getHelloPT2() {
		return this.HelloPT2;
	}

}
