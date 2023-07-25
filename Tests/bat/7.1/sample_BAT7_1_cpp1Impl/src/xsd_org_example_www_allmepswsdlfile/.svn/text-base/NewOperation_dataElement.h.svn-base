//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.
#ifndef XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE_NEWOPERATION_DATAELEMENT_H_
#define XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE_NEWOPERATION_DATAELEMENT_H_

#include "application/TibAmxApplicationDefinitions.h"
#include "tibamx/databinding/cppdom/xml/TibcoXmlTypes.h"
#include "tibamx/databinding/cppdom/serializers/ArtifactSerializer.h"
#include "application/ApplicationSerializerFactory.h"
#include "tibamx/databinding/cppdom/xml/IntegerTypes.h"

using namespace TIBAMX_CORE_NAMESPACE;
namespace XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE
{
	class NewOperation_dataElement : public virtual TIBAMX_CORE_NAMESPACE::AnyType
	{
	public:

	
		NewOperation_dataElement();
		virtual ~NewOperation_dataElement();

		NewOperation_dataElement(const NewOperation_dataElement &);
		NewOperation_dataElement & operator=(const NewOperation_dataElement &);

		virtual const TIBAMX_CORE_NAMESPACE::QName & get_type() const;

			
		virtual TIBAMX_CORE_NAMESPACE::String* getIn();
		const virtual TIBAMX_CORE_NAMESPACE::String* getIn() const;
		virtual void setIn(const TIBAMX_CORE_NAMESPACE::String&);
		virtual void setIn(const TIBAMX_CORE_NAMESPACE::String*);
		void setIn(const char* cx_obj);

		void serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException);
		static const TIBAMX_CORE_NAMESPACE::QName cx_type;

	protected:
		void clone(const NewOperation_dataElement &);

	private:
		TIBAMX_CORE_NAMESPACE::String *in;
	}; //END of NewOperation_dataElement


	class NewOperation_dataElementSerializer
	{
	public:

		static void serialize(XERCES_CPP_NAMESPACE::DOMElement* element, const void* input, Context* context) throw (ServiceDataException);
		static void* deserialize(DOMElementIterator& elementItr, void* returnValue, Context* context) throw (ServiceDataException);
		static std::string serialize(const void* input, Context* context) throw (ServiceDataException);
		static void* deserialize(const std::string& inputString, void* returnValue, Context* context) throw (ServiceDataException);

	private:
		static void initialize();
		static void* getMemberValue(const std::string& memberName, const void* inputObject, int & cx_count) throw (ServiceDataException);
		static void setMemberValue(const std::string& memberName, void* inputObject, void* value) throw (ServiceDataException);

		static TIBAMX_CORE_NAMESPACE::ArtifactRoot* cx_artifactRoot;


	}; //END of NewOperation_dataElementSerializer

} //END of XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement &, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement &);
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement &, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement &);

#endif
