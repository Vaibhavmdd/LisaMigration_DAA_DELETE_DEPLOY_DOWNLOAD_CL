package com.sample.java3;

import org.osoa.sca.annotations.Reference;
import com.tibco.matrix.qa.wsdl.group.BookPortType;
import com.tibco.matrix.qa.xsd.group.BookStoreT;

/**
 * Abstract interface generated for component "Java3".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.java3.AbstractJava3 AbstractJava3}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava3 implements BookPortType {

	/**
	 * Implementation of the WSDL operation: GetBooksOperation	 */
	public abstract BookStoreT getBooksOperation(BookStoreT inPart)
			throws com.tibco.matrix.qa.wsdl.group.GetBooksFaultException;

	private BookPortType BookPortType;

	@Reference(name = "BookPortType")
	public void setBookPortType(BookPortType BookPortType) {
		this.BookPortType = BookPortType;
	}

	public BookPortType getBookPortType() {
		return this.BookPortType;
	}

}
