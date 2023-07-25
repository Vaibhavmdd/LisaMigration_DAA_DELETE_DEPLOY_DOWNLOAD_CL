//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "AddressResponse.h"
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD
{
	const TIBAMX_CORE_NAMESPACE::QName AddressResponse::cx_type("","AddressResponse","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
	
	AddressResponse::AddressResponse()
	{
		TIBAMX_CORE_NAMESPACE::QName addressResponseElementcx_qName("","AddressResponseElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
		this->addressResponseElement = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*>(addressResponseElementcx_qName);

	}

	AddressResponse::~AddressResponse()
	{
		SAFE_DELETE(this->addressResponseElement)

	}

	AddressResponse::AddressResponse(const AddressResponse & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName addressResponseElementcx_qName("","AddressResponseElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
		this->addressResponseElement = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*>(addressResponseElementcx_qName);

		clone(cx_value);
	}

	AddressResponse & AddressResponse::operator=(const AddressResponse & cx_obj)
	{
		if (this != &cx_obj) 
		{
			addressResponseElement->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & AddressResponse::get_type() const
	{
		return cx_type;
	}

	void AddressResponse::clone(const AddressResponse & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->addressResponseElement->clone<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement>(*(cx_obj.addressResponseElement));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*>* AddressResponse::getAddressResponseElement()
	{
		return this->addressResponseElement;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*>* AddressResponse::getAddressResponseElement() const
	{
		return this->addressResponseElement;
	}

	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement& AddressResponse::addNewAddressResponseElement()
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement* cx_obj = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement();
		this->addressResponseElement->push_back(cx_obj);
		return *cx_obj;
	}

	const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement& AddressResponse::getAddressResponseElementAt(size_t index) const
	{
		return *this->addressResponseElement->at(index);
	}

	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement& AddressResponse::getAddressResponseElementAt(size_t index)
	{
		return *this->addressResponseElement->at(index);
	}

	const size_t AddressResponse::getAddressResponseElementSize() const
	{
		return this->addressResponseElement->size();
	}

	size_t AddressResponse::getAddressResponseElementSize()
	{
		return this->addressResponseElement->size();
	}
			
	void AddressResponse::setAddressResponseElement(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*>& cx_obj)
	{	
		for(size_t i = 0; i < addressResponseElement->get_size(); i++)
		{
			SAFE_DELETE(addressResponseElement->at(i));
		}
		addressResponseElement->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement* cx_val = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement(*cx_obj.at(i));
			this->addressResponseElement->push_back(cx_val);
		}	
	}

	void AddressResponse::setAddressResponseElement(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*>* cx_obj)
	{	
		for(size_t i = 0; i < addressResponseElement->get_size(); i++)
		{
			SAFE_DELETE(addressResponseElement->at(i));
		}
		addressResponseElement->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement* cx_val = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement(*cx_obj->at(i));
			this->addressResponseElement->push_back(cx_val);
		}	
	}
	void AddressResponse::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "addressResponseElement")
		{
			this->addressResponseElement->push_back((XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElement*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"AddressResponse\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* AddressResponseSerializer::cx_artifactRoot;

	void AddressResponseSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "addressResponseElement", "addressResponseElement", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "AddressResponseElement", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", NULL, false, false, true, 0, 1, &XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElementSerializer::serialize, &XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseElementSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void AddressResponseSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &AddressResponseSerializer::getMemberValue;

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


	void* AddressResponseSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		AddressResponse* cx_returnObject = (cx_returnValue != NULL)? (AddressResponse*)cx_returnValue : new AddressResponse();
		MemberValueSetterPtr cx_memberSetter = &AddressResponseSerializer::setMemberValue;

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

	void* AddressResponseSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*)cx_inputObject;
		if(cx_memberName == "addressResponseElement")
		{
			if(1 < (int)cx_classObject->getAddressResponseElement()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"addressResponseElement\" has ";
				msgs << cx_classObject->getAddressResponseElement()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getAddressResponseElement()->size()) {
				return (void*)cx_classObject->getAddressResponseElement()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"AddressResponse\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void AddressResponseSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse & cx_obj2)
{
	return (cx_obj1.getAddressResponseElement() == cx_obj2.getAddressResponseElement());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse &cx_obj2)
{
	return (cx_obj1.getAddressResponseElement() != cx_obj2.getAddressResponseElement());
}

