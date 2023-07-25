package com.sample.bat_5_10;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.JMSException;
import javax.jms.MessageConsumer;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;

import com.stc.jmsjca.tibco.JNDIConnectionFactoryConfiguration;
import javax.jms.Destination;
import com.stc.jmsjca.tibco.JNDIDestinationConfiguration;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of Java2 component.
 *
 */
public class Java2 extends AbstractJava2 {

	/**
	 * Initialization of Java2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java2 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName) {
		// Add the business logic here
		System.out.println("----------Inside Java2----------");
		HelloResponseDocument resDoc = HelloResponseDocument.Factory.newInstance();
		resDoc.setHelloResponse("defaultResponse");
		
		try {
			Connection connection = getJmsConnFactory().createConnection();
			System.out.println(connection);
			connection.start();
			System.out.println("----------Creating Jms Session----------");
			Session session = connection.createSession(false,
					Session.AUTO_ACKNOWLEDGE);
			System.out.println(session);
			MessageProducer producer = session.createProducer(getJmsDest());
			System.out.println(producer);
			TextMessage message = session.createTextMessage(firstName.getHelloRequest());
			System.out.println(message);
			System.out.println("----------Sending message to Destination----------");
			producer.send(message);
			System.out.println("Message Sent: " + message);
			producer.close();
			MessageConsumer consumer = session.createConsumer(getJmsDest());
			System.out.println("----------Receiving message from Destination----------");
			TextMessage receive = (TextMessage)consumer.receive();
			System.out.println("Message Received: " + receive.getText());
			consumer.close();
			connection.close();
			
			resDoc.setHelloResponse(receive.getText());
			
		} catch (JMSException e) {
			e.printStackTrace();
		}
		
		return resDoc;
	}

}
