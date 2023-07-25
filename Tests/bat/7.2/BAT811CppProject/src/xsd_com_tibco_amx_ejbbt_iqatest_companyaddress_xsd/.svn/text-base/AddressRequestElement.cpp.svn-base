//(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
//LEGAL NOTICE:  This source code is provided to specific authorized end
//users pursuant to a separate license agreement.  You MAY NOT use this
//source code if you do not have a separate license from TIBCO Software
//Inc.  Except as expressly set forth in such license agreement, this
//source code, or any portion thereof, may not be used, modified,
//reproduced, transmitted, or distributed in any form or by any means,
//electronic or mechanical, without written permission from  TIBCO
//Software Inc.

#include "AddressRequestElement.h"
namespace XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD
{
	const TIBAMX_CORE_NAMESPACE::QName AddressRequestElement::cx_type("","AddressRequestElement","http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd");
	
	AddressRequestElement::AddressRequestElement()
	{
		TIBAMX_CORE_NAMESPACE::QName zipcx_qName("","Int","http://www.w3.org/2001/XMLSchema");
		this->zip = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::Int*>(zipcx_qName);
		TIBAMX_CORE_NAMESPACE::QName addresscx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->address = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(addresscx_qName);
		TIBAMX_CORE_NAMESPACE::QName statecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->state = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(statecx_qName);
		TIBAMX_CORE_NAMESPACE::QName companyNamecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->companyName = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(companyNamecx_qName);
		TIBAMX_CORE_NAMESPACE::QName callServicecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->callService = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(callServicecx_qName);
		TIBAMX_CORE_NAMESPACE::QName citycx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->city = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(citycx_qName);

	}

	AddressRequestElement::~AddressRequestElement()
	{
		SAFE_DELETE(this->zip)
		SAFE_DELETE(this->address)
		SAFE_DELETE(this->state)
		SAFE_DELETE(this->companyName)
		SAFE_DELETE(this->callService)
		SAFE_DELETE(this->city)

	}

	AddressRequestElement::AddressRequestElement(const AddressRequestElement & cx_value)
	{
		TIBAMX_CORE_NAMESPACE::QName zipcx_qName("","Int","http://www.w3.org/2001/XMLSchema");
		this->zip = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::Int*>(zipcx_qName);
		TIBAMX_CORE_NAMESPACE::QName addresscx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->address = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(addresscx_qName);
		TIBAMX_CORE_NAMESPACE::QName statecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->state = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(statecx_qName);
		TIBAMX_CORE_NAMESPACE::QName companyNamecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->companyName = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(companyNamecx_qName);
		TIBAMX_CORE_NAMESPACE::QName callServicecx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->callService = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(callServicecx_qName);
		TIBAMX_CORE_NAMESPACE::QName citycx_qName("","String","http://www.w3.org/2001/XMLSchema");
		this->city = new TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>(citycx_qName);

		clone(cx_value);
	}

	AddressRequestElement & AddressRequestElement::operator=(const AddressRequestElement & cx_obj)
	{
		if (this != &cx_obj) 
		{
			zip->clear();
			address->clear();
			state->clear();
			companyName->clear();
			callService->clear();
			city->clear();

			clone(cx_obj);
		}
		return (*this);
	}

	const TIBAMX_CORE_NAMESPACE::QName & AddressRequestElement::get_type() const
	{
		return cx_type;
	}

	void AddressRequestElement::clone(const AddressRequestElement & cx_obj)
	{
		TIBAMX_CORE_NAMESPACE::AnyType::operator=(cx_obj);
		this->zip->clone<TIBAMX_CORE_NAMESPACE::Int>(*(cx_obj.zip));
		this->address->clone<TIBAMX_CORE_NAMESPACE::String>(*(cx_obj.address));
		this->state->clone<TIBAMX_CORE_NAMESPACE::String>(*(cx_obj.state));
		this->companyName->clone<TIBAMX_CORE_NAMESPACE::String>(*(cx_obj.companyName));
		this->callService->clone<TIBAMX_CORE_NAMESPACE::String>(*(cx_obj.callService));
		this->city->clone<TIBAMX_CORE_NAMESPACE::String>(*(cx_obj.city));

	}


	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::Int*>* AddressRequestElement::getZip()
	{
		return this->zip;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::Int*>* AddressRequestElement::getZip() const
	{
		return this->zip;
	}

	TIBAMX_CORE_NAMESPACE::Int& AddressRequestElement::addNewZip()
	{
		TIBAMX_CORE_NAMESPACE::Int* cx_obj = new TIBAMX_CORE_NAMESPACE::Int();
		this->zip->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::Int& AddressRequestElement::getZipAt(size_t index) const
	{
		return *this->zip->at(index);
	}

	TIBAMX_CORE_NAMESPACE::Int& AddressRequestElement::getZipAt(size_t index)
	{
		return *this->zip->at(index);
	}

	const size_t AddressRequestElement::getZipSize() const
	{
		return this->zip->size();
	}

	size_t AddressRequestElement::getZipSize()
	{
		return this->zip->size();
	}
			
	void AddressRequestElement::setZip(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::Int*>& cx_obj)
	{	
		for(size_t i = 0; i < zip->get_size(); i++)
		{
			SAFE_DELETE(zip->at(i));
		}
		zip->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::Int* cx_val = new TIBAMX_CORE_NAMESPACE::Int(*cx_obj.at(i));
			this->zip->push_back(cx_val);
		}	
	}

	void AddressRequestElement::setZip(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::Int*>* cx_obj)
	{	
		for(size_t i = 0; i < zip->get_size(); i++)
		{
			SAFE_DELETE(zip->at(i));
		}
		zip->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::Int* cx_val = new TIBAMX_CORE_NAMESPACE::Int(*cx_obj->at(i));
			this->zip->push_back(cx_val);
		}	
	}

	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getAddress()
	{
		return this->address;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getAddress() const
	{
		return this->address;
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::addNewAddress()
	{
		TIBAMX_CORE_NAMESPACE::String* cx_obj = new TIBAMX_CORE_NAMESPACE::String();
		this->address->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getAddressAt(size_t index) const
	{
		return *this->address->at(index);
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getAddressAt(size_t index)
	{
		return *this->address->at(index);
	}

	const size_t AddressRequestElement::getAddressSize() const
	{
		return this->address->size();
	}

	size_t AddressRequestElement::getAddressSize()
	{
		return this->address->size();
	}
			
	void AddressRequestElement::setAddress(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>& cx_obj)
	{	
		for(size_t i = 0; i < address->get_size(); i++)
		{
			SAFE_DELETE(address->at(i));
		}
		address->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj.at(i));
			this->address->push_back(cx_val);
		}	
	}

	void AddressRequestElement::setAddress(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* cx_obj)
	{	
		for(size_t i = 0; i < address->get_size(); i++)
		{
			SAFE_DELETE(address->at(i));
		}
		address->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj->at(i));
			this->address->push_back(cx_val);
		}	
	}

	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getState()
	{
		return this->state;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getState() const
	{
		return this->state;
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::addNewState()
	{
		TIBAMX_CORE_NAMESPACE::String* cx_obj = new TIBAMX_CORE_NAMESPACE::String();
		this->state->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getStateAt(size_t index) const
	{
		return *this->state->at(index);
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getStateAt(size_t index)
	{
		return *this->state->at(index);
	}

	const size_t AddressRequestElement::getStateSize() const
	{
		return this->state->size();
	}

	size_t AddressRequestElement::getStateSize()
	{
		return this->state->size();
	}
			
	void AddressRequestElement::setState(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>& cx_obj)
	{	
		for(size_t i = 0; i < state->get_size(); i++)
		{
			SAFE_DELETE(state->at(i));
		}
		state->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj.at(i));
			this->state->push_back(cx_val);
		}	
	}

	void AddressRequestElement::setState(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* cx_obj)
	{	
		for(size_t i = 0; i < state->get_size(); i++)
		{
			SAFE_DELETE(state->at(i));
		}
		state->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj->at(i));
			this->state->push_back(cx_val);
		}	
	}

	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getCompanyName()
	{
		return this->companyName;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getCompanyName() const
	{
		return this->companyName;
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::addNewCompanyName()
	{
		TIBAMX_CORE_NAMESPACE::String* cx_obj = new TIBAMX_CORE_NAMESPACE::String();
		this->companyName->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getCompanyNameAt(size_t index) const
	{
		return *this->companyName->at(index);
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getCompanyNameAt(size_t index)
	{
		return *this->companyName->at(index);
	}

	const size_t AddressRequestElement::getCompanyNameSize() const
	{
		return this->companyName->size();
	}

	size_t AddressRequestElement::getCompanyNameSize()
	{
		return this->companyName->size();
	}
			
	void AddressRequestElement::setCompanyName(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>& cx_obj)
	{	
		for(size_t i = 0; i < companyName->get_size(); i++)
		{
			SAFE_DELETE(companyName->at(i));
		}
		companyName->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj.at(i));
			this->companyName->push_back(cx_val);
		}	
	}

	void AddressRequestElement::setCompanyName(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* cx_obj)
	{	
		for(size_t i = 0; i < companyName->get_size(); i++)
		{
			SAFE_DELETE(companyName->at(i));
		}
		companyName->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj->at(i));
			this->companyName->push_back(cx_val);
		}	
	}

	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getCallService()
	{
		return this->callService;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getCallService() const
	{
		return this->callService;
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::addNewCallService()
	{
		TIBAMX_CORE_NAMESPACE::String* cx_obj = new TIBAMX_CORE_NAMESPACE::String();
		this->callService->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getCallServiceAt(size_t index) const
	{
		return *this->callService->at(index);
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getCallServiceAt(size_t index)
	{
		return *this->callService->at(index);
	}

	const size_t AddressRequestElement::getCallServiceSize() const
	{
		return this->callService->size();
	}

	size_t AddressRequestElement::getCallServiceSize()
	{
		return this->callService->size();
	}
			
	void AddressRequestElement::setCallService(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>& cx_obj)
	{	
		for(size_t i = 0; i < callService->get_size(); i++)
		{
			SAFE_DELETE(callService->at(i));
		}
		callService->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj.at(i));
			this->callService->push_back(cx_val);
		}	
	}

	void AddressRequestElement::setCallService(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* cx_obj)
	{	
		for(size_t i = 0; i < callService->get_size(); i++)
		{
			SAFE_DELETE(callService->at(i));
		}
		callService->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj->at(i));
			this->callService->push_back(cx_val);
		}	
	}

	TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getCity()
	{
		return this->city;
	}

	const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* AddressRequestElement::getCity() const
	{
		return this->city;
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::addNewCity()
	{
		TIBAMX_CORE_NAMESPACE::String* cx_obj = new TIBAMX_CORE_NAMESPACE::String();
		this->city->push_back(cx_obj);
		return *cx_obj;
	}

	const TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getCityAt(size_t index) const
	{
		return *this->city->at(index);
	}

	TIBAMX_CORE_NAMESPACE::String& AddressRequestElement::getCityAt(size_t index)
	{
		return *this->city->at(index);
	}

	const size_t AddressRequestElement::getCitySize() const
	{
		return this->city->size();
	}

	size_t AddressRequestElement::getCitySize()
	{
		return this->city->size();
	}
			
	void AddressRequestElement::setCity(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>& cx_obj)
	{	
		for(size_t i = 0; i < city->get_size(); i++)
		{
			SAFE_DELETE(city->at(i));
		}
		city->clear();
		for(size_t i = 0; i < cx_obj.get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj.at(i));
			this->city->push_back(cx_val);
		}	
	}

	void AddressRequestElement::setCity(const TIBAMX_CORE_NAMESPACE::ElementListT<TIBAMX_CORE_NAMESPACE::String*>* cx_obj)
	{	
		for(size_t i = 0; i < city->get_size(); i++)
		{
			SAFE_DELETE(city->at(i));
		}
		city->clear();
		for(size_t i = 0; i < cx_obj->get_size(); i++)
		{
			TIBAMX_CORE_NAMESPACE::String* cx_val = new TIBAMX_CORE_NAMESPACE::String(*cx_obj->at(i));
			this->city->push_back(cx_val);
		}	
	}
	void AddressRequestElement::serializeMemberValue(const std::string& cx_memberName, void* cx_value) throw (ServiceDataException)
	{
		if(cx_memberName == "zip")
		{
			this->zip->push_back((TIBAMX_CORE_NAMESPACE::Int*)cx_value);
			return;
		}
		if(cx_memberName == "address")
		{
			this->address->push_back((TIBAMX_CORE_NAMESPACE::String*)cx_value);
			return;
		}
		if(cx_memberName == "state")
		{
			this->state->push_back((TIBAMX_CORE_NAMESPACE::String*)cx_value);
			return;
		}
		if(cx_memberName == "companyName")
		{
			this->companyName->push_back((TIBAMX_CORE_NAMESPACE::String*)cx_value);
			return;
		}
		if(cx_memberName == "callService")
		{
			this->callService->push_back((TIBAMX_CORE_NAMESPACE::String*)cx_value);
			return;
		}
		if(cx_memberName == "city")
		{
			this->city->push_back((TIBAMX_CORE_NAMESPACE::String*)cx_value);
			return;
		}


		std::string cx_errorMsg("\"AddressRequestElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	TIBAMX_CORE_NAMESPACE::ArtifactRoot* AddressRequestElementSerializer::cx_artifactRoot;

	void AddressRequestElementSerializer::initialize()
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
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode00= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "address", "address", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "String", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode00);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode01= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "callService", "callService", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "String", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode01);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode02= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "city", "city", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "String", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode02);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode03= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "companyName", "companyName", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "String", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode03);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode04= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "state", "state", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "String", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, true, 0, 1, &TIBAMX_CORE_NAMESPACE::StringSerializer::serialize, &TIBAMX_CORE_NAMESPACE::StringSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode04);
		TIBAMX_CORE_NAMESPACE::ArtifactNode* cx_artifactNode05= new TIBAMX_CORE_NAMESPACE::ArtifactNode(ELEMENT, UNQUALIFIED, "zip", "zip", "ax26", "http://companyaddress.iqatest.ejbbt.amx.tibco.com/xsd", "Int", "xs", "http://www.w3.org/2001/XMLSchema", NULL, false, false, false, 0, 1, &TIBAMX_CORE_NAMESPACE::IntSerializer::serialize, &TIBAMX_CORE_NAMESPACE::IntSerializer::deserialize, NULL, NULL, 0, NULL);
		cx_artifactNode0->addChildArtifact(cx_artifactNode05);

	}

	void AddressRequestElementSerializer::serialize(XERCES_CPP_NAMESPACE::DOMElement* cx_element, const void* cx_input, Context* cx_context) throw (ServiceDataException)
	{
		initialize();
		MemberValueGetterPtr cx_memberGetter = &AddressRequestElementSerializer::getMemberValue;

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


	void* AddressRequestElementSerializer::deserialize(DOMElementIterator& cx_elementItr, void* cx_returnValue, Context* cx_context) throw (ServiceDataException)
	{
		initialize();

		AddressRequestElement* cx_returnObject = (cx_returnValue != NULL)? (AddressRequestElement*)cx_returnValue : new AddressRequestElement();
		MemberValueSetterPtr cx_memberSetter = &AddressRequestElementSerializer::setMemberValue;

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

	void* AddressRequestElementSerializer::getMemberValue(const std::string& cx_memberName, const void* cx_inputObject, int & cx_count) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*)cx_inputObject;
		if(cx_memberName == "zip")
		{
			if(1 < (int)cx_classObject->getZip()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"zip\" has ";
				msgs << cx_classObject->getZip()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getZip()->size()) {
				return (void*)cx_classObject->getZip()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}
		if(cx_memberName == "address")
		{
			if(1 < (int)cx_classObject->getAddress()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"address\" has ";
				msgs << cx_classObject->getAddress()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getAddress()->size()) {
				return (void*)cx_classObject->getAddress()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}
		if(cx_memberName == "state")
		{
			if(1 < (int)cx_classObject->getState()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"state\" has ";
				msgs << cx_classObject->getState()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getState()->size()) {
				return (void*)cx_classObject->getState()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}
		if(cx_memberName == "companyName")
		{
			if(1 < (int)cx_classObject->getCompanyName()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"companyName\" has ";
				msgs << cx_classObject->getCompanyName()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getCompanyName()->size()) {
				return (void*)cx_classObject->getCompanyName()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}
		if(cx_memberName == "callService")
		{
			if(1 < (int)cx_classObject->getCallService()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"callService\" has ";
				msgs << cx_classObject->getCallService()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getCallService()->size()) {
				return (void*)cx_classObject->getCallService()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}
		if(cx_memberName == "city")
		{
			if(1 < (int)cx_classObject->getCity()->size()) {
				std::ostringstream msgs;
				msgs << "Element contents are invalid, \"city\" has ";
				msgs << cx_classObject->getCity()->size();
				msgs << " occurrences which is greater than specified in maxOccurs=1 constraint.";
				throwRuntimeException(ServiceDataException,msgs.str().c_str());
			}
			if(cx_count < (int)cx_classObject->getCity()->size()) {
				return (void*)cx_classObject->getCity()->at(cx_count);
			}
			cx_count = -1;
			return NULL;
		}

		std::string cx_errorMsg("\"AddressRequestElement\" class does not have member with name = \"" + cx_memberName + "\"");
		throwRuntimeException(ServiceDataException,cx_errorMsg.c_str());
	}

	void AddressRequestElementSerializer::setMemberValue(const std::string& cx_memberName, void* cx_inputObject, void* cx_value) throw (ServiceDataException)
	{
		XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement* cx_classObject = (XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement*)cx_inputObject;
		cx_classObject->serializeMemberValue(cx_memberName, cx_value);
	}

} //END of XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD

TIBAMX_CORE_NAMESPACE::Boolean operator==(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement & cx_obj2)
{
	return (cx_obj1.getZip() == cx_obj2.getZip() &&
		cx_obj1.getAddress() == cx_obj2.getAddress() &&
		cx_obj1.getState() == cx_obj2.getState() &&
		cx_obj1.getCompanyName() == cx_obj2.getCompanyName() &&
		cx_obj1.getCallService() == cx_obj2.getCallService() &&
		cx_obj1.getCity() == cx_obj2.getCity());
}
TIBAMX_CORE_NAMESPACE::Boolean operator!=(const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement & cx_obj1, const XSD_COM_TIBCO_AMX_EJBBT_IQATEST_COMPANYADDRESS_XSD::AddressRequestElement &cx_obj2)
{
	return (cx_obj1.getZip() != cx_obj2.getZip() ||
		cx_obj1.getAddress() != cx_obj2.getAddress() ||
		cx_obj1.getState() != cx_obj2.getState() ||
		cx_obj1.getCompanyName() != cx_obj2.getCompanyName() ||
		cx_obj1.getCallService() != cx_obj2.getCallService() ||
		cx_obj1.getCity() != cx_obj2.getCity());
}

