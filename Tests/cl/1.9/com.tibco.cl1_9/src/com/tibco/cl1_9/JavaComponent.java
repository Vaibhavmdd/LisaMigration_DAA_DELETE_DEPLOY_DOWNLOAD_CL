package com.tibco.cl1_9;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.cl1_9.AbstractJavaComponent;
import com.tibco.cl1_9.JavaComponent;
import com.tibco.matrix.qa.wsdl.lotteryservice.LotteryPort;
import com.tibco.matrix.qa.xsd.lottery.OneToNinetyNine;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * Implementation of JavaComponent component.
 *
 */
public class JavaComponent extends AbstractJavaComponent {
	private Logger javaLogger = LoggerFactory.getLogger(JavaComponent.class);
	/**
	 * Initialization of JavaComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of JavaComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: GetNumber	 */
	public OneToNinetyNine getNumber(OneToNinetyNine part1) {
		// Add the business logic here
		Integer input=part1.getIntValue();
		javaLogger.info("The input 0109QA value:" + input);
		javaLogger.debug("Debug.say 0109QA log message in Java component");
		javaLogger.info("Info.say 0109QA log message in Java component");
		javaLogger.warn("Warn.say 0109QA log message in Java component");
		javaLogger.error("Error.say 0109QA log message in Java component");
		javaLogger.trace("Trace.say 0109QA log message in Java component");
		OneToNinetyNine resp=OneToNinetyNine.Factory.newInstance();
		resp.setIntValue(50);	
		return resp;
	}

}
