//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.
#ifndef XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_EXCEPTION_H_
#define XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_EXCEPTION_H_

#include "application/TibAmxApplicationDefinitions.h"
#include "tibamx/databinding/cppdom/xml/TibcoXmlTypes.h"
#include "tibamx/databinding/cppdom/serializers/ArtifactSerializer.h"
#include "application/ApplicationSerializerFactory.h"
#include "tibamx/databinding/cppdom/xml/IntegerTypes.h"

using namespace TIBAMX_CORE_NAMESPACE;
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS
{
	class Exception : public virtual TIBAMX_CORE_NAMESPACE::AnyType
	{
	public:

	
		Exception();
		virtual ~Exception();

		Exception(const Exception &);
		Exception & operator=(const Exception &);

		virtual const TIBAMX_CORE_NAMESPACE::QName & get_type() const;

			
		virtual TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* getException();
		const virtual TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>* getException() const;
		TIBAMX_CORE_NAMESPACE::AnyType& addNewException();

		const TIBAMX_CORE_NAMESPACE::AnyType& getExceptionAt(size_t index) const;
		TIBAMX_CORE_NAMESPACE::AnyType& getExceptionAt(size_t index);

		const size_t getExceptionSize() const;
		size_t getExceptionSize();
		virtual void setException(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>&);
		virtual void setException(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*>*);

		void serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException);
		static const TIBAMX_CORE_NAMESPACE::QName cx_type;

	protected:
		void clone(const Exception &);

	private:
		TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::AnyType*> *exception;
	}; //END of Exception


	class ExceptionSerializer
	{
	public:

		static void serialize(XERCES_CPP_NAMESPACE::DOMElement* element, const void* input, Context* context) throw (ServiceDataException);
		static void* deserialize(DOMElementIterator& elementItr, void* returnValue, Context* context) throw (ServiceDataException);

	private:
		static void initialize();
		static void* getMemberValue(const std::string& memberName, const void* inputObject, int & cx_count) throw (ServiceDataException);
		static void setMemberValue(const std::string& memberName, void* inputObject, void* value) throw (ServiceDataException);

		static TIBAMX_CORE_NAMESPACE::ArtifactRoot* cx_artifactRoot;


	}; //END of ExceptionSerializer

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception &, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception &);
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception &, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::Exception &);

#endif
