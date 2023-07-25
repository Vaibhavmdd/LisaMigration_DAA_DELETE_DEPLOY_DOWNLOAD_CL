package com.tibco.amx.it;

import com.example.xmlns.Company.sendCompanyMsgImpl.Services.Company;
import com.tibco.schemas.CompanyInfoDocument;


/**
 * Abstract interface generated for component "SpringComp".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.it.AbstractCompanyImpl AbstractCompanyImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractCompanyImpl implements Company {

	/**
	 * Implementation of the WSDL operation: sendCompanyMsg	 */
	public abstract void sendCompanyMsg(CompanyInfoDocument companyinfo);

}
