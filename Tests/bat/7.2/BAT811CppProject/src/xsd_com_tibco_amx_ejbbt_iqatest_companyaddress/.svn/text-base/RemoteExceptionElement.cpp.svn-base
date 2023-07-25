//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "RemoteExceptionElement.h"
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS
{
	const TIBAMX_CORE_NAMESPACE::QName RemoteExceptionElement::cx_type("","RemoteExceptionElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com");
	
	RemoteExceptionElement::RemoteExceptionElement()
	{
		TIBAMX_CORE_NAMESPACE::QName remoteExceptioncx_qName("","RemoteException","http://rmi.java/xsd");
		this->remoteException = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_JAVA_RMI_XSD::RemoteException*>(remoteExceptioncx_qName);

	}

	RemoteExceptionElement::~RemoteExceptionElement()
	{
		SAFE_DELETE(this->remoteException)

	}

	RemoteExceptionElement::RemoteExceptionElement(const RemoteExceptionElement & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName remoteExceptioncx_qName("","RemoteException","http://rmi.java/xsd");
		this->remoteException = new TIBAMX_CORE_NAMESPACE::ElementListT<XSD_JAVA_RMI_XSD::RemoteException*>(remoteExceptioncx_qName);

		clone(cx_value);
	}

	RemoteExceptionElement & RemoteExceptionElement::operator=(const RemoteExceptionElement & cx_obj)
	{
		if (this != &cx_obj) 
		{
			remoteException->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & RemoteExceptionElement::get_type() const
	{
		return cx_type;
	}

	void RemoteExceptionElement::clone(const RemoteExceptionElement & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->remoteException->clone<XSD_JAVA_RMI_XSD::RemoteException>(*(cx_obj.remoteException));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<XSD_JAVA_RMI_XSD::RemoteException*>* RemoteExceptionElement::getRemoteException()
	{
		return this->remoteException;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_JAVA_RMI_XSD::RemoteException*>* RemoteExceptionElement::getRemoteException() const
	{
		return this->remoteException;
	}

	XSD_JAVA_RMI_XSD::RemoteException& RemoteExceptionElement::addNewRemoteException()
	{
		XSD_JAVA_RMI_XSD::RemoteException* cx_obj = new XSD_JAVA_RMI_XSD::RemoteException();
		this->remoteException->push_back(cx_obj);
		return *cx_obj;
	}

	const XSD_JAVA_RMI_XSD::RemoteException& RemoteExceptionElement::getRemoteExceptionAt(size_t index) const
	{
		return *this->remoteException->at(index);
	}

	XSD_JAVA_RMI_XSD::RemoteException& RemoteExceptionElement::getRemoteExceptionAt(size_t index)
	{
		return *this->remoteException->at(index);
	}

	const size_t RemoteExceptionElement::getRemoteExceptionSize() const
	{
		return this->remoteException->size();
	}

	size_t RemoteExceptionElement::getRemoteExceptionSize()
	{
		return this->remoteException->size();
	}
			
	void RemoteExceptionElement::setRemoteException(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_JAVA_RMI_XSD::RemoteException*>& cx_obj)
	{	
		for(size_t i = 0; i < remoteException->get_size(); i++)
		{
			SAFE_DELETE(remoteException->at(i));
		}
		remoteException->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			XSD_JAVA_RMI_XSD::RemoteException* cx_val = new XSD_JAVA_RMI_XSD::RemoteException(*cx_obj.at(i));
			this->remoteException->push_back(cx_val);
		}	
	}

	void RemoteExceptionElement::setRemoteException(const TIBAMX_CORE_NAMESPACE::ElementListT<XSD_JAVA_RMI_XSD::RemoteException*>* cx_obj)
	{	
		for(size_t i = 0; i < remoteException->get_size(); i++)
		{
			SAFE_DELETE(remoteException->at(i));
		}
		remoteException->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			XSD_JAVA_RMI_XSD::RemoteException* cx_val = new XSD_JAVA_RMI_XSD::RemoteException(*cx_obj->at(i));
			this->remoteException->push_back(cx_val);
		}	
	}
	void RemoteExceptionElement::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "remoteException")
		{
			this->remoteException->push_back((XSD_JAVA_RMI_XSD::RemoteException*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"RemoteExceptionElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* RemoteExceptionElementSerializer::cx_artifactRoot;

	void RemoteExceptionElementSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "RemoteException", "remoteException", "ns", "http://companyaddress.iqatest.ejbbt.amx.tibco.com", "RemoteException", "ax21", "http://rmi.java/xsd", NULL, false, false, true, 0, 1, &XSD_JAVA_RMI_XSD::RemoteExceptionSerializer::serialize, &XSD_JAVA_RMI_XSD::RemoteExceptionSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);

	}

	void RemoteExceptionElementSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &RemoteExceptionElementSerializer::getMemberValue;

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


	void* RemoteExceptionElementSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		RemoteExceptionElement* cx_returnObject = (cx_returnValue != NULL)? (RemoteExceptionElement*)cx_returnValue : new RemoteExceptionElement();
		MemberValueSetterPtr cx_memberSetter = &RemoteExceptionElementSerializer::setMemberValue;

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

	void* RemoteExceptionElementSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement*)cx_inputObject;
		if(cx_memberName == "remoteException")
		{
			if(1 < (int)cx_classObject->getRemoteException()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"remoteException\" has ";
				msgs << cx_classObject->getRemoteException()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getRemoteException()->size()) {
				return (void*)cx_classObject->getRemoteException()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"RemoteExceptionElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void RemoteExceptionElementSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement & cx_obj2)
{
	return (cx_obj1.getRemoteException() == cx_obj2.getRemoteException());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionElement &cx_obj2)
{
	return (cx_obj1.getRemoteException() != cx_obj2.getRemoteException());
}

