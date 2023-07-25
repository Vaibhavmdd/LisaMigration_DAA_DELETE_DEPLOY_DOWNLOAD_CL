package com.sample.loggernametest;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.NewWSDLFile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {
	
	Logger loggerApp;
	Logger loggerNode;

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
		loggerApp=LogManager.getLogger("appLoggerQA");
		loggerNode=LogManager.getLogger("nodeLoggerQA");
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters) {
		// Add the business logic here
		loggerApp.info("[Test] App info log!");
		loggerApp.trace("[Test] App trace log!");
		loggerApp.debug("[Test] App debug log!");
		loggerApp.warn("[Test] App warn log!");
		loggerApp.error("[Test] App error log!");
		loggerNode.trace("[Test] Node trace log!");
		loggerNode.debug("[Test] Node debug log!");
		loggerNode.info("[Test] Node info log!");
		loggerNode.warn("[Test] Node warn log!");
		loggerNode.error("[Test] Node error log!");
		return null;
	}

}
