package com.sample.java2;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.wsdl.group.BookPortType;
import com.tibco.matrix.qa.xsd.group.BookStoreT;
import com.tibco.matrix.qa.xsd.group.BookStoreFaultDocument;
import java.util.Calendar;
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
	 * Implementation of the WSDL operation: GetBooksOperation	 */
	public BookStoreT getBooksOperation(BookStoreT inPart)
			throws com.tibco.matrix.qa.wsdl.group.GetBooksFaultException {
		System.out.println("************************** Inside AMX Provider (Java2) ************************");

		String serviceproviderType = inPart.getBookStore().getServiceProvider(); 
		String inputAuthor = inPart.getBookStore().getAuthor();
		//String inputPublisher = inPart.getBookStore().getPublisher();
		String inputTitle = inPart.getBookStore().getTitle();
		//int inputISBN = inPart.getBookStore().getISBN();
		//Calendar inputDate = inPart.getBookStore().getDate();

		System.out.println("inputAuthor (this drives the fault/non-fault selector) =" + inputAuthor);
		
		if (inputAuthor.equalsIgnoreCase("Vivek")) {
			inPart.getBookStore().setServiceProvider("Response sent from " + serviceproviderType);
			return inPart;
		}
		else if (inputAuthor.equalsIgnoreCase("UnDeclaredFault")) { 
			throw new NullPointerException("Undeclared fault from AMX Provider for an author with title - " + inputTitle);
		}
		else if (inputAuthor.equalsIgnoreCase("DeclaredFault")){
			BookStoreFaultDocument faultDoc = BookStoreFaultDocument.Factory.newInstance();
			faultDoc.setBookStoreFault("Declared Fault from AMX Provider for an author with title - " + inputTitle);
			throw new com.tibco.matrix.qa.wsdl.group.GetBooksFaultException ("Declared Fault from AMX Provider for an author with title - "+ inputTitle ,faultDoc);
		}
		return inPart;
	}

}
