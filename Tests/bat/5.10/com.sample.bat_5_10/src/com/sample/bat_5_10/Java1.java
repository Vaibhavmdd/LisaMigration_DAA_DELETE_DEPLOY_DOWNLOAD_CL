package com.sample.bat_5_10;

import java.text.MessageFormat;

import org.eclipse.emf.ecore.EPackage;
import org.example.weathersample.WeatherReport;
import org.example.weathersample.WeathersampleFactory;
import org.example.weathersample.WeathersamplePackage;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tibco.amf.sharedresource.runtime.core.teneo.sharedresource.TeneoSessionFactory;
import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloResponseDocument;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		if (this.getTeneo() == null) {
            throw new IllegalStateException("Failed to inject TeneoSessionFactory");
        }
		else{
			System.out.println("----------Successfully injected TeneoSessionFactory----------");
			this.getTeneo().addEPackages(new EPackage[]{WeathersamplePackage.eINSTANCE});
			saveWeatherReport("Sunnyvale", "CA", "94086", "Sunny...", 92.7f, 65.3f);
        }
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
		if (this.getTeneo() != null) {
            this.getTeneo().removeEPackages(new EPackage[]{WeathersamplePackage.eINSTANCE});
        }
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public HelloResponseDocument sayHello(HelloRequestDocument firstName) {
		// Add the business logic here
		System.out.println("----------Forwarding request to Java2----------");
        HelloResponseDocument resDoc2 = getHelloPT().sayHello(firstName);
		
		System.out.println("----------Inside Java1----------");
		HelloResponseDocument resDoc = HelloResponseDocument.Factory.newInstance();
		
		System.out.println("----------Fetching data from WEATHERREPORT using Teneo----------");
		String rep1 = getWeatherReport("94086");
        
        System.out.println("----------Concatenating response from Teneo and Jms----------");
        resDoc.setHelloResponse("\n\t Response from Teneo is: " + rep1 + "\n\t Response from Jms is: " + resDoc2.getHelloResponse());
        
        return resDoc;
	}
	
	private String getWeatherReport(String zip) {
		 final Session session = this.getTeneo().openSession();
		 try {
          // Note that this sample does NOT show AMF managing the transaction for the service.
          Transaction tx = session.beginTransaction(); // Need to begin the transaction before any queries are made. Closing the session will clean up the transaction.
          final Query query = session.createQuery("FROM WeatherReport WHERE zip = ?");
          query.setParameter(0, zip);
          WeatherReport report = (WeatherReport)query.uniqueResult();
          tx.commit();
          logger.info(MessageFormat.format("----------Forecast for ''{0}, {1} {2}'' is {3}.----------",
                  new Object[]{
          		report.getCity(),
          		report.getState(),
          		report.getZip(),
                  report.getForecast()}));
          String resp = MessageFormat.format("Forecast for ''{0}, {1} {2}'' is {3}.",
                  new Object[]{
             		report.getCity(),
             		report.getState(),
             		report.getZip(),
                     report.getForecast()});
          return resp;
         } finally {
	            session.close();
	     }
	}

	private void saveWeatherReport(String city, String state, String zip, String forecast, float high, float low) {
		 final Session session = this.getTeneo().openSession();
		 try {
          // Note that this sample does NOT show AMF managing the transaction for the service.
          Transaction tx = session.beginTransaction(); // Need to begin the transaction before any queries are made. Closing the session will clean up the transaction.
          WeatherReport report = WeathersampleFactory.eINSTANCE.createWeatherReport();
          report.setCity(city);
          report.setState(state);
          report.setZip(zip);
          report.setForecast(forecast);
          report.setHigh(high);
          report.setLow(low);
          session.save(report);
          tx.commit();
          logger.info("----------Sucessfully saved the WeatherReport----------");
		 }finally {
	            session.close();
	     }
	}

}
