//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "AddressRequest.h"
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD
{
	const TIBAMX_CORE_NAMESPACE::QName AddressRequest::cx_type("","AddressRequest","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
	
	AddressRequest::AddressRequest()
	{
		TIBAMX_CORE_NAMESPACE::QName addressRequestElementcx_qName("","AddressRequestElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
		this->addressRequestElement = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*>(addressRequestElementcx_qName);

	}

	AddressRequest::~AddressRequest()
	{
		SAFE_DELETE(this->addressRequestElement)

	}

	AddressRequest::AddressRequest(const AddressRequest & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName addressRequestElementcx_qName("","AddressRequestElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
		this->addressRequestElement = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*>(addressRequestElementcx_qName);

		clone(cx_value);
	}

	AddressRequest & AddressRequest::operator=(const AddressRequest & cx_obj)
	{
		if (this != &cx_obj) 
		{
			addressRequestElement->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & AddressRequest::get_type() const
	{
		return cx_type;
	}

	void AddressRequest::clone(const AddressRequest & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->addressRequestElement->clone<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement>(*(cx_obj.addressRequestElement));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*>* AddressRequest::getAddressRequestElement()
	{
		return this->addressRequestElement;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*>* AddressRequest::getAddressRequestElement() const
	{
		return this->addressRequestElement;
	}

	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement& AddressRequest::addNewAddressRequestElement()
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement* cx_obj = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement();
		this->addressRequestElement->push_back(cx_obj);
		return *cx_obj;
	}

	const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement& AddressRequest::getAddressRequestElementAt(size_t index) const
	{
		return *this->addressRequestElement->at(index);
	}

	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement& AddressRequest::getAddressRequestElementAt(size_t index)
	{
		return *this->addressRequestElement->at(index);
	}

	const size_t AddressRequest::getAddressRequestElementSize() const
	{
		return this->addressRequestElement->size();
	}

	size_t AddressRequest::getAddressRequestElementSize()
	{
		return this->addressRequestElement->size();
	}
			
	void AddressRequest::setAddressRequestElement(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*>& cx_obj)
	{	
		for(size_t i = 0; i < addressRequestElement->get_size(); i++)
		{
			SAFE_DELETE(addressRequestElement->at(i));
		}
		addressRequestElement->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement* cx_val = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement(*cx_obj.at(i));
			this->addressRequestElement->push_back(cx_val);
		}	
	}

	void AddressRequest::setAddressRequestElement(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*>* cx_obj)
	{	
		for(size_t i = 0; i < addressRequestElement->get_size(); i++)
		{
			SAFE_DELETE(addressRequestElement->at(i));
		}
		addressRequestElement->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement* cx_val = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement(*cx_obj->at(i));
			this->addressRequestElement->push_back(cx_val);
		}	
	}
	void AddressRequest::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "addressRequestElement")
		{
			this->addressRequestElement->push_back((XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"AddressRequest\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* AddressRequestSerializer::cx_artifactRoot;

	void AddressRequestSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "addressRequestElement", "addressRequestElement", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "AddressRequestElement", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", NULL, false, false, true, 0, 1, &XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElementSerializer::serialize, &XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElementSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void AddressRequestSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &AddressRequestSerializer::getMemberValue;

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


	void* AddressRequestSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		AddressRequest* cx_returnObject = (cx_returnValue != NULL)? (AddressRequest*)cx_returnValue : new AddressRequest();
		MemberValueSetterPtr cx_memberSetter = &AddressRequestSerializer::setMemberValue;

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

	void* AddressRequestSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest*)cx_inputObject;
		if(cx_memberName == "addressRequestElement")
		{
			if(1 < (int)cx_classObject->getAddressRequestElement()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"addressRequestElement\" has ";
				msgs << cx_classObject->getAddressRequestElement()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getAddressRequestElement()->size()) {
				return (void*)cx_classObject->getAddressRequestElement()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"AddressRequest\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void AddressRequestSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest & cx_obj2)
{
	return (cx_obj1.getAddressRequestElement() == cx_obj2.getAddressRequestElement());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest &cx_obj2)
{
	return (cx_obj1.getAddressRequestElement() != cx_obj2.getAddressRequestElement());
}

