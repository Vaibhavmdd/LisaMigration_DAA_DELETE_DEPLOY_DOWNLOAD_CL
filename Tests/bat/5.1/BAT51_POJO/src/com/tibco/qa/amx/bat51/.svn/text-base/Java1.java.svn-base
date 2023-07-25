package com.tibco.qa.amx.bat51;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.matrix.qa.xsd.group.BookStoreT;
import com.tibco.matrix.qa.xsd.group.BookStoreFaultDocument;
import java.util.Calendar;

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
	 * Implementation of the WSDL operation: GetBooksOperation	 */
	public BookStoreT getBooksOperation(BookStoreT inPart)
			throws com.tibco.matrix.qa.wsdl.group.GetBooksFaultException {
		System.out.println("******************************* Inside Java1 ******************************");
		
		String serviceproviderType = inPart.getBookStore().getServiceProvider(); 
		String inputAuthor = inPart.getBookStore().getAuthor();
		String inputPublisher = inPart.getBookStore().getPublisher();
		String inputTitle = inPart.getBookStore().getTitle();
		int inputISBN = inPart.getBookStore().getISBN();
		Calendar inputDate = inPart.getBookStore().getDate();
		String inputEcho = inPart.getEcho();
		
		System.out.println("inputAuthor = " + inputAuthor);
		System.out.println("inputPublisher = " + inputPublisher);
		System.out.println("inputTitle = " + inputTitle);
		System.out.println("inputISBN = " + inputISBN);
		System.out.println("inputDate = " + inputDate);
		System.out.println("inputEcho = " + inputEcho);

		if(inputAuthor.equalsIgnoreCase("Consumer-DeclaredFault")){
			System.out.println("******************* Inside Java1 - Throwing Declared Exception from consumer ************************");
						
			BookStoreFaultDocument faultDoc = BookStoreFaultDocument.Factory.newInstance();
			faultDoc.setBookStoreFault("Fault returned from Consumer");
			throw new com.tibco.matrix.qa.wsdl.group.GetBooksFaultException("Fault returned from Consumer for an author with title -" + inputTitle, faultDoc);
		
		}
		else if (inputAuthor.equalsIgnoreCase("Consumer-UnDeclaredFault")) { 
			System.out.println("******************* Inside Java1 - Throwing UnDeclared Exception from consumer ************************");
			
			throw new RuntimeException("Undeclared fault from Consumer for an author with title -" + inputTitle);
		} 
		else {
			BookStoreT response = null;
			
			if (serviceproviderType.equalsIgnoreCase("BW")) {
				System.out.println("******************* inside Java1 - Calling " + serviceproviderType + "Provider *********************************************");
				
				try {
					response = this.getBW_Reference().getBooksOperation(inPart);
				} 
				catch (com.tibco.matrix.qa.wsdl.group.bwservice.GetBooksFaultException e) {
					e.printStackTrace();
					throw new com.tibco.matrix.qa.wsdl.group.GetBooksFaultException(e.getMessage(),e.getFaultInfo());
				}
				System.out.println("******************************** Inside Java1 - Returned from Calling " + serviceproviderType + "Provider ***********************************************");
				return response;
			} else {
				System.out.println("******************* Inside Java1 - Calling " + serviceproviderType + "Provider *********************************************");
				try {
					response = this.getAMX_Reference().getBooksOperation(inPart);
				} 
				catch (com.tibco.matrix.qa.wsdl.group_gen.GetBooksFaultException e) {
					e.printStackTrace();
				    throw new com.tibco.matrix.qa.wsdl.group.GetBooksFaultException(e.getMessage(),e.getFaultInfo());
				}
				System.out.println("********************************* Inside Java1 - Returned from Calling " + serviceproviderType + "Provider **********************************************");
				return response;
			}
		}
	}
}
