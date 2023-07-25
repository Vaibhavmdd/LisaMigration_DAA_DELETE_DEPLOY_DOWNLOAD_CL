package com.tibco.amx.cl2188;

import org.example.logmessage.LogMessage;
import org.example.logMessage.LogStringMessageDocument;
import org.example.logMessage.LogMapMessageDocument;
import org.example.logMessage.LogMapMessageResponseDocument;
import org.example.logMessage.LogStringMessageResponseDocument;

/**
 * Abstract interface generated for component "JavaComp".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.cl2188.AbstractJavaComp AbstractJavaComp}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJavaComp implements LogMessage {

	/**
	 * Implementation of the WSDL operation: logStringMessage	 */
	public abstract LogStringMessageResponseDocument logStringMessage(
			LogStringMessageDocument parameters);
	/**
	 * Implementation of the WSDL operation: logMapMessage	 */
	public abstract LogMapMessageResponseDocument logMapMessage(
			LogMapMessageDocument parameters);

}
