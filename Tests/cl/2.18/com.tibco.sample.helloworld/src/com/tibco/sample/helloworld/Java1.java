/**
 *
 */

package com.tibco.sample.helloworld;

import org.osoa.sca.annotations.Init;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
//import com.tibco.sample.helloworldcomposite.AbstractJava1;

import org.example.helloworld.SayHelloDocument;

import org.example.helloworld.SayHelloResponseDocument;

/**
 * Implementation of Java1 component.
 * 
 */
public class Java1 extends AbstractJava1 {

	private Logger logger = LoggerFactory.getLogger(Java1.class);
	
//	@Context
//	private ComponentContext componentContext;
//
//	public ComponentContext getComponentContext() {
//		return componentContext;
//	}
//
//	public void setComponentContext(ComponentContext componentContext) {
//		this.componentContext = componentContext;
//	}

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		logger.debug("init Java1 component");
		logger.info("init Java1 component");
		logger.warn("init Java1 component");
		logger.error("init Java1 component");
		logger.trace("init Java1 component");
	}

	/**
	 * Implementation of the WSDL operation: sayHello
	 */

	public SayHelloResponseDocument sayHello(SayHelloDocument parameters) {
		/**
		 * Note this a demo API just show how to get transaction ids in code
		 * level
		 * 
		 */
//		com.tibco.amf.platform.runtime.extension.context.RequestContext requestContext = (com.tibco.amf.platform.runtime.extension.context.RequestContext) componentContext
//				.getRequestContext();
//		String contextId = requestContext.getContextID();
//		String correlationId = requestContext.getCorrelationID();
//		String parentcontextId = requestContext.getParentContextID();
//
//		logger.debug("Trace IDS in Java1: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.info("Trace IDS in Java1: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.warn("Trace IDS in Java1: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.error("Trace IDS in Java1: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.trace("Trace IDS in Java1: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
		
		logger.debug("QA,debug.say hello 33 in Java1 component");
		logger.info("QA,info.say hello in 33 Java1 component");
		logger.warn("QA,warn.say hello in 33 Java1 component");
		logger.error("QA,error.say hello 33 in Java1 component");
		logger.trace("QA,trace.say hello 33 in Java1 component");

		String in = parameters.getSayHello().getIn();
		SayHelloResponseDocument document = SayHelloResponseDocument.Factory
				.newInstance();
		document.addNewSayHelloResponse();
		document.getSayHelloResponse().setOut("hello Java1," + in);
		return this.getHelloworld().sayHello(parameters);
	}

}
