//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.
#ifndef XSD_JAVA_RMI_XSD_REMOTEEXCEPTION_H_
#define XSD_JAVA_RMI_XSD_REMOTEEXCEPTION_H_

#include "application/TibAmxApplicationDefinitions.h"
#include "tibamx/databinding/cppdom/xml/TibcoXmlTypes.h"
#include "tibamx/databinding/cppdom/serializers/ArtifactSerializer.h"
#include "application/ApplicationSerializerFactory.h"
#include "tibamx/databinding/cppdom/xml/IntegerTypes.h"
#include "xsd_java_io_xsd/IOException.h"

using namespace TIBAMX_CORE_NAMESPACE;
namespace XSD_JAVA_RMI_XSD
{
	class RemoteException : public virtual XSD_JAVA_IO_XSD::IOException
	{
	public:

	
		RemoteException();
		virtual ~RemoteException();

		RemoteException(const RemoteException &);
		RemoteException(const XSD_JAVA_IO_XSD::IOException &);

		const XSD_JAVA_IO_XSD::IOException& get_value() const;
		void set_value(XSD_JAVA_IO_XSD::IOException& );

		RemoteException & operator=(const RemoteException &);

		virtual const TIBAMX_CORE_NAMESPACE::QName & get_type() const;

			
		virtual TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* getMessage();
		const virtual TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* getMessage() const;
		TIBAMX_CORE_NAMESPACE::String& addNewMessage();

		const TIBAMX_CORE_NAMESPACE::String& getMessageAt(size_t index) const;
		TIBAMX_CORE_NAMESPACE::String& getMessageAt(size_t index);

		const size_t getMessageSize() const;
		size_t getMessageSize();
		virtual void setMessage(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>&);
		virtual void setMessage(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>*);
			
		virtual TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* getCause();
		const virtual TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* getCause() const;
		TIBAMX_CORE_NAMESPACE::AnyType& addNewCause();

		const TIBAMX_CORE_NAMESPACE::AnyType& getCauseAt(size_t index) const;
		TIBAMX_CORE_NAMESPACE::AnyType& getCauseAt(size_t index);

		const size_t getCauseSize() const;
		size_t getCauseSize();
		virtual void setCause(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>&);
		virtual void setCause(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>*);

		void serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException);
		static const TIBAMX_CORE_NAMESPACE::QName cx_type;

	protected:
		void clone(const RemoteException &);

	private:
		TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*> *message;
		TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*> *cause;
	}; //END of RemoteException


	class RemoteExceptionSerializer
	{
	public:

		static void serialize(XERCES_CPP_NAMESPACE::DOMElement* element, const void* input, Context* context) throw (ServiceDataException);
		static void* deserialize(DOMElementIterator& elementItr, void* returnValue, Context* context) throw (ServiceDataException);

	private:
		static void initialize();
		static void* getMemberValue(const std::string& memberName, const void* inputObject, int & cx_count) throw (ServiceDataException);
		static void setMemberValue(const std::string& memberName, void* inputObject, void* value) throw (ServiceDataException);

		static TIBAMX_CORE_NAMESPACE::ArtifactRoot* cx_artifactRoot;


	}; //END of RemoteExceptionSerializer

} //END of XSD_JAVA_RMI_XSD

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_JAVA_RMI_XSD::RemoteException &, const XSD_JAVA_RMI_XSD::RemoteException &);
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_JAVA_RMI_XSD::RemoteException &, const XSD_JAVA_RMI_XSD::RemoteException &);

#endif
