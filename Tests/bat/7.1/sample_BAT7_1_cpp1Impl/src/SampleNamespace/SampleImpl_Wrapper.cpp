/*<?xml version="1.0" encoding="UTF-8" standalone="no"?><header>*/
/* <!-- */
//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.
//THIS CODE HAS BEEN GENERATED BY A TOOL. DO NOT EDIT.

#include "SampleImpl_Wrapper.h"
#define SAMPLE_BAT7_1_CPP1IMPL_NAMESPACE SampleNamespace
using TIBAMX_CORE_NAMESPACE::ServiceInvocationException;

namespace SAMPLE_BAT7_1_CPP1IMPL_NAMESPACE
{
	/* -->
	<constantVariablesSection>
	<service generated="YES" name="WSDL_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::AllMEPsWSDLFileService">
		<!--*/

	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_TNS_IN=XmlUtils::transcode("tns:In");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_=XmlUtils::transcode("http://www.example.org/AllMEPsWSDLFile/");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_TNS_INOUTFAULT=XmlUtils::transcode("tns:InOutFault");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_TNS_INOUT=XmlUtils::transcode("tns:InOut");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_NEWOPERATION_DATA_BINARY=XmlUtils::transcode("NewOperation_data_binary");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_TNS_NEWOPERATIONRESPONSE_DATA_TEXT=XmlUtils::transcode("tns:NewOperationResponse_data_text");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_TNS_NEWOPERATIONFAULT_DATA=XmlUtils::transcode("tns:NewOperationFault_data");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_TNS_NEWOPERATIONRESPONSE_DATA=XmlUtils::transcode("tns:NewOperationResponse_data");
	 const XMLCh* SampleImpl_Wrapper::ALLMEPSWSDLFILE_NEWOPERATION_DATA=XmlUtils::transcode("NewOperation_data");
		/*-->
		</service>
		</constantVariablesSection>
	<!-- */
		
	void SampleImpl_Wrapper::invoke(TIBAMX_CPP_NAMESPACE::Operation& cx_operation) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException)
	{
		// Argument creation from Document object.
		XERCES_CPP_NAMESPACE::DOMDocument* cx_requestDoc = (XERCES_CPP_NAMESPACE::DOMDocument*)cx_operation.getParameterValue("RequestDocument");

		// Remove "Request" node from the dom.
		XERCES_CPP_NAMESPACE::DOMElement* cx_root = cx_requestDoc->getDocumentElement();

		TIBAMX_CORE_NAMESPACE::DOMElementIterator cx_elementItr(cx_root->getChildNodes());
		const std::string& cx_operationName = cx_operation.getName();
		TIBAMX_CORE_NAMESPACE::DeSerializerPtr cx_deserializer;
		TIBAMX_CORE_NAMESPACE::SerializerPtr cx_serializer;
		SampleImpl& cx_appImpl = (SampleImpl&)getApplication();
		
		/* -->
		<generatedSection>
		<service generated="YES" name="WSDL_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::AllMEPsWSDLFileService">
		<!--*/
		if (cx_operationName == "In")
		{
			cx_operation.addParameter("serviceName","AllMEPsWSDLFile");
						
			cx_deserializer = &XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElementSerializer::deserialize;
			XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement* parameters  = (XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement*)TIBAMX_CORE_NAMESPACE::SerializerUtils::ProcessNonDefaultElement(cx_elementItr,ALLMEPSWSDLFILE_NEWOPERATION_DATA,cx_deserializer);
			try {
				 cx_appImpl.in(*parameters);
				// Creating return document.
				XERCES_CPP_NAMESPACE::DOMDocument* cx_doc =  TIBAMX_CORE_NAMESPACE::XmlUtils::createDocument(ALLMEPSWSDLFILE_TNS_IN,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_);
		
				cx_operation.setReturnValue((XERCES_CPP_NAMESPACE::DOMDocument*)cx_doc);
			} catch(TIBAMX_CORE_NAMESPACE::TibcoRuntimeException& cx_ex) {
				
				SAFE_DELETE(parameters);
				rethrowException(cx_ex);
			} catch(...) {
				
				SAFE_DELETE(parameters);
				throwRuntimeException(ServiceInvocationException,"Error invoking service!");
			}
			
			SAFE_DELETE(parameters);
			return;
		} // End of (cx_operationName == "In")
		if (cx_operationName == "InOut")
		{
			cx_operation.addParameter("serviceName","AllMEPsWSDLFile");
						
			cx_deserializer = &XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElementSerializer::deserialize;
			XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement* parameters  = (XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement*)TIBAMX_CORE_NAMESPACE::SerializerUtils::ProcessNonDefaultElement(cx_elementItr,ALLMEPSWSDLFILE_NEWOPERATION_DATA,cx_deserializer);
			XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationResponse_dataElement*cx_returnValue = NULL;
			try {
				cx_returnValue = cx_appImpl.inOut(*parameters);
				if(cx_returnValue==NULL){
					std::string cx_errorMsg("\"NewOperationResponse_data\" is not nillable, but value set to it is NULL.");
					throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
				}
				// Creating return document.
				XERCES_CPP_NAMESPACE::DOMDocument* cx_doc =  TIBAMX_CORE_NAMESPACE::XmlUtils::createDocument(ALLMEPSWSDLFILE_TNS_INOUT,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_);
					
						
				cx_serializer = &XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationResponse_dataElementSerializer::serialize;
			
				TIBAMX_CORE_NAMESPACE::SerializerUtils::createReturnDocumentForPartElement(cx_doc, ALLMEPSWSDLFILE_TNS_NEWOPERATIONRESPONSE_DATA,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_, cx_serializer, cx_returnValue,false);
			
				cx_operation.setReturnValue((XERCES_CPP_NAMESPACE::DOMDocument*)cx_doc);
			} catch(TIBAMX_CORE_NAMESPACE::TibcoRuntimeException& cx_ex) {
				SAFE_DELETE(cx_returnValue);
				SAFE_DELETE(parameters);
				rethrowException(cx_ex);
			} catch(...) {
				SAFE_DELETE(cx_returnValue);
				SAFE_DELETE(parameters);
				throwRuntimeException(ServiceInvocationException,"Error invoking service!");
			}
			SAFE_DELETE(cx_returnValue);
			SAFE_DELETE(parameters);
			return;
		} // End of (cx_operationName == "InOut")
		if (cx_operationName == "InOutFault")
		{
			cx_operation.addParameter("serviceName","AllMEPsWSDLFile");
						
			cx_deserializer = &TIBAMX_CORE_NAMESPACE::Base64BinarySerializer::deserialize;
			TIBAMX_CORE_NAMESPACE::Base64Binary* parameters  = (TIBAMX_CORE_NAMESPACE::Base64Binary*)TIBAMX_CORE_NAMESPACE::SerializerUtils::ProcessNonDefaultElement(cx_elementItr,ALLMEPSWSDLFILE_NEWOPERATION_DATA_BINARY,cx_deserializer);
			TIBAMX_CORE_NAMESPACE::String*cx_returnValue = NULL;
			try {
				cx_returnValue = cx_appImpl.inOutFault(*parameters);
				if(cx_returnValue==NULL){
					std::string cx_errorMsg("\"NewOperationResponse_data_text\" is not nillable, but value set to it is NULL.");
					throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
				}
				// Creating return document.
				XERCES_CPP_NAMESPACE::DOMDocument* cx_doc =  TIBAMX_CORE_NAMESPACE::XmlUtils::createDocument(ALLMEPSWSDLFILE_TNS_INOUTFAULT,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_);
					
						
				cx_serializer = &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize;
			
				TIBAMX_CORE_NAMESPACE::SerializerUtils::createReturnDocumentForPartElement(cx_doc, ALLMEPSWSDLFILE_TNS_NEWOPERATIONRESPONSE_DATA_TEXT,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_, cx_serializer, cx_returnValue,false);
			
				cx_operation.setReturnValue((XERCES_CPP_NAMESPACE::DOMDocument*)cx_doc);
			} catch(XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFault& cx_ex){
				if(&cx_ex==NULL){
					std::string cx_errorMsg("\"NewOperationFault_data\" is not nillable, but value set to it is NULL.");
					throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
				}

				
				XERCES_CPP_NAMESPACE::DOMDocument* cx_doc =  TIBAMX_CORE_NAMESPACE::XmlUtils::createDocument(ALLMEPSWSDLFILE_TNS_INOUTFAULT,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_);
				
				
				
				
				cx_serializer = &XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFaultSerializer::serialize;
				
				TIBAMX_CORE_NAMESPACE::SerializerUtils::createReturnDocumentForPartElement(cx_doc, ALLMEPSWSDLFILE_TNS_NEWOPERATIONFAULT_DATA,ALLMEPSWSDLFILE_HTTP___WWW_EXAMPLE_ORG_ALLMEPSWSDLFILE_, cx_serializer, &cx_ex,false);
				
				cx_operation.setFaultValue((XERCES_CPP_NAMESPACE::DOMDocument*)cx_doc);

				TIBAMX_CPP_NAMESPACE::StringRequestContext* requestCtx = cx_appImpl.getComponentContext().getRequestContext();
				TIBAMX_CPP_NAMESPACE::StringReplyContext* replyCtx = requestCtx->getReplyContext();
				replyCtx->setFaultName("fault","XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE");
			} catch(TIBAMX_CORE_NAMESPACE::TibcoRuntimeException& cx_ex) {
				SAFE_DELETE(cx_returnValue);
				SAFE_DELETE(parameters);
				rethrowException(cx_ex);
			} catch(...) {
				SAFE_DELETE(cx_returnValue);
				SAFE_DELETE(parameters);
				throwRuntimeException(ServiceInvocationException,"Error invoking service!");
			}
			SAFE_DELETE(cx_returnValue);
			SAFE_DELETE(parameters);
			return;
		} // End of (cx_operationName == "InOutFault")		
		/*-->
		</service>
		</generatedSection>
		<!-- */

	} //END of SampleImpl_Wrapper::invokeService
} //END of SAMPLE_BAT7_1_CPP1IMPL_NAMESPACE
/* --> */
//</header>
