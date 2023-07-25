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

import javax.xml.namespace.QName;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;

import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
import com.tibco.amf.platform.runtime.extension.context.RequestContext;
import com.tibco.amf.platform.runtime.extension.support.ElementArrayGenericBusinessInterface;
import com.tibco.amf.sca.model.extensionpoints.Wsdl11Interface;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public abstract class UpgradeAbstractListener implements ElementArrayGenericBusinessInterface {
    protected final Logger logger = LoggerFactory.getLogger(UpgradeAbstractListener.class);
	
	protected Wsdl11Interface wsdlInterface;
    protected ComponentContext componentContext;
    protected final UpgradeImplementationContext implmentationContext;    
    protected String serviceName;
    
    public UpgradeAbstractListener(ComponentContext context,Wsdl11Interface wsdlInterface,String serviceName){
    	this.wsdlInterface = wsdlInterface;
    	this.componentContext = context;
    	this.serviceName = serviceName;
    	this.implmentationContext = (UpgradeImplementationContext) componentContext.getImplementationContext();
    }
	public abstract void invoke(QName arg0, RequestContext arg1, Element[] arg2);

}
