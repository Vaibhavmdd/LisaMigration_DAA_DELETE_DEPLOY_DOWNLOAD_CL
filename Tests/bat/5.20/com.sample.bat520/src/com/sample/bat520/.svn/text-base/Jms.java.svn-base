package com.sample.bat520;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;

public class Jms {

	public static void sendJMS(ConnectionFactory bat520_out_jcf,
			Destination bat520_out_jd, String value)
	{
		try
		{
			Connection connection = bat520_out_jcf.createConnection();
			System.out.println(connection);
			connection.start();
			System.out.println("----------Creating Jms Session----------");
			Session session = connection.createSession(false,
					Session.AUTO_ACKNOWLEDGE);
			System.out.println(session);
			MessageProducer producer = session.createProducer(bat520_out_jd);
			System.out.println(producer);
			TextMessage message = session.createTextMessage(value);
			System.out.println(message);
			System.out
					.println("----------Sending message to Destination----------");
			producer.send(message);
			System.out.println("Message Sent: " + message);
			producer.close();
			session.close();
			connection.close();
		}
		catch (JMSException e)
		{
			e.printStackTrace();
		}
	}
}