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
#ifndef WSDL_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_ADDRESSREMOTEPORTTYPEINTERFACE_H_
#define WSDL_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_ADDRESSREMOTEPORTTYPEINTERFACE_H_

#include "application/TibAmxApplicationDefinitions.h"
#include "tibamx/databinding/cppdom/xml/TibcoXmlTypes.h"
#include "tibamx/databinding/cppdom/xml/IntegerTypes.h"
#include "tibamxcpp/utils/TibAmxCppDefinitions.h"
#include "tibamx/core/TibcoRuntimeException.h"
#include "xsd_com_tibco_amx_ejbbt_iqatest_companyaddress/AddressRequestResponseElement.h"
#include "xsd_com_tibco_amx_ejbbt_iqatest_companyaddress/RemoteExceptionFault.h"
#include "xsd_com_tibco_amx_ejbbt_iqatest_companyaddress_xsd/AddressRequest.h"

namespace WSDL_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS
{
	class AddressRemotePortTypeInterface
	{
	public:
		virtual XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement*  addressRequest(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest& addressRequestargs0) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException,XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionFault) = 0;

	}; //END of AddressRemotePortTypeInterface
} //END of WSDL_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS

#endif
