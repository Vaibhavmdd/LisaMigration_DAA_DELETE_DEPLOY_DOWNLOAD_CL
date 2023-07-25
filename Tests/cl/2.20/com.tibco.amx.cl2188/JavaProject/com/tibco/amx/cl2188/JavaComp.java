package com.tibco.amx.cl2188;

import java.util.HashMap;
import java.util.Map;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.apache.log4j.Logger;
import org.example.logMessage.LogStringMessageDocument;
import org.example.logMessage.LogMapMessageDocument;
import org.example.logMessage.LogMapMessageResponseDocument;
import org.example.logMessage.LogStringMessageResponseDocument;

/**
 * Implementation of JavaComp component.
 *
 */
public class JavaComp extends AbstractJavaComp {
	private Logger logger = Logger.getLogger(this.getClass());
	/**
	 * Initialization of JavaComp component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of JavaComp component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}
	
	public static void main(String[] args) {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < 10000; i++) {
			buffer.append("StringMessage");
		}
		System.out.println(buffer.toString());
		System.out.println(buffer.toString().length());
	}
	@Override
	
	/**
	 * Implementation of the WSDL operation: logStringMessage	 */
	public LogStringMessageResponseDocument logStringMessage(
			LogStringMessageDocument parameters) {
		// Add the business logic here
		int messageSize = parameters.getLogStringMessage().getMessageSize().intValue();
		System.out.println("message size: " + messageSize);
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < messageSize; i++) {
			buffer.append("StringMessage");
		}
		buffer.append("+MessageEnd");
		logger.info(buffer.toString());
		LogStringMessageResponseDocument document = LogStringMessageResponseDocument.Factory
				.newInstance();
		document.addNewLogStringMessageResponse().setOut("log successfully");
		return document;
	}
	
	/**
	 * Implementation of the WSDL operation: logMapMessage	 */
    @Override
	public LogMapMessageResponseDocument logMapMessage(
			LogMapMessageDocument parameters) {
		// Add the business logic here
		int messageSize = parameters.getLogMapMessage().getMessageSize().intValue();
		System.out.println("message size: " + messageSize);
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < messageSize; i++) {
			buffer.append("mapMessage");
		}
		buffer.append("+MessageEnd");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("_cl.msg", buffer.toString());
		logger.info(map);
		LogMapMessageResponseDocument document = LogMapMessageResponseDocument.Factory
				.newInstance();
		document.addNewLogMapMessageResponse().setOut("log successfully");
		return document;
	}

}
