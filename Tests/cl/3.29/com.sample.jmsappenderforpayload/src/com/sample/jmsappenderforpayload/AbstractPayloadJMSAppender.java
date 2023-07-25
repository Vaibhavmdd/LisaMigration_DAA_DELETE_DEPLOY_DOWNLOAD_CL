package com.sample.jmsappenderforpayload;

import org.example.asyncappender.AsyncAppender;
import org.example.asyncAppender.TestAsyncAppenderResponseDocument;
import org.example.asyncAppender.TestAsyncAppenderDocument;

/**
 * Abstract interface generated for component "PayloadJMSAppender".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.jmsappenderforpayload.AbstractPayloadJMSAppender AbstractPayloadJMSAppender}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractPayloadJMSAppender implements AsyncAppender {

	/**
	 * Implementation of the WSDL operation: testAsyncAppender	 */
	public abstract TestAsyncAppenderResponseDocument testAsyncAppender(
			TestAsyncAppenderDocument parameters);

}
