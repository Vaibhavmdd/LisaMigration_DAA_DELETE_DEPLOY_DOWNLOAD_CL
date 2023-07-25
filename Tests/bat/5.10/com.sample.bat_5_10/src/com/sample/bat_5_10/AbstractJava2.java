package com.sample.bat_5_10;

import org.osoa.sca.annotations.Property;
import javax.jms.ConnectionFactory;
import com.stc.jmsjca.tibco.JNDIConnectionFactoryConfiguration;
import javax.jms.Destination;
import com.stc.jmsjca.tibco.JNDIDestinationConfiguration;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_10.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements HelloPT {

	private ConnectionFactory jmsConnFactory;

	@Property(name = "jmsConnFactory")
	public void setJmsConnFactory(ConnectionFactory jmsConnFactory) {
		this.jmsConnFactory = jmsConnFactory;
	}

	public ConnectionFactory getJmsConnFactory() {
		return jmsConnFactory;
	}
	private JNDIConnectionFactoryConfiguration jmsConnFactoryConf;

	@Property(name = "jmsConnFactoryConf")
	public void setJmsConnFactoryConf(
			JNDIConnectionFactoryConfiguration jmsConnFactoryConf) {
		this.jmsConnFactoryConf = jmsConnFactoryConf;
	}

	public JNDIConnectionFactoryConfiguration getJmsConnFactoryConf() {
		return jmsConnFactoryConf;
	}
	private Destination jmsDest;

	@Property(name = "jmsDest")
	public void setJmsDest(Destination jmsDest) {
		this.jmsDest = jmsDest;
	}

	public Destination getJmsDest() {
		return jmsDest;
	}
	private JNDIDestinationConfiguration jmsDestConf;

	@Property(name = "jmsDestConf")
	public void setJmsDestConf(JNDIDestinationConfiguration jmsDestConf) {
		this.jmsDestConf = jmsDestConf;
	}

	public JNDIDestinationConfiguration getJmsDestConf() {
		return jmsDestConf;
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract HelloResponseDocument sayHello(
			HelloRequestDocument firstName);

}
