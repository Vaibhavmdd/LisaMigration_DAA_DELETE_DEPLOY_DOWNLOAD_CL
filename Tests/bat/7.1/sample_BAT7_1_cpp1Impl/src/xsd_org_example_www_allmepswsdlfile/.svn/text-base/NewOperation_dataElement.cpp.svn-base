//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "NewOperation_dataElement.h"
namespace XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE
{
	const TIBAMX_CORE_NAMESPACE::QName NewOperation_dataElement::cx_type("","NewOperation_dataElement","http://www.example.org/AllMEPsWSDLFile/");
	
	NewOperation_dataElement::NewOperation_dataElement()
	{
		this->in = NULL;

	}

	NewOperation_dataElement::~NewOperation_dataElement()
	{
		SAFE_DELETE(this->in);

	}

	NewOperation_dataElement::NewOperation_dataElement(const NewOperation_dataElement & cx_value)
	{
		this->in = NULL;

		clone(cx_value);
	}

	NewOperation_dataElement & NewOperation_dataElement::operator=(const NewOperation_dataElement & cx_obj)
	{
		if (this != &cx_obj) 
		{
			SAFE_DELETE(this->in);

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & NewOperation_dataElement::get_type() const
	{
		return cx_type;
	}

	void NewOperation_dataElement::clone(const NewOperation_dataElement & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->in = (cx_obj.in == NULL)? NULL : new TIBAMX_CORE_NAMESPACE::String(*(cx_obj.in));

	}


	TIBAMX_CORE_NAMESPACE::String* NewOperation_dataElement::getIn()
	{
		return this->in;
	}

	const TIBAMX_CORE_NAMESPACE::String* NewOperation_dataElement::getIn() const
	{
		return this->in;
	}

			
	void NewOperation_dataElement::setIn(const TIBAMX_CORE_NAMESPACE::String& cx_obj)
	{	
		if(this->in == NULL)
		{
			this->in = new TIBAMX_CORE_NAMESPACE::String(cx_obj);
		} 
		else
		{
			*this->in = cx_obj;
		}	
	}

	void NewOperation_dataElement::setIn(const TIBAMX_CORE_NAMESPACE::String* cx_obj)
	{	
		if(this->in == NULL)
		{
			this->in = (cx_obj == NULL)? NULL : new TIBAMX_CORE_NAMESPACE::String(*cx_obj);
		} 
		else
		{
			*this->in = *cx_obj;
		}	
	}
	void NewOperation_dataElement::setIn(const char* cx_obj)
	{
		if(this->in == NULL)
		{
			this->in = (cx_obj == NULL)? NULL : new TIBAMX_CORE_NAMESPACE::String(cx_obj);
		} 
		else
		{
			*this->in = cx_obj;
		}
	}
	void NewOperation_dataElement::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "in")
		{
			this->in = (TIBAMX_CORE_NAMESPACE::String*)cx_value;
			return;
		}


		std::string cx_errorMsg("\"NewOperation_dataElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* NewOperation_dataElementSerializer::cx_artifactRoot;

	void NewOperation_dataElementSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "in", "in", "tns", "http://www.example.org/AllMEPsWSDLFile/", "String", "xsd", "http://www.w3.org/2001/XMLSchema", NULL, false, false, false, 1, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void NewOperation_dataElementSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &NewOperation_dataElementSerializer::getMemberValue;

		ArtifactSerializer::serializeGeneratedType(cx_element, cx_artifactRoot, ArtifactSerializer::NONE_ARTIFACT_FLAG , cx_memberGetter, cx_input, cx_context, NULL, NULL);
	}

	std::string NewOperation_dataElementSerializer::serialize(const void* input, Context* context) throw (ServiceDataException){
		MemberValueGetterPtr cx_memberGetter = &NewOperation_dataElementSerializer::getMemberValue;
		return ArtifactSerializer::serializeGeneratedType(cx_artifactRoot, ArtifactSerializer::ERROR_ARTIFACT_FLAG , cx_memberGetter, input, context);
	}

	void* NewOperation_dataElementSerializer::deserialize(const std::string& inputString, void* returnValue, Context* context) throw (ServiceDataException){
		MemberValueSetterPtr cx_memberSetter = &NewOperation_dataElementSerializer::setMemberValue;
		return ArtifactSerializer::deSerializeGeneratedType(inputString, cx_artifactRoot, ArtifactSerializer::ERROR_ARTIFACT_FLAG , cx_memberSetter, returnValue, context);
	}

	void* NewOperation_dataElementSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		NewOperation_dataElement* cx_returnObject = (cx_returnValue != NULL)? (NewOperation_dataElement*)cx_returnValue : new NewOperation_dataElement();
		MemberValueSetterPtr cx_memberSetter = &NewOperation_dataElementSerializer::setMemberValue;

		return ArtifactSerializer::deSerializeGeneratedType(cx_elementItr, cx_artifactRoot, ArtifactSerializer::NONE_ARTIFACT_FLAG , cx_memberSetter, cx_returnObject, cx_context, NULL, NULL);
	}

	void* NewOperation_dataElementSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement* cx_classObject = (XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement*)cx_inputObject;
		if(cx_memberName == "in")
		{
			return (void*)cx_classObject->getIn();
		}

		std::string cx_errorMsg("\"NewOperation_dataElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void NewOperation_dataElementSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement* cx_classObject = (XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement & cx_obj1, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement & cx_obj2)
{
	return (cx_obj1.getIn() == cx_obj2.getIn());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement & cx_obj1, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement &cx_obj2)
{
	return (cx_obj1.getIn() != cx_obj2.getIn());
}

