package com.tibco.qa.amx.bat51;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.matrix.qa.xsd.group.BookStoreT;
import java.util.Calendar;
/**
 * Implementation of Java3 component.
 *
 */
public class Java3 extends AbstractJava3 {

	/**
	 * Initialization of Java3 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java3 component.
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
		System.out.println("********************** Inside Java3 *******************");
		
		String serviceproviderType = inPart.getBookStore().getServiceProvider(); 
		String inputAuthor = inPart.getBookStore().getAuthor();
		String inputPublisher = inPart.getBookStore().getPublisher();
		String inputTitle = inPart.getBookStore().getTitle();
		int inputISBN = inPart.getBookStore().getISBN();
		Calendar inputDate = inPart.getBookStore().getDate();
		String inputEcho = inPart.getEcho();
		
		System.out.println("inputServiceProvider = " + serviceproviderType);
		System.out.println("inputAuthor = " + inputAuthor);
		System.out.println("inputPublisher = " + inputPublisher);
		System.out.println("inputTitle = " + inputTitle);
		System.out.println("inputISBN = " + inputISBN);
		System.out.println("inputDate = " + inputDate);
		System.out.println("inputEcho = " + inputEcho);

		System.out.println("********************** Inside Java3 - Calling Java1 *******************");
		BookStoreT bkstore = getBookPortType().getBooksOperation(inPart);
		System.out.println("********************** Inside Java3 - Returned from Calling Java1 *******************");
		return bkstore;
	}

}
