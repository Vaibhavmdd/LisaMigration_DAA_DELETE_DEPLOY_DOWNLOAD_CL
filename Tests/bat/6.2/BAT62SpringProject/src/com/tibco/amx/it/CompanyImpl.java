package com.tibco.amx.it;

import com.tibco.schemas.CompanyInfoDocument;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Implementation of SpringComp component.
 *
 */
public class CompanyImpl extends AbstractCompanyImpl {
	private final Logger CompanyLogger = LoggerFactory.getLogger(CompanyImpl.class.getName());
	/**
	 * Initialization of SpringComp component.
	 */
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of SpringComp component.
	 */
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sendCompanyMsg	 */
	public void sendCompanyMsg(CompanyInfoDocument companyinfo) {
		// Add the business logic here
		CompanyLogger.info("INFO Message: The data flow go to spring component");
		CompanyLogger.warn("WARN Message: The data flow go to spring component");
		CompanyLogger.debug("DEBUG Message: The data flow go to spring component");
		CompanyLogger.error("ERROR Message: The data flow go to spring component");
		CompanyLogger.trace("TRACE Message: The data flow go to spring component");
		CompanyLogger.info("Hello " + companyinfo.getCompanyInfo().getName() + " in " + companyinfo.getCompanyInfo().getCity()); 	
	}

}
