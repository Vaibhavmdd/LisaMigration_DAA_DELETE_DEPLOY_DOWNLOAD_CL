package com.tibco.qa.m6.globaltxn.testcase2.component1.java;

import org.osoa.sca.annotations.Property;
import org.osoa.sca.annotations.Reference;
import javax.sql.DataSource;
import org.example.www.echoStringDF.EchoStringDF;
import org.example.echoStringDF.EchoDocument;
import org.example.echoStringDF.EchoResponseDocument;

/**
 * Abstract interface generated for component "Component1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.qa.m6.globaltxn.testcase2.component1.java.AbstractComponent1 AbstractComponent1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractComponent1 implements EchoStringDF {

	private DataSource jdbcsr1;

	@Property(name = "jdbcsr1")
	public void setJdbcsr1(DataSource jdbcsr1) {
		this.jdbcsr1 = jdbcsr1;
	}

	public DataSource getJdbcsr1() {
		return jdbcsr1;
	}
	private DataSource jdbcsr2;
	


	@Property(name = "jdbcsr2")
	public void setJdbcsr2(DataSource jdbcsr2) {
		this.jdbcsr2 = jdbcsr2;
	}

	public DataSource getJdbcsr2() {
		return jdbcsr2;
	}

	/**
	 * Implementation of the WSDL operation: echo	 */
	public abstract EchoResponseDocument echo(EchoDocument parameters)
			throws org.example.www.echoStringDF.Echo_faultMsgException;

	private EchoStringDF echoStringDF;

	@Reference(name = "echoStringDF")
	public void setEchoStringDF(EchoStringDF echoStringDF) {
		this.echoStringDF = echoStringDF;
	}

	public EchoStringDF getEchoStringDF() {
		return this.echoStringDF;
	}

}
