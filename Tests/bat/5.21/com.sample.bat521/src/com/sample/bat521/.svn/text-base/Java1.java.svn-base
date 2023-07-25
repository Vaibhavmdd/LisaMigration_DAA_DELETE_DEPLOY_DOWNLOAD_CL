package com.sample.bat521;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;

import javax.xml.namespace.QName;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.example.bat521wsdl.BAT521WSDL;
import org.example.bat521WSDL.GreetOperationResponseDocument;
import org.example.bat521WSDL.GreetOperationDocument;
import org.example.bat521WSDL.GreetOperationResponseDocument.GreetOperationResponse;

import com.tibco.amf.platform.runtime.extension.exception.SOAPCode;
import com.tibco.amf.platform.runtime.extension.exception.SOAPDetail;
import com.tibco.amf.platform.runtime.extension.exception.SOAPException;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {

	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: GreetOperation	 */
	public GreetOperationResponseDocument greetOperation(
			GreetOperationDocument inParam)
			throws org.example.bat521wsdl.GreetOperation_faultMsgException {
		System.out.println("*****************In Java1***************");
		if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case1")){
			try{
				System.out.println("*****************In Java1-Case1/2***************");
				getBAT521WSDL().greetOperation(inParam);
			}
			catch(Exception e1){
				System.out.println("******Java1::Case1::Caught SOAPException. Will set new faultcode and faultrole and throw SOAPException to the client******");
				URI node=null;
				URI role=null;
				try{
					node=new URI("www.thisisNewNode.com");
					role=new URI("www.thisisNewRole.com");
				}
				catch (URISyntaxException e11) {
					e11.printStackTrace();
				}
				Node myNode = inParam.getGreetOperation().getDomNode();
				ArrayList<Element> details = new ArrayList<Element>();
				details.add((Element)myNode);
				SOAPDetail<Element> soapDetail=new SOAPDetail<Element>(Element.class, (Element)myNode);
				QName qname=new QName("QName-Case1");
				SOAPCode code=new SOAPCode(qname,null);
				String[] reason={"C","A","S","E","1"};
				System.out.println("*****Java2::Case1::Throwing SOAPException*****");
				throw new SOAPException(code,reason,node,role,soapDetail);
			}
		}else if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case2")){
			try{
				System.out.println("*****************In Java1-Case1/2***************");
				getBAT521WSDL().greetOperation(inParam);
			}
			catch(Exception e1){
				System.out.println("******Java1::Case2::Caught SOAPException. Will set new faultcode and faultrole and throw SOAPException to the client******");
				URI node=null;
				URI role=null;
				try{
					node=new URI("www.thisisNewNode.com");
					role=new URI("www.thisisNewRole.com");
				}
				catch (URISyntaxException e11) {
					e11.printStackTrace();
				}
				Node myNode = inParam.getGreetOperation().getDomNode();
				ArrayList<Element> details = new ArrayList<Element>();
				details.add((Element)myNode);
				SOAPDetail<Element> soapDetail=new SOAPDetail<Element>(Element.class, (Element)myNode);
				System.out.println("******Java1::Case1/2::Throwing SOAPException*****");
				throw new SOAPException("NewFaultCODE","NewFaultREASON",node,role,soapDetail);	
			}
		}
		else if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case3")){
			try{
				System.out.println("*****************In Java1-Case3***************");
				getBAT521WSDL().greetOperation(inParam);
			}
			catch(SOAPException e){
				throw e;
			}
		}
		else if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case4")){
			System.out.println("*****************In Java1-Case4***************");
			URI node=null;
			URI role=null;
			try{
				node=new URI("www.thisisNode.com");
				role=new URI("www.thisisRole.com");
			}
			catch (URISyntaxException e1) {
				e1.printStackTrace();
			}
			Node myNode =inParam.getGreetOperation().getDomNode();
			ArrayList<Element> details = new ArrayList<Element>();
			details.add((Element)myNode);
			SOAPDetail<Element> soapDetail=new SOAPDetail<Element>(Element.class, (Element)myNode);
			QName qname=new QName("Qname-Case4");
			SOAPCode code=new SOAPCode(qname,null);
			String[] reason={"a","b","c","d","e"};
			throw new SOAPException(code,reason,node,role,soapDetail);
		}
		GreetOperationResponseDocument response=GreetOperationResponseDocument.Factory.newInstance();
		GreetOperationResponse greetOperationResponse=GreetOperationResponse.Factory.newInstance();
		greetOperationResponse.setOut("NewHello");
		response.setGreetOperationResponse(greetOperationResponse);
		return response;
	}

}
