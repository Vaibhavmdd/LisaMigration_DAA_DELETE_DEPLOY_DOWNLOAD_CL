package com.sample.QUERY_PARAM_XML_INOUT;

import org.example.greetWsdl.GreetWsdl;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlString;
import org.example.greetWsdl.GreetPOSTResponseDocument;
import org.apache.xmlbeans.XmlShort;
import org.example.greetWsdl.GreetPUTDocument;
import org.example.greetWsdl.GreetGETResponseDocument;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInteger;
import org.example.greetWsdl.GreetPUTResponseDocument;
import org.apache.xmlbeans.XmlFloat;
import org.example.greetWsdl.GreetPOSTDocument;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlDouble;
import org.example.greetWsdl.GreetDELETEResponseDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.QUERY_PARAM_XML_INOUT.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements GreetWsdl {

	/**
	 * Implementation of the WSDL operation: GreetPOST	 */
	public abstract GreetPOSTResponseDocument greetPOST(
			GreetPOSTDocument inputParam, XmlString pOSTQPSTRING,
			XmlBoolean pOSTQPBOOLEAN, XmlByte pOSTQPBYTE, XmlShort pOSTQPSHORT,
			XmlInteger pOSTQPINTEGER, XmlLong pOSTQPLONG, XmlFloat pOSTQPFLOAT,
			XmlDouble pOSTQPDOUBLE);
	/**
	 * Implementation of the WSDL operation: GreetGET	 */
	public abstract GreetGETResponseDocument greetGET(XmlString inputParam,
			XmlString gETQPSTRING, XmlBoolean gETQPBOOLEAN, XmlByte gETQPBYTE,
			XmlShort gETQPSHORT, XmlInteger gETQPINTEGER, XmlLong gETQPLONG,
			XmlFloat gETQPFLOAT, XmlDouble gETQPDOUBLE);
	/**
	 * Implementation of the WSDL operation: GreetPUT	 */
	public abstract GreetPUTResponseDocument greetPUT(
			GreetPUTDocument inputParam, XmlString pUTQPSTRING,
			XmlBoolean pUTQPBOOLEAN, XmlByte pUTQPBYTE, XmlShort pUTQPSHORT,
			XmlInteger pUTQPINTEGER, XmlLong pUTQPLONG, XmlFloat pUTQPFLOAT,
			XmlDouble pUTQPDOUBLE);
	/**
	 * Implementation of the WSDL operation: GreetDELETE	 */
	public abstract GreetDELETEResponseDocument greetDELETE(
			XmlString inputParam, XmlString dELETEQPSTRING,
			XmlBoolean dELETEQPBOOLEAN, XmlByte dELETEQPBYTE,
			XmlShort dELETEQPSHORT, XmlInteger dELETEQPINTEGER,
			XmlLong dELETEQPLONG, XmlFloat dELETEQPFLOAT,
			XmlDouble dELETEQPDOUBLE);

}
