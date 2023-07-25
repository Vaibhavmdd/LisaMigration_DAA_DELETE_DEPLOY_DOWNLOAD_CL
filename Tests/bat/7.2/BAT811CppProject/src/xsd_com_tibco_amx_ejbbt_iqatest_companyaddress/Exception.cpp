//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "Exception.h"
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS
{
	const TIBAMX_CORE_NAMESPACE::QName Exception::cx_type("","Exception","http://companyaddress.iqatest.ejbbt.amx.tibco.com");
	
	Exception::Exception()
	{
		TIBAMX_CORE_NAMESPACE::QName exceptioncx_qName("","AnyType","http://www.w3.org/2001/XMLSchema");
		this->exception = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>(exceptioncx_qName);

	}

	Exception::~Exception()
	{
		SAFE_DELETE(this->exception)

	}

	Exception::Exception(const Exception & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName exceptioncx_qName("","AnyType","http://www.w3.org/2001/XMLSchema");
		this->exception = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>(exceptioncx_qName);

		clone(cx_value);
	}

	Exception & Exception::operator=(const Exception & cx_obj)
	{
		if (this != &cx_obj) 
		{
			exception->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & Exception::get_type() const
	{
		return cx_type;
	}

	void Exception::clone(const Exception & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->exception->clone<TIBAMX_CORE_NAMESPACE::AnyType>(*(cx_obj.exception));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* Exception::getException()
	{
		return this->exception;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* Exception::getException() const
	{
		return this->exception;
	}

	TIBAMX_CORE_NAMESPACE::AnyType& Exception::addNewException()
	{
		TIBAMX_CORE_NAMESPACE::AnyType* cx_obj = new TIBAMX_CORE_NAMESPACE::AnyType();
		this->exception->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::AnyType& Exception::getExceptionAt(size_t index) const
	{
		return *this->exception->at(index);
	}

	TIBAMX_CORE_NAMESPACE::AnyType& Exception::getExceptionAt(size_t index)
	{
		return *this->exception->at(index);
	}

	const size_t Exception::getExceptionSize() const
	{
		return this->exception->size();
	}

	size_t Exception::getExceptionSize()
	{
		return this->exception->size();
	}
			
	void Exception::setException(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>& cx_obj)
	{	
		for(size_t i = 0; i < exception->get_size(); i++)
		{
			SAFE_DELETE(exception->at(i));
		}
		exception->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::AnyType* cx_val = new TIBAMX_CORE_NAMESPACE::AnyType(*cx_obj.at(i));
			this->exception->push_back(cx_val);
		}	
	}

	void Exception::setException(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* cx_obj)
	{	
		for(size_t i = 0; i < exception->get_size(); i++)
		{
			SAFE_DELETE(exception->at(i));
		}
		exception->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::AnyType* cx_val = new TIBAMX_CORE_NAMESPACE::AnyType(*cx_obj->at(i));
			this->exception->push_back(cx_val);
		}	
	}
	void Exception::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "exception")
		{
			this->exception->push_back((TIBAMX_CORE_NAMESPACE::AnyType*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"Exception\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* ExceptionSerializer::cx_artifactRoot;

	void ExceptionSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "Exception", "exception", "ns", "http://companyaddress.iqatest.ejbbt.amx.tibco.com", "AnyType", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::AnyTypeSerializer::serialize, &TIBAMX_CORE_NAMESPACE::AnyTypeSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void ExceptionSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &ExceptionSerializer::getMemberValue;

		// Attribute Serialization.
		const std::vector<TIBAMX_CORE_NAMESPACE::ArtifactNode*> cx_nodes = cx_artifactRoot->getChildren();
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::attributeSerialize(cx_element,cx_input,*cx_nodes.at(i),cx_memberGetter);
		}


		// Element hirarchy serialization.
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::complexTypeSerialize(cx_element,cx_input,*cx_nodes.at(i),cx_memberGetter);
		}
	}


	void* ExceptionSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		Exception* cx_returnObject = (cx_returnValue != NULL)? (Exception*)cx_returnValue : new Exception();
		MemberValueSetterPtr cx_memberSetter = &ExceptionSerializer::setMemberValue;

		// Attribute Deserialization.
		const std::vector<TIBAMX_CORE_NAMESPACE::ArtifactNode*> cx_nodes = cx_artifactRoot->getChildren();
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::attributeDeserialize(cx_elementItr,cx_returnObject,*cx_nodes.at(i),cx_memberSetter);
		}

		// Remove wrapper element after attribute processing.
		XERCES_CPP_NAMESPACE::DOMElement* cx_wrapperElement = cx_elementItr.getNextElement();
		DOMElementIterator cx_wrapperElementItr(cx_wrapperElement->getChildNodes());

		// Element hirarchy serialization.
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::complexTypeDeserialize(cx_wrapperElementItr,cx_returnObject,*cx_nodes.at(i),cx_memberSetter);
		}
		if(cx_context == NULL)
		{
			if(cx_wrapperElementItr.hasNextElement()) 
			{
				std::ostringstream msgs;
				msgs << "Element contents are invalid, unprocessed elements are left serialisation of element : " << XmlUtils::transcode(cx_wrapperElement->getLocalName());
				msgs << "\nUnprocessed Elements are : ";
				while(cx_wrapperElementItr.hasNextElement()) {
					msgs << cx_wrapperElementItr.getNextElementName() << ", ";
					++cx_wrapperElementItr;
				}
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
		}
		else
		{
	
			cx_elementItr = cx_wrapperElementItr;
		}
		return cx_returnObject;
	}

	void* ExceptionSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception*)cx_inputObject;
		if(cx_memberName == "exception")
		{
			if(1 < (int)cx_classObject->getException()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"exception\" has ";
				msgs << cx_classObject->getException()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getException()->size()) {
				return (void*)cx_classObject->getException()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"Exception\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void ExceptionSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception & cx_obj2)
{
	return (cx_obj1.getException() == cx_obj2.getException());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception &cx_obj2)
{
	return (cx_obj1.getException() != cx_obj2.getException());
}

