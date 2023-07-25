package com.sample.bat5212;

import org.example.bat521wsdl.BAT521WSDL;
import org.example.bat521WSDL.GreetOperationResponseDocument;
import org.example.bat521WSDL.GreetOperationDocument;

/**
 * Abstract interface generated for component "Java3".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat5212.AbstractJava3 AbstractJava3}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava3 implements BAT521WSDL {

	/**
	 * Implementation of the WSDL operation: GreetOperation	 */
	public abstract GreetOperationResponseDocument greetOperation(
			GreetOperationDocument inParam)
			throws org.example.bat521wsdl.GreetOperation_faultMsgException;

}
