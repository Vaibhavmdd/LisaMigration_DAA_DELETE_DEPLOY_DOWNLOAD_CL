//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "RemoteException.h"
namespace XSD_JAVA_RMI_XSD
{
	const TIBAMX_CORE_NAMESPACE::QName RemoteException::cx_type("","RemoteException","http://rmi.java/xsd");
	
	RemoteException::RemoteException()
	{
		TIBAMX_CORE_NAMESPACE::QName messagecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->message = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(messagecx_qName);
		TIBAMX_CORE_NAMESPACE::QName causecx_qName("","AnyType","http://www.w3.org/2001/XMLSchema");
		this->cause = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>(causecx_qName);

	}

	RemoteException::~RemoteException()
	{
		SAFE_DELETE(this->message)
		SAFE_DELETE(this->cause)

	}

	RemoteException::RemoteException(const RemoteException & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName messagecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->message = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(messagecx_qName);
		TIBAMX_CORE_NAMESPACE::QName causecx_qName("","AnyType","http://www.w3.org/2001/XMLSchema");
		this->cause = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>(causecx_qName);

		clone(cx_value);
	}

	RemoteException::RemoteException(const XSD_JAVA_IO_XSD::IOException & cx_baseValue) 
				: XSD_JAVA_IO_XSD::IOException(cx_baseValue){}

	const XSD_JAVA_IO_XSD::IOException& RemoteException::get_value() const
	{
		return *(XSD_JAVA_IO_XSD::IOException*)this;
	}

	void RemoteException::set_value(XSD_JAVA_IO_XSD::IOException& cx_value)
	{
		 XSD_JAVA_IO_XSD::IOException::operator=(cx_value);
	}

	RemoteException & RemoteException::operator=(const RemoteException & cx_obj)
	{
		if (this != &cx_obj) 
		{
			message->clear();
			cause->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & RemoteException::get_type() const
	{
		return cx_type;
	}

	void RemoteException::clone(const RemoteException & cx_obj)
	{
		XSD_JAVA_IO_XSD::IOException::operator=(cx_obj);
		this->message->clone<TIBAMX_CORE_NAMESPACE::String>(*(cx_obj.message));
		this->cause->clone<TIBAMX_CORE_NAMESPACE::AnyType>(*(cx_obj.cause));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* RemoteException::getMessage()
	{
		return this->message;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* RemoteException::getMessage() const
	{
		return this->message;
	}

	TIBAMX_CORE_NAMESPACE::String& RemoteException::addNewMessage()
	{
		TIBAMX_CORE_NAMESPACE::String* cx_obj = new TIBAMX_CORE_NAMESPACE::String();
		this->message->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::String& RemoteException::getMessageAt(size_t index) const
	{
		return *this->message->at(index);
	}

	TIBAMX_CORE_NAMESPACE::String& RemoteException::getMessageAt(size_t index)
	{
		return *this->message->at(index);
	}

	const size_t RemoteException::getMessageSize() const
	{
		return this->message->size();
	}

	size_t RemoteException::getMessageSize()
	{
		return this->message->size();
	}
			
	void RemoteException::setMessage(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>& cx_obj)
	{	
		for(size_t i = 0; i < message->get_size(); i++)
		{
			SAFE_DELETE(message->at(i));
		}
		message->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj.at(i));
			this->message->push_back(cx_val);
		}	
	}

	void RemoteException::setMessage(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* cx_obj)
	{	
		for(size_t i = 0; i < message->get_size(); i++)
		{
			SAFE_DELETE(message->at(i));
		}
		message->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj->at(i));
			this->message->push_back(cx_val);
		}	
	}

	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* RemoteException::getCause()
	{
		return this->cause;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* RemoteException::getCause() const
	{
		return this->cause;
	}

	TIBAMX_CORE_NAMESPACE::AnyType& RemoteException::addNewCause()
	{
		TIBAMX_CORE_NAMESPACE::AnyType* cx_obj = new TIBAMX_CORE_NAMESPACE::AnyType();
		this->cause->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::AnyType& RemoteException::getCauseAt(size_t index) const
	{
		return *this->cause->at(index);
	}

	TIBAMX_CORE_NAMESPACE::AnyType& RemoteException::getCauseAt(size_t index)
	{
		return *this->cause->at(index);
	}

	const size_t RemoteException::getCauseSize() const
	{
		return this->cause->size();
	}

	size_t RemoteException::getCauseSize()
	{
		return this->cause->size();
	}
			
	void RemoteException::setCause(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>& cx_obj)
	{	
		for(size_t i = 0; i < cause->get_size(); i++)
		{
			SAFE_DELETE(cause->at(i));
		}
		cause->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::AnyType* cx_val = new TIBAMX_CORE_NAMESPACE::AnyType(*cx_obj.at(i));
			this->cause->push_back(cx_val);
		}	
	}

	void RemoteException::setCause(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* cx_obj)
	{	
		for(size_t i = 0; i < cause->get_size(); i++)
		{
			SAFE_DELETE(cause->at(i));
		}
		cause->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::AnyType* cx_val = new TIBAMX_CORE_NAMESPACE::AnyType(*cx_obj->at(i));
			this->cause->push_back(cx_val);
		}	
	}
	void RemoteException::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "message")
		{
			this->message->push_back((TIBAMX_CORE_NAMESPACE::String*)cx_value);
			return;
		}
		if(cx_memberName == "cause")
		{
			this->cause->push_back((TIBAMX_CORE_NAMESPACE::AnyType*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"RemoteException\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* RemoteExceptionSerializer::cx_artifactRoot;

	void RemoteExceptionSerializer::initialize()
	{
		if(cx_artifactRoot != NULL)
		{
			return;
		}
		cx_artifactRoot = new TIBAMX_CORE_NAMESPACE::ArtifactRoot();
		cx_artifactRoot->setApplicationSerializerFactory(&ApplicationSerializerFactory::getSerializerFromQName);
		cx_artifactRoot->setApplicationDeSerializerFactory(&ApplicationSerializerFactory::getDeserializerFromQName);
		
		TIBAMX_CORE_NAMESPACE::ArtifactRoot* cx_artifactNode = cx_artifactRoot;
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode0= new TIBAMX_CORE_NAMESPACE::ArtifactNode(COMPLEXCONTENTEXTENSION, UNQUALIFIED, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, 1, 1, NULL, NULL, NULL, NULL, 0, NULL);
		cx_artifactNode->addChildArtifact(cx_artifactNode0);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(SEQUENCE, UNQUALIFIED, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, 1, 1, NULL, NULL, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode000= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "cause", "cause", "ax21", "http://rmi.java/xsd", "AnyType", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::AnyTypeSerializer::serialize, &TIBAMX_CORE_NAMESPACE::AnyTypeSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode00->addChildArtifact(cx_artifactNode000);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode001= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "message", "message", "ax21", "http://rmi.java/xsd", "String", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode00->addChildArtifact(cx_artifactNode001);

	}

	void RemoteExceptionSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &RemoteExceptionSerializer::getMemberValue;

		// Attribute Serialization.
		const std::vector<TIBAMX_CORE_NAMESPACE::ArtifactNode*> cx_nodes = cx_artifactRoot->getChildren();
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::attributeSerialize(cx_element,cx_input,*cx_nodes.at(i),cx_memberGetter);
		}

		// Serialize Base class contents.
		RemoteException* cx_paramValue = (RemoteException*)cx_input;
		XSD_JAVA_IO_XSD::IOException* cx_baseTypePointer = dynamic_cast<XSD_JAVA_IO_XSD::IOException*>(cx_paramValue);
		XSD_JAVA_IO_XSD::IOExceptionSerializer::serialize(cx_element,cx_baseTypePointer,NULL);

		// Element hirarchy serialization.
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::complexTypeSerialize(cx_element,cx_input,*cx_nodes.at(i),cx_memberGetter);
		}
		// Remove prohibited attributes.
		TIBAMX_CORE_NAMESPACE::ArtifactSerializer::removeAttributes(cx_element,*cx_artifactRoot);
	}


	void* RemoteExceptionSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		RemoteException* cx_returnObject = (cx_returnValue != NULL)? (RemoteException*)cx_returnValue : new RemoteException();
		MemberValueSetterPtr cx_memberSetter = &RemoteExceptionSerializer::setMemberValue;

		// Attribute Deserialization.
		const std::vector<TIBAMX_CORE_NAMESPACE::ArtifactNode*> cx_nodes = cx_artifactRoot->getChildren();
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::attributeDeserialize(cx_elementItr,cx_returnObject,*cx_nodes.at(i),cx_memberSetter);
		}

		// Call to parent serialization.
		RemoteException* cx_paramValue = (RemoteException*)cx_returnObject;
		XSD_JAVA_IO_XSD::IOException* cx_baseTypePointer = dynamic_cast<XSD_JAVA_IO_XSD::IOException*>(cx_paramValue);
		DOMElementIterator originalItr = cx_elementItr;
		ComplexExtensionContext* cx_extensionContext = new ComplexExtensionContext();
		XSD_JAVA_IO_XSD::IOExceptionSerializer::deserialize(cx_elementItr,cx_baseTypePointer,cx_extensionContext);
		delete cx_extensionContext;

		// Element hirarchy serialization.
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::complexTypeDeserialize(cx_elementItr,cx_returnObject,*cx_nodes.at(i),cx_memberSetter);
		}
		if(cx_context == NULL)
		{
			if(cx_elementItr.hasNextElement()) 
			{
				std::ostringstream msgs;
				msgs << "Element contents are invalid, unprocessed elements are left serialisation of element : " << XmlUtils::transcode(originalItr.getNextElementName());
				msgs << "\nUnprocessed Elements are : ";
				while(cx_elementItr.hasNextElement()) {
					msgs << cx_elementItr.getNextElementName() << ", ";
					++cx_elementItr;
				}
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
	
			cx_elementItr = originalItr;
			++cx_elementItr;
		}
		return cx_returnObject;
	}

	void* RemoteExceptionSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_JAVA_RMI_XSD::RemoteException* cx_classObject = (XSD_JAVA_RMI_XSD::RemoteException*)cx_inputObject;
		if(cx_memberName == "message")
		{
			if(1 < (int)cx_classObject->getMessage()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"message\" has ";
				msgs << cx_classObject->getMessage()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getMessage()->size()) {
				return (void*)cx_classObject->getMessage()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}
		if(cx_memberName == "cause")
		{
			if(1 < (int)cx_classObject->getCause()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"cause\" has ";
				msgs << cx_classObject->getCause()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getCause()->size()) {
				return (void*)cx_classObject->getCause()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"RemoteException\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void RemoteExceptionSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_JAVA_RMI_XSD::RemoteException* cx_classObject = (XSD_JAVA_RMI_XSD::RemoteException*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_JAVA_RMI_XSD

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_JAVA_RMI_XSD::RemoteException & cx_obj1, const XSD_JAVA_RMI_XSD::RemoteException & cx_obj2)
{
	return (cx_obj1.getMessage() == cx_obj2.getMessage() &&
		cx_obj1.getCause() == cx_obj2.getCause() &&
		static_cast<XSD_JAVA_IO_XSD::IOException>(cx_obj1) == static_cast<XSD_JAVA_IO_XSD::IOException>(cx_obj2));
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_JAVA_RMI_XSD::RemoteException & cx_obj1, const XSD_JAVA_RMI_XSD::RemoteException &cx_obj2)
{
	return (cx_obj1.getMessage() != cx_obj2.getMessage() ||
		cx_obj1.getCause() != cx_obj2.getCause() ||
		static_cast<XSD_JAVA_IO_XSD::IOException>(cx_obj1) != static_cast<XSD_JAVA_IO_XSD::IOException>(cx_obj2));
}

