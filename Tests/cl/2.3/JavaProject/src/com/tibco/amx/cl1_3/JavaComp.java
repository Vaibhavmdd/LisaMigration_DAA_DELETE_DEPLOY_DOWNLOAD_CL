package com.tibco.amx.cl1_3;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.xsd.lottery.OneToNinetyNine;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Implementation of JavaComp component.
 *
 */
public class JavaComp extends AbstractJavaComp {
	private Logger javaLogger = LoggerFactory.getLogger(JavaComp.class);
	/**
	 * Initialization of JavaComp component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of JavaComp component.
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
		javaLogger.info("The input value:" + input);
		javaLogger.debug("Debug.say log message in Java component");
		javaLogger.info("Info.say log message in Java component");
		javaLogger.warn("Warn.say log message in Java component");
		javaLogger.error("Error.say log message in Java component");
		javaLogger.trace("Trace.say log message in Java component");
		OneToNinetyNine resp=OneToNinetyNine.Factory.newInstance();
		resp.setIntValue(50);	
		return resp;
	}

}
