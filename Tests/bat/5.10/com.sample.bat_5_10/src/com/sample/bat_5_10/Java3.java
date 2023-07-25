package com.sample.bat_5_10;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.tibco.www.SRTest.SRTest;
import com.tibco.srTest.SRTestRequestDocument;
import com.tibco.srTest.SRTestResponseDocument;
import com.tibco.srTest.SRTestRequestDocument.SRTestRequest;
import com.tibco.srTest.SRTestResponseDocument.SRTestResponse;

/**
 * Implementation of Java3 component.
 *
 */
public class Java3 extends AbstractJava3 {

	/**
	 * Initialization of Java3 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java3 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: SRTestOperation	 */
	public SRTestResponseDocument sRTestOperation(SRTestRequestDocument inParam) {
		// Add the business logic here
		SRTestRequest req = inParam.getSRTestRequest();
		String to = req.getToAddress();
		String from = req.getFromAddress();
		String text = req.getMessage();
		boolean smtp = false;
		String subject = "Mail from TIBCO";
		Session session = getSmtp();

		// Attempt to send message
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(
					to));
			message.setSubject(subject);
			message.setText(text);

			Transport.send(message);

			smtp = true;
		} catch (MessagingException e) {

			e.printStackTrace();
		}

		SRTestResponseDocument respDoc2 = getSRTest().sRTestOperation(inParam);
		System.out.println("---------Response returned from Java4---------");
		SRTestResponse resp = respDoc2.getSRTestResponse();
		String ldap = resp.getResult();
		
		
		// Prepare response
		SRTestResponseDocument responseDoc = SRTestResponseDocument.Factory
				.newInstance();
		SRTestResponse reply = responseDoc.addNewSRTestResponse();
		reply.setResult("Response for input message '" + text + "' returned:\n\tSending mail returned: " + smtp + "\n\t" + ldap);
		System.out.println("Response for input message '" + text + "' returned:\n\tSending mail returned: " + smtp + "\n\t" + ldap);
		responseDoc.setSRTestResponse(reply);

		return responseDoc;
	}

}
