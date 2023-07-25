
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
#define SAMPLE_BAT7_1_CPP1IMPL_NAMESPACE SampleNamespace
// ******************* USER INCLUDE SECTION START *****************
// ******************* USER INCLUDE SECTION END *******************

namespace SAMPLE_BAT7_1_CPP1IMPL_NAMESPACE
{
	/*
	 * Add initialization code here. This method is called once at component initialization.
	 */
	void SampleImpl::init() throw (TIBAMX_CORE_NAMESPACE::ApplicationException)
	{
		// ******************* USER CODE START *****************
		// ******************* USER CODE END *******************
	}

	/*
	 * Add finalization code here. This method is called once at component destruction.
	 */
	void SampleImpl::destroy() throw (TIBAMX_CORE_NAMESPACE::ApplicationException)
	{
		// ******************* USER CODE START *****************
		// ******************* USER CODE END *******************
	}

	
	
	TIBAMX_CORE_NAMESPACE::String*  SampleImpl::inOutFault(const TIBAMX_CORE_NAMESPACE::Base64Binary& parameters) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException ,XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationFault_dataFault)
	{
		// ******************* USER CODE START *****************
		return NULL;
		// ******************* USER CODE END *******************
	}


	void SampleImpl::in(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement& parameters) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException )
	{

	}

	XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperationResponse_dataElement*  SampleImpl::inOut(const XSD_ORG_EXAMPLE_WWW_ALLMEPSWSDLFILE::NewOperation_dataElement& parameters) throw (TIBAMX_CORE_NAMESPACE::TibcoRuntimeException )
	{
		// ******************* USER CODE START *****************
		std::cout<<"WARN: ******* In Cpp Component ******* "<<std::endl;
		return this->getAllMEPsWSDLFile_proxy().inOut(parameters);
		// ******************* USER CODE END *******************
	}
}