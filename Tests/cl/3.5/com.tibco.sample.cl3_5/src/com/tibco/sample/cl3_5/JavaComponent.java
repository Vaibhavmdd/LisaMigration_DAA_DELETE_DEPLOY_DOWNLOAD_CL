package com.tibco.sample.cl3_5;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.wsdl.lotteryservice.LotteryPort;
import com.tibco.matrix.qa.xsd.lottery.OneToNinetyNine;
import com.tibco.sample.cl3_5.JavaComponent;
import com.tibco.sample.cl3_5.AbstractJavaComponent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class JavaComponent extends AbstractJavaComponent {
		private Logger javaLogger = LoggerFactory.getLogger(JavaComponent.class);
	/**
	 * Initialization of JavaComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
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
		javaLogger.info("The input 3_5QA value:" + input);
		javaLogger.debug("Debug.say 3_5QA log message in Java component");
		javaLogger.info("Info.say 3_5QA log message in Java component");
		javaLogger.warn("Warn.say 3_5QA log message in Java component");
		javaLogger.error("Error.say 3_5QA log message in Java component");
		javaLogger.trace("Trace.say 3_5QA log message in Java component");
		OneToNinetyNine resp=OneToNinetyNine.Factory.newInstance();
		resp.setIntValue(50);	
		return resp;
	}

}
