package com.webapp.bat715;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import com.tibco.qa.wsdl.echoaddress.AddressPort;
import com.tibco.qa.wsdl.echoaddress.Address_FaultException;
import com.tibco.qa.xsd.address.AddressResponseType;
import com.tibco.qa.xsd.address.AddressRequestElementDocument;
import com.tibco.qa.xsd.address.AddressRequestType;
import com.tibco.qa.xsd.address.AddressResponseElementDocument;

/**
 * Implementation of WebApp1 component.
 *
 */
public class WebApp1 extends AbstractWebApp1 implements Servlet {

	/**
	 * @see WebApp1#WebApp1()
	 */
	public WebApp1() {
		super();
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Servlet#getServletConfig()
	 */
	public ServletConfig getServletConfig() {
		return null;
	}

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		return null;
	}

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		System.out.println("--------inside Web App component----------------");
		String Name=request.getParameter("Name").toString();
		System.out.println("--------name from request is:-----------"+Name);
		String address=request.getParameter("Address").toString();
		System.out.println("--------address from request is:-----------"+address);
		String City=request.getParameter("City").toString();
		System.out.println("--------city from request is:-----------"+City);
		String State=request.getParameter("State").toString();
		System.out.println("--------state from request is:-----------"+State);
		int Zip=Integer.parseInt((request.getParameter("Zip")));
		System.out.println("--------zip from request is:-----------"+Zip);
				
		AddressRequestElementDocument addreq=AddressRequestElementDocument.Factory.newInstance();
		addreq.addNewAddressRequestElement().setName(Name);
		addreq.getAddressRequestElement().setAddress(address);
	
		addreq.getAddressRequestElement().setCity(City);
		addreq.getAddressRequestElement().setState(State);
		addreq.getAddressRequestElement().setZip(Zip);
		
		AddressRequestType addreqtype=AddressRequestType.Factory.newInstance();
		addreqtype.setName(Name);
		addreqtype.setAddress(address);
		addreqtype.setCity(City);
		addreqtype.setState(State);
		addreqtype.setZip(Zip);
		
		
		
		AddressPort Address=super.getAddressPort1();
		try {
			AddressResponseElementDocument addres=Address.addressElementOperation(addreq);
			AddressResponseType addrestype=Address.addressTypeOperation(addreqtype);
			System.out.println("--------response is(Address):----------"+addres.getAddressResponseElement().getAddress());
			System.out.println("--------response is(City):----------"+addres.getAddressResponseElement().getCity());
			System.out.println("--------response is(State):----------"+addres.getAddressResponseElement().getState());
			System.out.println("--------response is(Zip):----------"+addres.getAddressResponseElement().getZip());
			PrintWriter writer = response.getWriter();
	        writer.println("<html>");
	        writer.println("<head>");
	        writer.println("<title>Webapp->Mediation->Java</title>");
	        writer.println("</head>");
	        writer.println("<body bgcolor=white>");
	        writer.println("<table border=\"0\">");
	        writer.println("<tr>");
	        writer.println("<td>");
	        writer.println("</td>");
	        writer.println("<td>");
	        writer.println("<h1>EchoAddress Application Servlet for Element Name is:  </h1>" +addres.getAddressResponseElement().getName());
	        writer.println("<h2>EchoAddress Application Servlet for Element address is:  </h1>" +addres.getAddressResponseElement().getAddress());
	        writer.println("<h3>EchoAddress Application Servlet for Element City is:  </h1>" +addres.getAddressResponseElement().getCity());
	        writer.println("<h4>EchoAddress Application Servlet for Elemnet State is:  </h1>" +addres.getAddressResponseElement().getState());
	        writer.println("<h5>EchoAddress Application Servlet for Element Zip is :  </h1>" +addres.getAddressResponseElement().getZip());
	        writer.println("<h1>EchoAddress Application Servlet for Type Name is:  </h1>" +addrestype.getName());
	        writer.println("<h2>EchoAddress Application Servlet for Type address is:  </h1>" +addrestype.getAddress());
	        writer.println("<h3>EchoAddress Application Servlet for Type City is:  </h1>" +addrestype.getCity());
	        writer.println("<h4>EchoAddress Application Servlet for Type State is:  </h1>" +addrestype.getState());
	        writer.println("<h5>EchoAddress Application Servlet for Type Zip is :  </h1>" +addrestype.getZip());
	        writer.println("\n This is the output of a servlet that is part of");
	        writer.println("the EchoAddress application.");
	        writer.println("</td>");
	        writer.println("</tr>");
	        writer.println("</table>");
	        writer.println("</body>");
	        writer.println("</html>");
	        writer.flush();
	        writer.close();
		
		} catch (Address_FaultException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
