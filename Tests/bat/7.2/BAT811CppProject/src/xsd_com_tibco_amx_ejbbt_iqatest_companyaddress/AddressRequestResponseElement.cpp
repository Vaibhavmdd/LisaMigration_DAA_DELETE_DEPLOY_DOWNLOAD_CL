//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "AddressRequestResponseElement.h"
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS
{
	const TIBAMX_CORE_NAMESPACE::QName AddressRequestResponseElement::cx_type("","addressRequestResponseElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com");
	
	AddressRequestResponseElement::AddressRequestResponseElement()
	{
		TIBAMX_CORE_NAMESPACE::QName _returncx_qName("","AddressResponse","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
		this->_return = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*>(_returncx_qName);

	}

	AddressRequestResponseElement::~AddressRequestResponseElement()
	{
		SAFE_DELETE(this->_return)

	}

	AddressRequestResponseElement::AddressRequestResponseElement(const AddressRequestResponseElement & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName _returncx_qName("","AddressResponse","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
		this->_return = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*>(_returncx_qName);

		clone(cx_value);
	}

	AddressRequestResponseElement & AddressRequestResponseElement::operator=(const AddressRequestResponseElement & cx_obj)
	{
		if (this != &cx_obj) 
		{
			_return->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & AddressRequestResponseElement::get_type() const
	{
		return cx_type;
	}

	void AddressRequestResponseElement::clone(const AddressRequestResponseElement & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->_return->clone<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse>(*(cx_obj._return));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*>* AddressRequestResponseElement::get_return()
	{
		return this->_return;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*>* AddressRequestResponseElement::get_return() const
	{
		return this->_return;
	}

	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse& AddressRequestResponseElement::addNew_return()
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse* cx_obj = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse();
		this->_return->push_back(cx_obj);
		return *cx_obj;
	}

	const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse& AddressRequestResponseElement::get_returnAt(size_t index) const
	{
		return *this->_return->at(index);
	}

	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse& AddressRequestResponseElement::get_returnAt(size_t index)
	{
		return *this->_return->at(index);
	}

	const size_t AddressRequestResponseElement::get_returnSize() const
	{
		return this->_return->size();
	}

	size_t AddressRequestResponseElement::get_returnSize()
	{
		return this->_return->size();
	}
			
	void AddressRequestResponseElement::set_return(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*>& cx_obj)
	{	
		for(size_t i = 0; i < _return->get_size(); i++)
		{
			SAFE_DELETE(_return->at(i));
		}
		_return->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse* cx_val = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse(*cx_obj.at(i));
			this->_return->push_back(cx_val);
		}	
	}

	void AddressRequestResponseElement::set_return(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*>* cx_obj)
	{	
		for(size_t i = 0; i < _return->get_size(); i++)
		{
			SAFE_DELETE(_return->at(i));
		}
		_return->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse* cx_val = new XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse(*cx_obj->at(i));
			this->_return->push_back(cx_val);
		}	
	}
	void AddressRequestResponseElement::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "_return")
		{
			this->_return->push_back((XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponse*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"AddressRequestResponseElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* AddressRequestResponseElementSerializer::cx_artifactRoot;

	void AddressRequestResponseElementSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "return", "_return", "ns", "http://companyaddress.iqatest.ejbbt.amx.tibco.com", "AddressResponse", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", NULL, false, false, true, 0, 1, &XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseSerializer::serialize, &XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressResponseSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void AddressRequestResponseElementSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &AddressRequestResponseElementSerializer::getMemberValue;

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


	void* AddressRequestResponseElementSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		AddressRequestResponseElement* cx_returnObject = (cx_returnValue != NULL)? (AddressRequestResponseElement*)cx_returnValue : new AddressRequestResponseElement();
		MemberValueSetterPtr cx_memberSetter = &AddressRequestResponseElementSerializer::setMemberValue;

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

	void* AddressRequestResponseElementSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement*)cx_inputObject;
		if(cx_memberName == "_return")
		{
			if(1 < (int)cx_classObject->get_return()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"_return\" has ";
				msgs << cx_classObject->get_return()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->get_return()->size()) {
				return (void*)cx_classObject->get_return()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"AddressRequestResponseElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void AddressRequestResponseElementSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement & cx_obj2)
{
	return (cx_obj1.get_return() == cx_obj2.get_return());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement &cx_obj2)
{
	return (cx_obj1.get_return() != cx_obj2.get_return());
}

