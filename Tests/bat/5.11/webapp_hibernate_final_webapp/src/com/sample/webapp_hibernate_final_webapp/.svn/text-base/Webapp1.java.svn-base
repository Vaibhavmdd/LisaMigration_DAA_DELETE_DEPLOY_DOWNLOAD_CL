/**
 *
 */
package com.sample.webapp_hibernate_final_webapp;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Reference;

//import com.sample.webapp_hibernate_final_webapp.AbstractWebapp1;

import java.lang.String;
import org.example.www.WeatherService.AddWeatherReportPT;

import org.example.weatherschema.AddWeatherRequestType;
import org.example.weatherschema.AddWeatherResponseDocument;
import org.example.weatherschema.AddWeatherRequestDocument;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Implementation of Webapp1 component.
 *
 */
public class Webapp1 extends HttpServlet {

	
	@Reference(name = "AddWeatherReportPT")
	private AddWeatherReportPT AddWeatherReportPT;


	public void setAddWeatherReportPT(AddWeatherReportPT AddWeatherReportPT) {
		this.AddWeatherReportPT = AddWeatherReportPT;
	}

	public AddWeatherReportPT getAddWeatherReportPT() {
		return this.AddWeatherReportPT;
	}
	/**
	 * Initialization of Webapp1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
		String city = request.getParameter("city").toString();
		String state = request.getParameter("state").toString();
		String zip = request.getParameter("zip").toString();
		String forecast = request.getParameter("forecast").toString();
		String high = request.getParameter("high").toString();
		String low = request.getParameter("low").toString();
	
		AddWeatherRequestType weather = AddWeatherRequestType.Factory.newInstance();
	
		weather.setZip(zip);
		weather.setState(state);
		weather.setCity(city);
		weather.setForecast(forecast); 
		weather.setHigh(high);
		weather.setLow(low);
		
		AddWeatherRequestDocument weatherRequest1= AddWeatherRequestDocument.Factory.newInstance();
		weatherRequest1.setAddWeatherRequest(weather);
		
		AddWeatherResponseDocument weatherResponse= AddWeatherReportPT.addWeather(weatherRequest1);
		
    	
    	PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<head>");
        writer.println("<title>Webapp -> Java</title>");
        writer.println("</head>");
        writer.println("<body bgcolor=white>");
        writer.println("<table border=\"0\">");
        writer.println("<tr>");
        writer.println("<td>");
        writer.println("</td>");
        writer.println("<td>");
        writer.println("<h1>Webapp - Java with Hibernate shared resource  </h1>" + weatherResponse.getAddWeatherResponse().getResult());
        writer.println("This is the output of a servlet that is part of");
        writer.println(" ");
        writer.println("</td>");
        writer.println("</tr>");
        writer.println("</table>");
        writer.println("</body>");
        writer.println("</html>");
        writer.flush();
        writer.close();
	
    }
}
	
