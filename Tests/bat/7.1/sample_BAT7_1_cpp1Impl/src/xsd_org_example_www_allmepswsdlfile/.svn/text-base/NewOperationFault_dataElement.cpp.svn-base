//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "NewOperationFault_dataElement.h"
namespace XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE
{
	const TIBAMX_CORE_NAMESPACE::QName NewOperationFault_dataElement::cx_type("","NewOperationFault_dataElement","http://www.example.org/AllMEPsWSDLFile/");
	
	NewOperationFault_dataElement::NewOperationFault_dataElement()
	{
		this->fault = NULL;

	}

	NewOperationFault_dataElement::~NewOperationFault_dataElement()
	{
		SAFE_DELETE(this->fault);

	}

	NewOperationFault_dataElement::NewOperationFault_dataElement(const NewOperationFault_dataElement & cx_value)
	{
		this->fault = NULL;

		clone(cx_value);
	}

	NewOperationFault_dataElement & NewOperationFault_dataElement::operator=(const NewOperationFault_dataElement & cx_obj)
	{
		if (this != &cx_obj) 
		{
			SAFE_DELETE(this->fault);

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & NewOperationFault_dataElement::get_type() const
	{
		return cx_type;
	}

	void NewOperationFault_dataElement::clone(const NewOperationFault_dataElement & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->fault = (cx_obj.fault == NULL)? NULL : new TIBAMX_CORE_NAMESPACE::String(*(cx_obj.fault));

	}


	TIBAMX_CORE_NAMESPACE::String* NewOperationFault_dataElement::getFault()
	{
		return this->fault;
	}

	const TIBAMX_CORE_NAMESPACE::String* NewOperationFault_dataElement::getFault() const
	{
		return this->fault;
	}

			
	void NewOperationFault_dataElement::setFault(const TIBAMX_CORE_NAMESPACE::String& cx_obj)
	{	
		if(this->fault == NULL)
		{
			this->fault = new TIBAMX_CORE_NAMESPACE::String(cx_obj);
		} 
		else
		{
			*this->fault = cx_obj;
		}	
	}

	void NewOperationFault_dataElement::setFault(const TIBAMX_CORE_NAMESPACE::String* cx_obj)
	{	
		if(this->fault == NULL)
		{
			this->fault = (cx_obj == NULL)? NULL : new TIBAMX_CORE_NAMESPACE::String(*cx_obj);
		} 
		else
		{
			*this->fault = *cx_obj;
		}	
	}
	void NewOperationFault_dataElement::setFault(const char* cx_obj)
	{
		if(this->fault == NULL)
		{
			this->fault = (cx_obj == NULL)? NULL : new TIBAMX_CORE_NAMESPACE::String(cx_obj);
		} 
		else
		{
			*this->fault = cx_obj;
		}
	}
	void NewOperationFault_dataElement::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "fault")
		{
			this->fault = (TIBAMX_CORE_NAMESPACE::String*)cx_value;
			return;
		}


		std::string cx_errorMsg("\"NewOperationFault_dataElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* NewOperationFault_dataElementSerializer::cx_artifactRoot;

	void NewOperationFault_dataElementSerializer::initialize()
	{
		if(cx_artifactRoot != NULL)
		{
			return;
		}
		cx_artifactRoot = new TIBAMX_CORE_NAMESPACE::ArtifactRoot();
		cx_artifactRoot->setApplicationSerializerFactory(&ApplicationSerializerFactory::getSerializerFromQName);
		cx_artifactRoot->setApplicationDeSerializerFactory(&ApplicationSerializerFactory::getDeserializerFromQName);
		
		TIBAMX_CORE_NAMESPACE::ArtifactRoot* cx_artifactNode = cx_artifactRoot;
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode0= new TIBAMX_CORE_NAMESPACE::ArtifactNode(SEQUENCE, UNQUALIFIED, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, 1, 1, NULL, NULL, NULL, NULL, 0, NULL);
		cx_artifactNode->addChildArtifact(cx_artifactNode0);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "fault", "fault", "tns", "http://www.example.org/AllMEPsWSDLFile/", "String", "xsd", "http://www.w3.org/2001/XMLSchema", NULL, false, false, false, 1, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void NewOperationFault_dataElementSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &NewOperationFault_dataElementSerializer::getMemberValue;

		ArtifactSerializer::serializeGeneratedType(cx_element, cx_artifactRoot, ArtifactSerializer::NONE_ARTIFACT_FLAG , cx_memberGetter, cx_input, cx_context, NULL, NULL);
	}

	std::string NewOperationFault_dataElementSerializer::serialize(const void* input, Context* context) throw (ServiceDataException){
		MemberValueGetterPtr cx_memberGetter = &NewOperationFault_dataElementSerializer::getMemberValue;
		return ArtifactSerializer::serializeGeneratedType(cx_artifactRoot, ArtifactSerializer::ERROR_ARTIFACT_FLAG , cx_memberGetter, input, context);
	}

	void* NewOperationFault_dataElementSerializer::deserialize(const std::string& inputString, void* returnValue, Context* context) throw (ServiceDataException){
		MemberValueSetterPtr cx_memberSetter = &NewOperationFault_dataElementSerializer::setMemberValue;
		return ArtifactSerializer::deSerializeGeneratedType(inputString, cx_artifactRoot, ArtifactSerializer::ERROR_ARTIFACT_FLAG , cx_memberSetter, returnValue, context);
	}

	void* NewOperationFault_dataElementSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		NewOperationFault_dataElement* cx_returnObject = (cx_returnValue != NULL)? (NewOperationFault_dataElement*)cx_returnValue : new NewOperationFault_dataElement();
		MemberValueSetterPtr cx_memberSetter = &NewOperationFault_dataElementSerializer::setMemberValue;

		return ArtifactSerializer::deSerializeGeneratedType(cx_elementItr, cx_artifactRoot, ArtifactSerializer::NONE_ARTIFACT_FLAG , cx_memberSetter, cx_returnObject, cx_context, NULL, NULL);
	}

	void* NewOperationFault_dataElementSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement* cx_classObject = (XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement*)cx_inputObject;
		if(cx_memberName == "fault")
		{
			return (void*)cx_classObject->getFault();
		}

		std::string cx_errorMsg("\"NewOperationFault_dataElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void NewOperationFault_dataElementSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement* cx_classObject = (XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement & cx_obj1, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement & cx_obj2)
{
	return (cx_obj1.getFault() == cx_obj2.getFault());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement & cx_obj1, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement &cx_obj2)
{
	return (cx_obj1.getFault() != cx_obj2.getFault());
}

