package com.sample.PATH_PARAM_XML_INOUT;

import org.example.greetWsdl.GreetWsdl;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlFloat;
import org.example.greetWsdl.GreetPOSTResponseDocument;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlShort;
import org.example.greetWsdl.GreetGETResponseDocument;
import org.apache.xmlbeans.XmlBoolean;
import org.example.greetWsdl.GreetDELETEResponseDocument;
import org.example.greetWsdl.GreetPUTDocument;
import org.example.greetWsdl.GreetPOSTDocument;
import org.example.greetWsdl.GreetPUTResponseDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.PATH_PARAM_XML_INOUT.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements GreetWsdl {

	/**
	 * Implementation of the WSDL operation: GreetPOST	 */
	public abstract GreetPOSTResponseDocument greetPOST(GreetPOSTDocument inputParam, XmlString pOSTPPSTRING,
			XmlBoolean pOSTPPBOOLEAN, XmlByte pOSTPPBYTE, XmlShort pOSTPPSHORT, XmlInteger pOSTPPINTEGER,
			XmlLong pOSTPPLONG, XmlFloat pOSTPPFLOAT, XmlDouble pOSTPPDOUBLE);
	/**
	 * Implementation of the WSDL operation: GreetGET	 */
	public abstract GreetGETResponseDocument greetGET(XmlString inputParam, XmlString gETPPSTRING,
			XmlBoolean gETPPBOOLEAN, XmlByte gETPPBYTE, XmlShort gETPPSHORT, XmlInteger gETPPINTEGER, XmlLong gETPPLONG,
			XmlFloat gETPPFLOAT, XmlDouble gETPPDOUBLE);
	/**
	 * Implementation of the WSDL operation: GreetPUT	 */
	public abstract GreetPUTResponseDocument greetPUT(GreetPUTDocument inputParam, XmlString pUTPPSTRING,
			XmlBoolean pUTPPBOOLEAN, XmlByte pUTPPBYTE, XmlShort pUTPPSHORT, XmlInteger pUTPPINTEGER, XmlLong pUTPPLONG,
			XmlFloat pUTPPFLOAT, XmlDouble pUTPPDOUBLE);
	/**
	 * Implementation of the WSDL operation: GreetDELETE	 */
	public abstract GreetDELETEResponseDocument greetDELETE(XmlString inputParam, XmlString dELETEPPSTRING,
			XmlBoolean dELETEPPBOOLEAN, XmlByte dELETEPPBYTE, XmlShort dELETEPPSHORT, XmlInteger dELETEPPINTEGER,
			XmlLong dELETEPPLONG, XmlFloat dELETEPPFLOAT, XmlDouble dELETEPPDOUBLE);

}
