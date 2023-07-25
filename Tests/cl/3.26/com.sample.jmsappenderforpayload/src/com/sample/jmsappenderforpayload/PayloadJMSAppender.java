package com.sample.jmsappenderforpayload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.activation.MimetypesFileTypeMap;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.example.asyncappender.AsyncAppender;
import org.example.asyncAppender.TestAsyncAppenderResponseDocument;
import org.example.asyncAppender.TestAsyncAppenderDocument;


/**
 * Implementation of PayloadJMSAppender component.
 * 
 */
public class PayloadJMSAppender extends AbstractPayloadJMSAppender {

	private final static String PAYLOAD_FILE = "payload.xml";

	private Logger logger;

	/**
	 * Initialization of PayloadJMSAppender component.
	 */
	@Init
	public void init() {
		logger = LogManager.getLogger("com.tibco");
		
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of PayloadJMSAppender component.
	 */
	@Destroy
	public void destroy() {
		logger = null;
	}

	/**
	 * Implementation of the WSDL operation: testAsyncAppender
	 */
	public TestAsyncAppenderResponseDocument testAsyncAppender(
			TestAsyncAppenderDocument parameters) {

		String payloadString=" For each file to be installed, the following attributes need to be added: src, dest, perm, plat"+ 
        " location of where source file is located"+ 
          " dest - relative location of where source file should be installed on the machine under PRODUCT_HOME"+
          " perm - permission of file to set and preserve when installed on machine ";
		
		byte payloadBinary[]=payloadString.getBytes();
	/*	File payloadFile = new File(PAYLOAD_FILE);
		InputStream is = null;
		byte[] payloadBinary = null;
		try {
			is = new FileInputStream(payloadFile);
			payloadBinary = new byte[(int) payloadFile.length()];
			is.read(payloadBinary);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (is != null)
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}*/

		/** Generate payload key */
		String payloadKey = UUID.randomUUID().toString();

		/**
		 * Prepare log record. For detail keys and specification in map, pl.
		 * refer to: http://wiki.tibco.com/DataIntWiki/logging/LoggingModels
		 * 
		 */
		HashMap<String, Object> logMap = new HashMap<String, Object>();

		logMap.put("_cl.msgId ", "dummyMessageId");
		logMap.put("_cl.msg", "dummy message");

		// construct payload array which can contain more than one payload data
		// for one log record.
		@SuppressWarnings("rawtypes")
		List<Object> payloads = new ArrayList<Object>();

		// create one payload data.
		HashMap<String, Object> payloadA = new HashMap<String, Object>();

		payloadA.put("_cl.payload.id", payloadKey);

		payloadA.put("_cl.payload.data", payloadBinary);

		payloadA.put("_cl.payload.name", PAYLOAD_FILE);
		payloadA.put("_cl.payload.type", "payload");
		payloadA.put("_cl.payload.size", payloadString.length());
		payloadA.put("_cl.payload.MD5",
				"This is MD5 value of payload binary data. ");
		payloadA.put("_cl.payload.TTL", "100");

		// Add one payload record into list.
		payloads.add(payloadA);

		/** Put payload key into log record */
		logMap.put("_cl.payloads", payloads);

		if (logger.isInfoEnabled()) {
			logger.info(logMap);
		}

		String in = parameters.getTestAsyncAppender().getIn();
		TestAsyncAppenderResponseDocument doc = TestAsyncAppenderResponseDocument.Factory
				.newInstance();
		doc.addNewTestAsyncAppenderResponse();
		doc.getTestAsyncAppenderResponse().setOut(
				"You soap messeger" + in + " is success");
		return doc;
	}

}
