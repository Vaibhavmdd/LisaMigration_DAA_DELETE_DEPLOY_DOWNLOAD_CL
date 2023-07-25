package com.sample.bat521;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;

import javax.xml.namespace.QName;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.bat521wsdl.BAT521WSDL;
import org.example.bat521WSDL.GreetOperationResponseDocument;
import org.example.bat521WSDL.GreetOperationDocument;
import org.example.bat521WSDL.GreetOperationResponseDocument.GreetOperationResponse;

import com.tibco.amf.platform.runtime.extension.exception.SOAPCode;
import com.tibco.amf.platform.runtime.extension.exception.SOAPDetail;
import com.tibco.amf.platform.runtime.extension.exception.SOAPException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
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
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
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
	 * Implementation of the WSDL operation: GreetOperation	 */
	public GreetOperationResponseDocument greetOperation(
			GreetOperationDocument inParam)
			throws org.example.bat521wsdl.GreetOperation_faultMsgException {
		System.out.println("*********In Java2**********");
		if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case1")){
			System.out.println("***************Java2-Case1************");
			try{
				getBAT521WSDL().greetOperation(inParam);
			}
			catch(Exception e){
				URI node=null;
				URI role=null;
				try{
					node=new URI("www.thisisNode.com");
					role=new URI("www.thisisRole.com");
				}
				catch (URISyntaxException e1) {
					e1.printStackTrace();
				}
				System.out.println("*****Java2::Case1::Catching Undeclared Fault*****");
				Node myNode = inParam.getGreetOperation().getDomNode();
				ArrayList<Element> details = new ArrayList<Element>();
				details.add((Element)myNode);
				SOAPDetail<Element> soapDetail=new SOAPDetail<Element>(Element.class, (Element)myNode);
				QName qname=new QName("localPart");
				SOAPCode code=new SOAPCode(qname,null);
				String[] reason={"T","I","B","C","O"};
				System.out.println("*****Java2::Case1::Throwing SOAPException*****");
				throw new SOAPException(code,reason,node,role,soapDetail);
			}
		}
		else if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case2")){
			System.out.println("***************Java2-Case2************");
			try{
				getBAT521WSDL().greetOperation(inParam);
				}
				catch(Exception e){
					URI node=null;
					URI role=null;
					try{
						node=new URI("www.thisisNode.com");
						role=new URI("www.thisisRole.com");
					}
					catch (URISyntaxException e1) {
						e1.printStackTrace();
					}
					Node myNode = inParam.getGreetOperation().getDomNode();
					ArrayList<Element> details = new ArrayList<Element>();
					details.add((Element)myNode);
					SOAPDetail<Element> soapDetail=new SOAPDetail<Element>(Element.class, (Element)myNode);
					throw new SOAPException("FaultCODE","FaultREASON",node,role,soapDetail);	
				}
		}
		else if (inParam.getGreetOperation().getIn().equalsIgnoreCase("Case3")){
			try{
				System.out.println("***************Java2-Case3************");
				getBAT521WSDL().greetOperation(inParam);
				}
			catch(SOAPException se){
				throw se;
			}
		}
		GreetOperationResponseDocument response=GreetOperationResponseDocument.Factory.newInstance();
		GreetOperationResponse greetOperationResponse=GreetOperationResponse.Factory.newInstance();
		greetOperationResponse.setOut("Hello");
		response.setGreetOperationResponse(greetOperationResponse);
		return response;
	}
}
