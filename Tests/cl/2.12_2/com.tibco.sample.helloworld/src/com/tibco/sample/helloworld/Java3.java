/**
 *
 */

package com.tibco.sample.helloworld;

//import org.osoa.sca.annotations.Context;
import org.osoa.sca.annotations.Init;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
//import com.tibco.amf.platform.runtime.extension.context.ImplementationContext;
//import com.tibco.amf.platform.runtime.extension.context.RequestContext;
import com.tibco.sample.helloworld.AbstractJava3;

import org.example.helloworld.SayHelloDocument;

import org.example.helloworld.SayHelloResponseDocument;

/**
 * Implementation of Java3 component.
 * 
 */
public class Java3 extends AbstractJava3 {

	private Logger logger = LoggerFactory.getLogger(Java3.class);
	
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
	 * Initialization of Java3 component.
	 */
	@Init
	public void init() {

		logger.debug("init java3 component");
		logger.info("init java3 component");
		logger.warn("init java3 component");
		logger.error("init java3 component");
		logger.trace("init java3 component");
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
//		logger.debug("Trace IDS in java3: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.info("Trace IDS in java3: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.warn("Trace IDS in java3: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.error("Trace IDS in java3: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);
//		logger.trace("Trace IDS in java3: ContextID=" + contextId
//				+ " CorrelationId=" + correlationId + " ParentContextID="
//				+ parentcontextId);

		logger.debug("QA,debug.say hello in java3 component");
		logger.info("QA,info.say hello in java3 component");
		logger.warn("QA,warn.say hello in java3 component");
		logger.error("QA,error.say hello in java3 component");
		logger.trace("QA,trace.say hello in java3 component");

		String in = parameters.getSayHello().getIn();
		SayHelloResponseDocument document = SayHelloResponseDocument.Factory
				.newInstance();
		document.addNewSayHelloResponse();
		document.getSayHelloResponse().setOut("hello java3," + in);

		return document;
	}

}
