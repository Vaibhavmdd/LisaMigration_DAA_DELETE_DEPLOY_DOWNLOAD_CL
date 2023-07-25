package com.sample.QUERY_PARAM_XML_INOUT;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
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
import org.example.greetWsdl.GreetDELETEResponseDocument.GreetDELETEResponse;
import org.example.greetWsdl.GreetGETResponseDocument.GreetGETResponse;
import org.example.greetWsdl.GreetPOSTResponseDocument.GreetPOSTResponse;
import org.example.greetWsdl.GreetPUTResponseDocument.GreetPUTResponse;

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
	 * Implementation of the WSDL operation: GreetPOST	 */
	public GreetPOSTResponseDocument greetPOST(GreetPOSTDocument inputParam,
			XmlString pOSTQPSTRING, XmlBoolean pOSTQPBOOLEAN,
			XmlByte pOSTQPBYTE, XmlShort pOSTQPSHORT, XmlInteger pOSTQPINTEGER,
			XmlLong pOSTQPLONG, XmlFloat pOSTQPFLOAT, XmlDouble pOSTQPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetPOST method of Java1=========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Query Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "____________________________")     
				  +"\n\t\t\t\t\t   | POST_QP_STRING_XML_INOUT_J1   |   " +String.format("%-15s", pOSTQPSTRING.getStringValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_BOOLEAN_XML_INOUT_J1  |   " +String.format("%-15s", pOSTQPBOOLEAN.getBooleanValue()) +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_BYTE_XML_INOUT_J1     |   " +String.format("%-15s", pOSTQPBYTE.getByteValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_SHORT_XML_INOUT_J1    |   " +String.format("%-15s", pOSTQPSHORT.getShortValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_INTEGER_XML_INOUT_J1  |   " +String.format("%-15s", pOSTQPINTEGER.getBigIntegerValue()) +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_LONG_XML_INOUT_J1     |   " +String.format("%-15s", pOSTQPLONG.getLongValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_FLOAT_XML_INOUT_J1    |   " +String.format("%-15s", pOSTQPFLOAT.getFloatValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\t\t\t\t\t   | POST_QP_DOUBLE_XML_INOUT_J1   |   " +String.format("%-15s", pOSTQPDOUBLE.getDoubleValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "___________|")     
				  +"\n\n===================================================================================================================================");
        
		System.out.println("I am in java1 GreetPost");
		GreetPOSTResponseDocument response=GreetPOSTResponseDocument.Factory.newInstance();
		GreetPOSTResponse greetPOSTResponse=GreetPOSTResponse.Factory.newInstance();
		greetPOSTResponse.setOut("Hello GreetPOST");
		response.setGreetPOSTResponse(greetPOSTResponse);
		return response;
	}
	/**
	 * Implementation of the WSDL operation: GreetGET	 */
	public GreetGETResponseDocument greetGET(XmlString inputParam,
			XmlString gETQPSTRING, XmlBoolean gETQPBOOLEAN, XmlByte gETQPBYTE,
			XmlShort gETQPSHORT, XmlInteger gETQPINTEGER, XmlLong gETQPLONG,
			XmlFloat gETQPFLOAT, XmlDouble gETQPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetGET method of Java1=========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Query Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "___________________________")
				  +"\n\t\t\t\t\t   | GET_QP_STRING_XML_INOUT_J1   |   " +String.format("%-15s", gETQPSTRING.getStringValue())    +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_BOOLEAN_XML_INOUT_J1  |   " +String.format("%-15s", gETQPBOOLEAN.getBooleanValue())   +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_BYTE_XML_INOUT_J1     |   " +String.format("%-15s", gETQPBYTE.getByteValue())      +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_SHORT_XML_INOUT_J1    |   " +String.format("%-15s", gETQPSHORT.getShortValue())     +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_INTEGER_XML_INOUT_J1  |   " +String.format("%-15s", gETQPINTEGER.getBigIntegerValue())   +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_LONG_XML_INOUT_J1     |   " +String.format("%-15s", gETQPLONG.getLongValue())      +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_FLOAT_XML_INOUT_J1    |   " +String.format("%-15s", gETQPFLOAT.getFloatValue())     +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | GET_QP_DOUBLE_XML_INOUT_J1   |   " +String.format("%-15s", gETQPDOUBLE.getDoubleValue())    +"|"
				  +"\n\t\t\t\t\t   |______________________________|______" +String.format("%-15s", "___________|")
				  +"\n\n===================================================================================================================================");
          System.out.println("I am in java1 GreetGet");
		GreetGETResponseDocument response=GreetGETResponseDocument.Factory.newInstance();
		GreetGETResponse greetGETResponse=GreetGETResponse.Factory.newInstance();
		greetGETResponse.setOut("Hello GreetGET");
		response.setGreetGETResponse(greetGETResponse);
		return response;
	}
	/**
	 * Implementation of the WSDL operation: GreetPUT	 */
	public GreetPUTResponseDocument greetPUT(GreetPUTDocument inputParam,
			XmlString pUTQPSTRING, XmlBoolean pUTQPBOOLEAN, XmlByte pUTQPBYTE,
			XmlShort pUTQPSHORT, XmlInteger pUTQPINTEGER, XmlLong pUTQPLONG,
			XmlFloat pUTQPFLOAT, XmlDouble pUTQPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetPUT method of Java1==========================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Query Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "______________________________")
				  +"\n\t\t\t\t\t   | PUT_QP_STRING_XML_INOUT_J1    |     " +String.format("%-15s", pUTQPSTRING.getStringValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_BOOLEAN_XML_INOUT_J1   |     " +String.format("%-15s", pUTQPBOOLEAN.getBooleanValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_BYTE_XML_INOUT_J1      |     " +String.format("%-15s", pUTQPBYTE.getByteValue())     +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_SHORT_XML_INOUT_J1     |     " +String.format("%-15s", pUTQPSHORT.getShortValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_INTEGER_XML_INOUT_J1   |     " +String.format("%-15s", pUTQPINTEGER.getBigIntegerValue())  +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_LONG_XML_INOUT_J1      |     " +String.format("%-15s", pUTQPLONG.getLongValue())     +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_FLOAT_XML_INOUT_J1     |     " +String.format("%-15s", pUTQPFLOAT.getFloatValue())    +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\t\t\t\t\t   | PUT_QP_DOUBLE_XML_INOUT_J1    |     " +String.format("%-15s", pUTQPDOUBLE.getDoubleValue())   +"|"
				  +"\n\t\t\t\t\t   |_______________________________|______" +String.format("%-15s", "______________|")
				  +"\n\n===================================================================================================================================");
		System.out.println("I am in java1 GreetPut");
		GreetPUTResponseDocument response=GreetPUTResponseDocument.Factory.newInstance();
		GreetPUTResponse greetPUTResponse=GreetPUTResponse.Factory.newInstance();
		greetPUTResponse.setOut("Hello GreetPUT");
		response.setGreetPUTResponse(greetPUTResponse);
		return response;
	}
	/**
	 * Implementation of the WSDL operation: GreetDELETE	 */
	public GreetDELETEResponseDocument greetDELETE(XmlString inputParam,
			XmlString dELETEQPSTRING, XmlBoolean dELETEQPBOOLEAN,
			XmlByte dELETEQPBYTE, XmlShort dELETEQPSHORT,
			XmlInteger dELETEQPINTEGER, XmlLong dELETEQPLONG,
			XmlFloat dELETEQPFLOAT, XmlDouble dELETEQPDOUBLE) {
		// Add the business logic here
		System.out.println("\n\n==============================================In GreetDELETE method of Java1=======================================================\n");
		System.out.println("\n\n\t\t\t\t\t\t**********Query Parameters**********"
				+"\n\t\t\t\t\t    _______________________" +String.format("%-15s", "_____________________________")
				  +"\n\t\t\t\t\t   | DELETE_QP_STRING_XML_INOUT_J1   |  " +String.format("%-15s", dELETEQPSTRING.getStringValue())  +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_BOOLEAN_XML_INOUT_J1  |  " +String.format("%-15s", dELETEQPBOOLEAN.getBooleanValue()) +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_BYTE_XML_INOUT_J1     |  " +String.format("%-15s", dELETEQPBYTE.getByteValue())    +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_SHORT_XML_INOUT_J1    |  " +String.format("%-15s", dELETEQPSHORT.getShortValue())   +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_INTEGER_XML_INOUT_J1  |  " +String.format("%-15s", dELETEQPINTEGER.getBigIntegerValue()) +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_LONG_XML_INOUT_J1     |  " +String.format("%-15s", dELETEQPLONG.getLongValue())    +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_FLOAT_XML_INOUT_J1    |  " +String.format("%-15s", dELETEQPFLOAT.getFloatValue())   +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|")
				  +"\n\t\t\t\t\t   | DELETE_QP_DOUBLE_XML_INOUT_J1   |  " +String.format("%-15s", dELETEQPDOUBLE.getDoubleValue())  +"|"
				  +"\n\t\t\t\t\t   |_________________________________|______" +String.format("%-15s", "___________|"));
			     System.out.println("I am in java1 GreetDelete");
		GreetDELETEResponseDocument response=GreetDELETEResponseDocument.Factory.newInstance();
		GreetDELETEResponse greetDELETEResponse=GreetDELETEResponse.Factory.newInstance();
		greetDELETEResponse.setOut("Hello GreetDELETE");
		response.setGreetDELETEResponse(greetDELETEResponse);
		return response;
	}

}
