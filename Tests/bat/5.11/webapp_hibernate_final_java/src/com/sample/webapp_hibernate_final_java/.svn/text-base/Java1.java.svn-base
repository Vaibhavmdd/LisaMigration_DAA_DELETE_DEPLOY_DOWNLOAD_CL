/**
 *
 */
package com.sample.webapp_hibernate_final_java;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Property;

//import com.sample.webapp_hibernate_final_java.AbstractJava1;
import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Property;

import com.sample.webapp_hibernate_final_java.WeatherReport;
import com.tibco.amf.sharedresource.runtime.core.hibernate.AMFTibcoHostTransactionManagerLookup;
import com.tibco.amf.sharedresource.runtime.core.hibernate.sharedresource.ProxySessionFactory;
import java.lang.String;
import org.example.www.WeatherService.AddWeatherReportPT;

import org.example.weatherschema.AddWeatherRequestType;
import org.example.weatherschema.AddWeatherResponseDocument;
import org.example.weatherschema.AddWeatherRequestDocument;

import java.text.MessageFormat;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.osoa.sca.annotations.Destroy;
import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Property;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.transaction.UserTransaction;
import javax.naming.InitialContext;

/**
 * Implementation of Java1 component.
 * 
 */
public class Java1 implements AddWeatherReportPT {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private UserTransaction m_userTxn = null;
	private String m_userTransactionJNDIName = null;

	private void getUserTransaction() {
		if (m_userTxn != null)
			return;
		if (m_userTransactionJNDIName == null) {
			m_userTransactionJNDIName = new AMFTibcoHostTransactionManagerLookup()
					.getUserTransactionName();
		}
		logger
				.info("JDBC demo: trying to get user transaction, userTransactionJndiName is "
						+ m_userTransactionJNDIName);
		try {
			m_userTxn = (UserTransaction) new InitialContext()
					.lookup(m_userTransactionJNDIName);
			logger.info("JDBC demo: user txn is " + m_userTxn);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public WeatherReport getWeatherReport(String zipCode) {
		WeatherReport report = null;
		final Session session = this.hibernateSessionFactory.openSession();
		try {
			// m_userTxn.begin();
			// Note that this sample does NOT show AMF managing the transaction
			// for the service.
			Transaction txn = session.beginTransaction(); // Need to begin the
															// transaction
															// before any
															// queries are made.
															// Closing the
															// session will
															// clean up the
															// transaction.
			final Query query = session
					.createQuery("FROM WeatherReport WHERE zip = ?");
			query.setParameter(0, zipCode);
			report = (WeatherReport) query.uniqueResult();
			txn.rollback();
			// m_userTxn.rollback();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
		if (report == null) {
			report = new WeatherReport();
			report.setForecast(MessageFormat.format(
					"No weather report for city with zip ''{0}''.", zipCode));
			report.setHigh("0.0f");
			report.setLow("0.0f");
		} else {
			report.setForecast(MessageFormat.format(
					"Forecast for city ''{0}, {1} {2}'' is {3}.", new Object[] {
							report.getCity(), report.getState(),
							report.getZip(), report.getForecast() }));
			report.setHigh(report.getHigh());
			report.setLow(report.getLow());
		}
		return report;

	}

	/**
	 * Initialization of Java1 component.
	 */

	@Init
	public void init() {
		logger
				.info("JDBC Demo: Entered MyInit, will call getUserTransaction\n\n\n\n\n\n\n\n\n\n\n");
		getUserTransaction();
		if (this.hibernateSessionFactory == null) {
			if (logger.isErrorEnabled()) {
				logger.error("Failed to inject ProxySessionFactory.");
			}
			throw new IllegalStateException(
					"Failed to inject ProxySessionFactory");
		}
		this.hibernateSessionFactory.addClass(WeatherReport.class);

		if (logger.isInfoEnabled()) {
			logger
					.info("About to begin populating the database with weather reports...");
		}
		populateWeatherData();

		if (logger.isInfoEnabled()) {
			logger
					.info(
							"Obtaining the weather reaport for the city with zip ''{0}''",
							zipCode);
		}
		WeatherReport weatherReport = getWeatherReport(zipCode);
		if (logger.isInfoEnabled()) {
			logger.info(weatherReport.getForecast());
		}
	}

	@Destroy
	public void myDestroy() {
		if (this.hibernateSessionFactory != null) {
			this.hibernateSessionFactory.removeClass(WeatherReport.class);
		}
	}

	public void populateWeatherData() {
		try {
			// Report the weather in Sunnyvale.
			WeatherReport weatherRequest = new WeatherReport();
			weatherRequest.setCity("Sunnyvale");
			weatherRequest.setState("CA");
			weatherRequest.setZip("94089");
			weatherRequest.setForecast("Sunny");
			weatherRequest.setHigh("20.0f");
			weatherRequest.setLow("12.0f");
			checkAndAddWeatherReport(weatherRequest);

			weatherRequest = new WeatherReport();
			weatherRequest.setCity("Portland");
			weatherRequest.setState("OR");
			weatherRequest.setZip("94099");
			weatherRequest.setForecast("Rainy");
			weatherRequest.setHigh("13.0f");
			weatherRequest.setLow("8.0f");
			checkAndAddWeatherReport(weatherRequest);
		} catch (Throwable th) {
			if (logger.isErrorEnabled()) {
				logger
						.error("Exception occured while populating the database with the Weather reports. "
								+ th.getMessage());
			}
			th.printStackTrace();
		}
	}

	private boolean checkAndAddWeatherReport(WeatherReport weatherReport1) {
		final Session session = this.hibernateSessionFactory.openSession();
		boolean added = false;
		try {
			// Start the user transaction
			// m_userTxn.begin();
			// Note that this sample does NOT show AMF managing the transaction
			// for the service.
			Transaction tx = session.beginTransaction(); // Need to begin the
															// transaction
															// before any
															// queries are made.
															// Closing the
															// session will
															// clean up the
															// transaction.
			final Query query = session
					.createQuery("UPDATE WeatherReport SET forecast = ?, high = ?, low = ? WHERE city = ? AND state = ? AND zip = ?");
			query.setParameter(0, weatherReport1.getForecast());
			query.setParameter(1, weatherReport1.getHigh());
			query.setParameter(2, weatherReport1.getLow());
			query.setParameter(3, weatherReport1.getCity());
			query.setParameter(4, weatherReport1.getState());
			query.setParameter(5, weatherReport1.getZip());
			String sample = weatherReport1.getZip();
			System.out.println("check" + sample);
			int result = query.executeUpdate();
			if (result == 0) {
				if (logger.isInfoEnabled()) {
					logger
							.info(MessageFormat
									.format(
											"No WeatherReport entry found for the zip ''{0}''. So adding the entry for it into DB.",
											weatherReport1.getZip()));
				}
				session.save(weatherReport1);
				added = true;
			}
			// This should commit the underlying user transaction
			tx.commit();
			// Killing user txn
			// logger.info("About to kill user txn, will see effect");
			// m_userTxn.rollback();
			// logger.info("Killed user txn");
			logger.info("About to commit user txn");
			// m_userTxn.commit();
			logger.info("Committed user txn");
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			session.close();
		}

		return added;
	}

	@Property(name = "hibernateSessionFactory")
	private ProxySessionFactory hibernateSessionFactory;

	public void setHibernateSessionFactory(
			ProxySessionFactory hibernateSessionFactory) {
		this.hibernateSessionFactory = hibernateSessionFactory;
	}

	public ProxySessionFactory getHibernateSessionFactory() {
		return hibernateSessionFactory;
	}

	@Property(name = "zipCode")
	private String zipCode;

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getZipCode() {
		return zipCode;
	}

	/**
	 * Implementation of the WSDL operation: AddWeather
	 */
	public AddWeatherResponseDocument addWeather(
			AddWeatherRequestDocument addWeatherRequest) {
		AddWeatherRequestType inputWeather = addWeatherRequest
				.getAddWeatherRequest();
		WeatherReport weatherReportToAdd = new WeatherReport();

		weatherReportToAdd.setCity(addWeatherRequest.getAddWeatherRequest()
				.getCity());
		weatherReportToAdd.setState(addWeatherRequest.getAddWeatherRequest()
				.getState());
		weatherReportToAdd.setZip(addWeatherRequest.getAddWeatherRequest()
				.getZip());
		weatherReportToAdd.setHigh(addWeatherRequest.getAddWeatherRequest()
				.getHigh());
		weatherReportToAdd.setLow(addWeatherRequest.getAddWeatherRequest()
				.getLow());
		weatherReportToAdd.setForecast(addWeatherRequest.getAddWeatherRequest()
				.getForecast());

		String sample = inputWeather.getZip();
		System.out.println(sample);

		String sample1 = inputWeather.getState();
		System.out.println(sample1);

		String sample2 = addWeatherRequest.getAddWeatherRequest().getForecast();
		System.out.println(sample2);

		String sample3 = addWeatherRequest.getAddWeatherRequest().getState();
		System.out.println(sample3);

		String sample4 = addWeatherRequest.getAddWeatherRequest().getHigh();
		System.out.println(sample4);

		String sample5 = addWeatherRequest.getAddWeatherRequest().getLow();
		System.out.println(sample5);

		String messageString = null;
		try {
			boolean added = checkAndAddWeatherReport(weatherReportToAdd);
			if (added) {
				messageString = MessageFormat
						.format(
								"Successfully added the WeatherReport for ''{0}'', ''{1}'' - ''{2}'' to the database.",
								weatherReportToAdd.getCity(),
								weatherReportToAdd.getState(),
								weatherReportToAdd.getZip());
			} else {
				messageString = MessageFormat
						.format(
								"The Weather report for ''{0}'', ''{1}'' - ''{2}'' is already in the database.",
								weatherReportToAdd.getCity(),
								weatherReportToAdd.getState(),
								weatherReportToAdd.getZip());
			}
		} catch (Exception e) {
			messageString = MessageFormat
					.format(
							"Error. Could not add Weather report for ''{0}'', ''{1}'' - ''{2}'' is already in the database.",
							weatherReportToAdd.getCity(), weatherReportToAdd
									.getState(), weatherReportToAdd.getZip());
			e.printStackTrace();
		}

		if (logger.isInfoEnabled()) {
			logger.info(messageString);
		}
		AddWeatherResponseDocument result = AddWeatherResponseDocument.Factory
				.newInstance();

		result.addNewAddWeatherResponse().setResult("Updated ! ! ! ");
		return result;

	}
}
