//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.
  
//THIS CODE HAS BEEN GENERATED BY A TOOL. DO NOT EDIT. 
#ifndef XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE_NEWOPERATIONFAULT_DATAFAULT_H_
#define XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE_NEWOPERATIONFAULT_DATAFAULT_H_

#include "application/TibAmxApplicationDefinitions.h"
#include "tibamx/databinding/cppdom/xml/TibcoXmlTypes.h"
#include "tibamxcpp/utils/TibAmxCppDefinitions.h"
#include "tibamx/databinding/cppdom/serializers/Context.h"
#include "tibamx/core/TibcoRuntimeException.h" 
#include "xsd_org_example_www_allmepswsdlfile/NewOperationFault_dataElement.h"

namespace XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE
{
	class NewOperationFault_dataFault
	{
	public:

		NewOperationFault_dataFault();
		NewOperationFault_dataFault(XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement& value) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException);
		NewOperationFault_dataFault(const NewOperationFault_dataFault &);
		virtual ~NewOperationFault_dataFault();

		const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement& get_value() const;
		void set_value(XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement& value);

		NewOperationFault_dataFault & operator=(const NewOperationFault_dataFault &);

	private:
		XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataElement* t_value;
	};

	class NewOperationFault_dataFaultSerializer
	{
	public:
		static void serialize(XERCES_CPP_NAMESPACE::DOMElement* element, const void* input, TIBAMX_CORE_NAMESPACE::Context* context) throw (TIBAMX_CORE_NAMESPACE::ServiceDataException);
		static void* deserialize(TIBAMX_CORE_NAMESPACE::DOMElementIterator& elementItr, void* returnValue, TIBAMX_CORE_NAMESPACE::Context* context) throw (TIBAMX_CORE_NAMESPACE::ServiceDataException);
		static std::string serialize(const void* input, TIBAMX_CORE_NAMESPACE::Context* context) throw (TIBAMX_CORE_NAMESPACE::ServiceDataException);
		static void* deserialize(const std::string& inputString, void* returnValue, TIBAMX_CORE_NAMESPACE::Context* context) throw (TIBAMX_CORE_NAMESPACE::ServiceDataException);
	};
}

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFault &, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFault &);
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFault &, const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFault &);

#endif
