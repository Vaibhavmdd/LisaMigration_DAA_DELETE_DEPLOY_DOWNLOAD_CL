package com.sample.java2;

import com.tibco.matrix.qa.wsdl.group.BookPortType;
import com.tibco.matrix.qa.xsd.group.BookStoreT;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.qa.amx.bat51.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements BookPortType {

	/**
	 * Implementation of the WSDL operation: GetBooksOperation	 */
	public abstract BookStoreT getBooksOperation(BookStoreT inPart)
			throws com.tibco.matrix.qa.wsdl.group.GetBooksFaultException;

}
