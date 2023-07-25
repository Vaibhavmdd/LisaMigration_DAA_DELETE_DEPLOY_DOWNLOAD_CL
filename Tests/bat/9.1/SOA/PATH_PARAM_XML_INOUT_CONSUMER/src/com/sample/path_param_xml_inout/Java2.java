package com.sample.path_param_xml_inout;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.ns.rsbt.path_query_rrcresource.PATH_QUERY_RrcResource;
import org.example.greetWsdl.GreetWsdl;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlString;
import org.example.greetWsdl.GreetPOSTResponseDocument;
import org.apache.xmlbeans.XmlShort;
import org.example.greetWsdl.GreetPUTDocument;
import org.example.greetWsdl.GreetGETResponseDocument;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.example.greetWsdl.GreetPUTResponseDocument;
import org.example.greetWsdl.GreetPOSTDocument;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlDouble;
import org.example.greetWsdl.GreetDELETEResponseDocument;
import org.example.greetWsdl.GreetDELETEResponseDocument.GreetDELETEResponse;
import org.example.greetWsdl.GreetGETResponseDocument.GreetGETResponse;
import org.example.greetWsdl.GreetPOSTDocument.GreetPOST;
import org.example.greetWsdl.GreetPOSTResponseDocument.GreetPOSTResponse;
import org.example.greetWsdl.GreetPUTDocument.GreetPUT;
import org.example.greetWsdl.GreetPUTResponseDocument.GreetPUTResponse;

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
	 * Implementation of the WSDL operation: GreetPOST	 */
	public GreetPOSTResponseDocument greetPOST(GreetPOSTDocument inputParam,
			XmlString pOSTPPSTRING, XmlBoolean pOSTPPBOOLEAN,
			XmlByte pOSTPPBYTE, XmlShort pOSTPPSHORT, XmlInteger pOSTPPINTEGER,
			XmlLong pOSTPPLONG, XmlFloat pOSTPPFLOAT, XmlDouble pOSTPPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetPOST method of Java2=========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Path Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "____________________________")     
				  +"\n\t\t\t\t\t   | POST_PP_STRING_XML_INOUT_J2   |   " +String.format("%-15s", pOSTPPSTRING.getStringValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_BOOLEAN_XML_INOUT_J2  |   " +String.format("%-15s", pOSTPPBOOLEAN.getBooleanValue()) +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_BYTE_XML_INOUT_J2     |   " +String.format("%-15s", pOSTPPBYTE.getByteValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_SHORT_XML_INOUT_J2    |   " +String.format("%-15s", pOSTPPSHORT.getShortValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_INTEGER_XML_INOUT_J2  |   " +String.format("%-15s", pOSTPPINTEGER.getBigIntegerValue()) +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_LONG_XML_INOUT_J2     |   " +String.format("%-15s", pOSTPPLONG.getLongValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_FLOAT_XML_INOUT_J2    |   " +String.format("%-15s", pOSTPPFLOAT.getFloatValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\t\t\t\t\t   | POST_PP_DOUBLE_XML_INOUT_J2   |   " +String.format("%-15s", pOSTPPDOUBLE.getDoubleValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "____________|")     
				  +"\n\n===================================================================================================================================");

     
		GreetPOSTResponseDocument response=GreetPOSTResponseDocument.Factory.newInstance();
		GreetPOSTResponse greetPOSTResponse=GreetPOSTResponse.Factory.newInstance();
		
		GreetPOSTDocument __body=GreetPOSTDocument.Factory.newInstance();
		GreetPOST greetPOST=GreetPOST.Factory.newInstance();
		greetPOST.setIn("ToJava1");
		__body.setGreetPOST(greetPOST);
		
		XmlInt ppInt = XmlInt.Factory.newInstance();
		ppInt.setIntValue(pOSTPPINTEGER.getBigIntegerValue().intValue());
		
		greetPOSTResponse.setOut(getPATH_QUERY_RrcResource().greetPOST(pOSTPPSTRING, pOSTPPBOOLEAN, pOSTPPBYTE, pOSTPPSHORT, ppInt, pOSTPPLONG, pOSTPPFLOAT, pOSTPPDOUBLE, __body).getGreetPOSTResponse().getOut());
		response.setGreetPOSTResponse(greetPOSTResponse);
		return response;
		
	}
	/**
	 * Implementation of the WSDL operation: GreetGET	 */
	public GreetGETResponseDocument greetGET(XmlString inputParam,
			XmlString gETPPSTRING, XmlBoolean gETPPBOOLEAN, XmlByte gETPPBYTE,
			XmlShort gETPPSHORT, XmlInteger gETPPINTEGER, XmlLong gETPPLONG,
			XmlFloat gETPPFLOAT, XmlDouble gETPPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetGET method of Java2=========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Path Parameters**********"
				 +"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "___________________________")
				  +"\n\t\t\t\t\t   | GET_PP_STRING_XML_INOUT_J2   |   " +String.format("%-15s", gETPPSTRING.getStringValue())    +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_BOOLEAN_XML_INOUT_J2  |   " +String.format("%-15s", gETPPBOOLEAN.getBooleanValue())   +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_BYTE_XML_INOUT_J2     |   " +String.format("%-15s", gETPPBYTE.getByteValue())      +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_SHORT_XML_INOUT_J2    |   " +String.format("%-15s", gETPPSHORT.getShortValue())     +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_INTEGER_XML_INOUT_J2  |   " +String.format("%-15s", gETPPINTEGER.getBigIntegerValue())   +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_LONG_XML_INOUT_J2     |   " +String.format("%-15s", gETPPLONG.getLongValue())      +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_FLOAT_XML_INOUT_J2    |   " +String.format("%-15s", gETPPFLOAT.getFloatValue())     +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\t\t\t\t\t   | GET_PP_DOUBLE_XML_INOUT_J2   |   " +String.format("%-15s", gETPPDOUBLE.getDoubleValue())    +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "____________|")
				  +"\n\n===================================================================================================================================");

		GreetGETResponseDocument response=GreetGETResponseDocument.Factory.newInstance();
		GreetGETResponse greetGETResponse=GreetGETResponse.Factory.newInstance();
		
		XmlInt ppInt = XmlInt.Factory.newInstance();
		ppInt.setIntValue(gETPPINTEGER.getBigIntegerValue().intValue());
		greetGETResponse.setOut(getPATH_QUERY_RrcResource().greetGET(gETPPSTRING, gETPPBOOLEAN, gETPPBYTE, gETPPSHORT, ppInt, gETPPLONG, gETPPFLOAT, gETPPDOUBLE).getGreetGETResponse().getOut());
		System.out.println(greetGETResponse);
		response.setGreetGETResponse(greetGETResponse);
		return response;
	}
	/**
	 * Implementation of the WSDL operation: GreetPUT	 */
	public GreetPUTResponseDocument greetPUT(GreetPUTDocument inputParam,
			XmlString pUTPPSTRING, XmlBoolean pUTPPBOOLEAN, XmlByte pUTPPBYTE,
			XmlShort pUTPPSHORT, XmlInteger pUTPPINTEGER, XmlLong pUTPPLONG,
			XmlFloat pUTPPFLOAT, XmlDouble pUTPPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetPUT method of Java2=========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Path Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "______________________________")
				  +"\n\t\t\t\t\t   | PUT_PP_STRING_XML_INOUT_J2    |     " +String.format("%-15s", pUTPPSTRING.getStringValue())   +"|"
				  +"\n\t\t\t\t\t   |______________________________ |______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_BOOLEAN_XML_INOUT_J2   |     " +String.format("%-15s", pUTPPBOOLEAN.getBooleanValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_BYTE_XML_INOUT_J2      |     " +String.format("%-15s", pUTPPBYTE.getByteValue())     +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_SHORT_XML_INOUT_J2     |     " +String.format("%-15s", pUTPPSHORT.getShortValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_INTEGER_XML_INOUT_J2   |     " +String.format("%-15s", pUTPPINTEGER.getBigIntegerValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_LONG_XML_INOUT_J2      |     " +String.format("%-15s", pUTPPLONG.getLongValue())     +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_FLOAT_XML_INOUT_J2     |     " +String.format("%-15s", pUTPPFLOAT.getFloatValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_PP_DOUBLE_XML_INOUT_J2    |     " +String.format("%-15s", pUTPPDOUBLE.getDoubleValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\n===================================================================================================================================");

		
		GreetPUTResponseDocument response=GreetPUTResponseDocument.Factory.newInstance();
		GreetPUTResponse greetPUTResponse=GreetPUTResponse.Factory.newInstance();
		
		
		GreetPUTDocument __body=GreetPUTDocument.Factory.newInstance();
		GreetPUT greetPUT=GreetPUT.Factory.newInstance();
		greetPUT.setIn("ToJava1");
		__body.setGreetPUT(greetPUT);
		
		XmlInt ppInt = XmlInt.Factory.newInstance();
		ppInt.setIntValue(pUTPPINTEGER.getBigIntegerValue().intValue());
		
		greetPUTResponse.setOut(getPATH_QUERY_RrcResource().greetPUT(pUTPPSTRING, pUTPPBOOLEAN, pUTPPBYTE, pUTPPSHORT, ppInt, pUTPPLONG, pUTPPFLOAT, pUTPPDOUBLE,__body).getGreetPUTResponse().getOut());
		
		response.setGreetPUTResponse(greetPUTResponse);
		return response;
	}
	/**
	 * Implementation of the WSDL operation: GreetDELETE	 */
	public GreetDELETEResponseDocument greetDELETE(XmlString inputParam,
			XmlString dELETEPPSTRING, XmlBoolean dELETEPPBOOLEAN,
			XmlByte dELETEPPBYTE, XmlShort dELETEPPSHORT,
			XmlInteger dELETEPPINTEGER, XmlLong dELETEPPLONG,
			XmlFloat dELETEPPFLOAT, XmlDouble dELETEPPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetDELETE method of Java2=========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Path Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "_____________________________")
				  +"\n\t\t\t\t\t   | DELETE_PP_STRING_XML_INOUT_J2   |  " +String.format("%-15s", dELETEPPSTRING.getStringValue())  +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_BOOLEAN_XML_INOUT_J2  |  " +String.format("%-15s", dELETEPPBOOLEAN.getBooleanValue()) +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_BYTE_XML_INOUT_J2     |  " +String.format("%-15s", dELETEPPBYTE.getByteValue())    +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_SHORT_XML_INOUT_J2    |  " +String.format("%-15s", dELETEPPSHORT.getShortValue())   +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_INTEGER_XML_INOUT_J2  |  " +String.format("%-15s", dELETEPPINTEGER.getBigIntegerValue()) +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_LONG_XML_INOUT_J2     |  " +String.format("%-15s", dELETEPPLONG.getLongValue())    +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_FLOAT_XML_INOUT_J2    |  " +String.format("%-15s", dELETEPPFLOAT.getFloatValue())   +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_PP_DOUBLE_XML_INOUT_J2   |  " +String.format("%-15s", dELETEPPDOUBLE.getDoubleValue())  +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|"));
		
		GreetDELETEResponseDocument response=GreetDELETEResponseDocument.Factory.newInstance();
		GreetDELETEResponse greetDELETEResponse=GreetDELETEResponse.Factory.newInstance();
		
		
		
		XmlInt ppInt = XmlInt.Factory.newInstance();
		ppInt.setIntValue(dELETEPPINTEGER.getBigIntegerValue().intValue());
		
		greetDELETEResponse.setOut(getPATH_QUERY_RrcResource().greetDELETE(dELETEPPSTRING, dELETEPPBOOLEAN, dELETEPPBYTE, dELETEPPSHORT, ppInt, dELETEPPLONG, dELETEPPFLOAT, dELETEPPDOUBLE).getGreetDELETEResponse().getOut());
		response.setGreetDELETEResponse(greetDELETEResponse);
		return response;
	}

}
