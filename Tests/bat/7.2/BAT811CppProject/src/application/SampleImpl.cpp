
//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "SampleImpl.h"
#define BAT811CPPPROJECT_NAMESPACE SampleNamespace

namespace BAT811CPPPROJECT_NAMESPACE
{
	/*
	 * Add initialization code here. This method is called once at component initialization.
	 */
	void SampleImpl::init() throw (TIBAMX_CORE_NAMESPACE::ApplicationException)
	{
		
	}

	/*
	 * Add finalization code here. This method is called once at component destruction.
	 */
	void SampleImpl::destroy() throw (TIBAMX_CORE_NAMESPACE::ApplicationException)
	{
		
	}


	XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement*  SampleImpl::addressRequest(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequest& addressRequestargs0) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException ,XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::RemoteExceptionFault)
	{
		std::cout<<"Inside cpp Component---------------"<<std::endl;
		std::cout<<"Display response-----------"<<std::endl;
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS::AddressRequestResponseElement* ref=getAddressRemotePortType_proxy().addressRequest(addressRequestargs0);
		return ref;
	}
}