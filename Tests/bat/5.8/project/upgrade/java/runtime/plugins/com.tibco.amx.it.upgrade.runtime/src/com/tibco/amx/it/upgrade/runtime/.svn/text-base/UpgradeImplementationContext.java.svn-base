/**
*(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
*
* LEGAL NOTICE:  This source code is provided to specific authorized end
* users pursuant to a separate license agreement.  You MAY NOT use this
* source code if you do not have a separate license from TIBCO Software
* Inc.  Except as expressly set forth in such license agreement, this
* source code, or any portion thereof, may not be used, modified,
* reproduced, transmitted, or distributed in any form or by any means,
* electronic or mechanical, without written permission from
* TIBCO Software Inc.
*/

package com.tibco.amx.it.upgrade.runtime;

import java.util.Hashtable;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amf.platform.runtime.extension.context.ImplementationContext;
import com.tibco.amf.platform.runtime.extension.support.ElementArrayGenericBusinessInterface;
import com.tibco.amf.sca.model.componenttype.Reference;
import com.tibco.amf.sca.model.extensionpoints.Implementation;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeImplementationContext implements ImplementationContext{

	private UpgradeImplementation implementation;
	private Hashtable<String,Object> properties = new Hashtable<String,Object>();
	private Hashtable<String,ElementArrayGenericBusinessInterface> referenceBusinessInterfaces = 
		new Hashtable<String, ElementArrayGenericBusinessInterface>();
	private Hashtable<String, Reference> references = new Hashtable<String,Reference>();
	/**
	 * @generated
	 */	
	public UpgradeImplementationContext(UpgradeImplementation implementation) {
		this.implementation = implementation;
	}
	
	/**
	 * @generated
	 */	
	public Implementation getImplementation() {
		return implementation;
	}
	
	/**
	 * @generated
	 */	
	public void setProperty(String key, Object value) {
		properties.put(key,value);
	}
	
	/**
	 * @generated
	 */		
	public Object getProperty(String key){
		return properties.get(key);
	}
	
	/**
	 * @generated
	 */		
	public Hashtable<String, Object> getProperties(){
		return properties;
	}
	
	/**
	 * @generated
	 */		
	public void setReferenceBusinessInterface(String key, ElementArrayGenericBusinessInterface value){
		this.referenceBusinessInterfaces.put(key,value);
	}
	
	/**
	 * @generated
	 */		
	public Hashtable<String,ElementArrayGenericBusinessInterface> getReferenceBusinessInterfaces(){
		return referenceBusinessInterfaces;
	}
	
	/**
	 * @generated
	 */		
	public ElementArrayGenericBusinessInterface getReferenceBusinessInterface(String key){
		return referenceBusinessInterfaces.get(key);
	}
	
	/**
	 * @generated
	 */		
	public void setReference(String key,Reference value){
		this.references.put(key, value);
	}
	
	/**
	 * @generated
	 */		
	public Reference getReference(String key){
		return this.references.get(key);
	}
	
	/**
	 * @generated
	 */		
	public Hashtable<String, Reference> getReferences(){
		return this.references; 
	}
		
}
