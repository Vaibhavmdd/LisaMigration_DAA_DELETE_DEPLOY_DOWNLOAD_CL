package com.sample.bat_5_13;

import javax.sql.DataSource;

import org.osoa.sca.annotations.Property;
import org.osoa.sca.annotations.Reference;

import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_13.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements HelloPT {

	private DataSource BAT_5_13_jdbc_1;

	@Property(name = "BAT_5_13_jdbc_1")
	public void setBAT_5_13_jdbc_1(DataSource BAT_5_13_jdbc_1) {
		this.BAT_5_13_jdbc_1 = BAT_5_13_jdbc_1;
	}

	public DataSource getBAT_5_13_jdbc_1() {
		return BAT_5_13_jdbc_1;
	}
	private DataSource BAT_5_13_jdbc_3;

	@Property(name = "BAT_5_13_jdbc_3")
	public void setBAT_5_13_jdbc_3(DataSource BAT_5_13_jdbc_3) {
		this.BAT_5_13_jdbc_3 = BAT_5_13_jdbc_3;
	}

	public DataSource getBAT_5_13_jdbc_3() {
		return BAT_5_13_jdbc_3;
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract void sayHello(HelloRequestDocument firstName);

	private HelloPT HelloPT;

	@Reference(name = "HelloPT")
	public void setHelloPT(HelloPT HelloPT) {
		this.HelloPT = HelloPT;
	}

	public HelloPT getHelloPT() {
		return this.HelloPT;
	}

}
