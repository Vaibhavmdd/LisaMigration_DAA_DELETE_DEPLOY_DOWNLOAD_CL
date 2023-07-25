package com.sample.java1;

import org.osoa.sca.annotations.Reference;
import com.tibco.matrix.qa.wsdl.group_gen.BookPortType;
import com.tibco.matrix.qa.xsd.group.BookStoreT;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.qa.amx.bat51.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1
		implements
			com.tibco.matrix.qa.wsdl.group.BookPortType {

	/**
	 * Implementation of the WSDL operation: GetBooksOperation	 */
	public abstract BookStoreT getBooksOperation(BookStoreT inPart)
			throws com.tibco.matrix.qa.wsdl.group.GetBooksFaultException;

	private BookPortType AMX_Reference;

	@Reference(name = "AMX_Reference")
	public void setAMX_Reference(BookPortType AMX_Reference) {
		this.AMX_Reference = AMX_Reference;
	}

	public BookPortType getAMX_Reference() {
		return this.AMX_Reference;
	}
	private com.tibco.matrix.qa.wsdl.group.bwservice.BookPortType BW_Reference;

	@Reference(name = "BW_Reference")
	public void setBW_Reference(
			com.tibco.matrix.qa.wsdl.group.bwservice.BookPortType BW_Reference) {
		this.BW_Reference = BW_Reference;
	}
	       
	public com.tibco.matrix.qa.wsdl.group.bwservice.BookPortType getBW_Reference() {
		return this.BW_Reference;
	}

}
