//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "IOException.h"
namespace XSD_JAVA_IO_XSD
{
	const TIBAMX_CORE_NAMESPACE::QName IOException::cx_type("","IOException","http://io.java/xsd");
	
	IOException::IOException()
	{

	}

	IOException::~IOException()
	{

	}

	IOException::IOException(const IOException & cx_value)
	{

		clone(cx_value);
	}

	IOException::IOException(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception & cx_baseValue) 
				: XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception(cx_baseValue){}

	const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception& IOException::get_value() const
	{
		return *(XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception*)this;
	}

	void IOException::set_value(XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception& cx_value)
	{
		 XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception::operator=(cx_value);
	}

	IOException & IOException::operator=(const IOException & cx_obj)
	{
		if (this != &cx_obj) 
		{

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & IOException::get_type() const
	{
		return cx_type;
	}

	void IOException::clone(const IOException & cx_obj)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception::operator=(cx_obj);

	}

	void IOException::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{


		std::string cx_errorMsg("\"IOException\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* IOExceptionSerializer::cx_artifactRoot;

	void IOExceptionSerializer::initialize()
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

	}

	void IOExceptionSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &IOExceptionSerializer::getMemberValue;

		// Attribute Serialization.
		const std::vector<TIBAMX_CORE_NAMESPACE::ArtifactNode*> cx_nodes = cx_artifactRoot->getChildren();
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::attributeSerialize(cx_element,cx_input,*cx_nodes.at(i),cx_memberGetter);
		}

		// Serialize Base class contents.
		IOException* cx_paramValue = (IOException*)cx_input;
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception* cx_baseTypePointer = dynamic_cast<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception*>(cx_paramValue);
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::ExceptionSerializer::serialize(cx_element,cx_baseTypePointer,NULL);

		// Element hirarchy serialization.
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::complexTypeSerialize(cx_element,cx_input,*cx_nodes.at(i),cx_memberGetter);
		}
		// Remove prohibited attributes.
		TIBAMX_CORE_NAMESPACE::ArtifactSerializer::removeAttributes(cx_element,*cx_artifactRoot);
	}


	void* IOExceptionSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		IOException* cx_returnObject = (cx_returnValue != NULL)? (IOException*)cx_returnValue : new IOException();
		MemberValueSetterPtr cx_memberSetter = &IOExceptionSerializer::setMemberValue;

		// Attribute Deserialization.
		const std::vector<TIBAMX_CORE_NAMESPACE::ArtifactNode*> cx_nodes = cx_artifactRoot->getChildren();
		for(size_t i = 0; i < cx_nodes.size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::ArtifactSerializer::attributeDeserialize(cx_elementItr,cx_returnObject,*cx_nodes.at(i),cx_memberSetter);
		}

		// Call to parent serialization.
		IOException* cx_paramValue = (IOException*)cx_returnObject;
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception* cx_baseTypePointer = dynamic_cast<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception*>(cx_paramValue);
		DOMElementIterator originalItr = cx_elementItr;
		ComplexExtensionContext* cx_extensionContext = new ComplexExtensionContext();
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::ExceptionSerializer::deserialize(cx_elementItr,cx_baseTypePointer,cx_extensionContext);
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

	void* IOExceptionSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_JAVA_IO_XSD::IOException* cx_classObject = (XSD_JAVA_IO_XSD::IOException*)cx_inputObject;

		std::string cx_errorMsg("\"IOException\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void IOExceptionSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_JAVA_IO_XSD::IOException* cx_classObject = (XSD_JAVA_IO_XSD::IOException*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_JAVA_IO_XSD

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_JAVA_IO_XSD::IOException & cx_obj1, const XSD_JAVA_IO_XSD::IOException & cx_obj2)
{
	return (static_cast<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception>(cx_obj1) == static_cast<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception>(cx_obj2));
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_JAVA_IO_XSD::IOException & cx_obj1, const XSD_JAVA_IO_XSD::IOException &cx_obj2)
{
	return (static_cast<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception>(cx_obj1) != static_cast<XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception>(cx_obj2));
}

