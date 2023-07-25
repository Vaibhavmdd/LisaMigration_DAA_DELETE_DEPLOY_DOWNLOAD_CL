package com.tibco.qa.m6.globaltxn.testcase2.component2.java;

import org.osoa.sca.annotations.Property;
import javax.sql.DataSource;
import org.example.www.echoStringDF.EchoStringDF;
import org.example.echoStringDF.EchoDocument;
import org.example.echoStringDF.EchoResponseDocument;

/**
 * Abstract interface generated for component "Component2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.qa.m6.globaltxn.testcase2.component2.java.AbstractComponent2 AbstractComponent2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractComponent2 implements EchoStringDF {

	private DataSource jdbcsr3;

	@Property(name = "jdbcsr3")
	public void setJdbcsr3(DataSource jdbcsr3) {
		this.jdbcsr3 = jdbcsr3;
	}

	public DataSource getJdbcsr3() {
		return jdbcsr3;
	}

	/**
	 * Implementation of the WSDL operation: echo	 */
	public abstract EchoResponseDocument echo(EchoDocument parameters)
			throws org.example.www.echoStringDF.Echo_faultMsgException;

}
