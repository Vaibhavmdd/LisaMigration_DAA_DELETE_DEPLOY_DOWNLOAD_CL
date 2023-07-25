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

import java.util.Iterator;
import java.util.List;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.Queue;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
import com.tibco.amf.platform.runtime.extension.context.ImplementationContext;
import com.tibco.amf.platform.runtime.extension.implementation.AsyncUndeployableImplementationAdapter;
import com.tibco.amf.platform.runtime.extension.implementation.ImplementationAdapter;
import com.tibco.amf.platform.runtime.extension.implementation.ImplementationContextFactory;
import com.tibco.amf.platform.runtime.extension.implementation.ImplementationLifeCycleAdapter;
import com.tibco.amf.platform.runtime.extension.implementation.InstallableImplementationAdapter;
import com.tibco.amf.platform.runtime.extension.implementation.ServiceProviderAdapter;
import com.tibco.amf.platform.runtime.extension.implementation.StartableImplementationAdapter;
import com.tibco.amf.platform.runtime.extension.support.ElementArrayGenericBusinessInterface;
import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.componenttype.Reference;
import com.tibco.amf.sca.model.extensionpoints.Implementation;
import com.tibco.amf.sca.model.extensionpoints.Property;
import com.tibco.amf.sca.model.extensionpoints.Wsdl11Interface;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.runtime.mock.UpgradeMockListener;
import com.tibco.amx.it.upgrade.runtime.mock.util.UpgradeConfigFileUtil;
import com.tibco.amx.it.upgrade.runtime.util.UpgradeSharedResourceHelper;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeImplementationAdapter implements ImplementationAdapter,
		ServiceProviderAdapter, ImplementationContextFactory,
		StartableImplementationAdapter,InstallableImplementationAdapter, ImplementationLifeCycleAdapter, AsyncUndeployableImplementationAdapter  {
	final private Logger logger = LoggerFactory.getLogger( this.getClass());
	
// enable following code to support http reosurce adapter
// also, please make sure to import javax.resource.spi.ResourceAdapter
//	private ResourceAdapter httpResourceAdapter;
//  /**
//	 * @generated
//	 */
//  public void setHttpResourceAdapter(final ResourceAdapter httpResourceAdapter) {
//      this.httpResourceAdapter = httpResourceAdapter;
//  }
//    
//  /**
//   * @generated
//   */
//  public ResourceAdapter getHttpResourceAdapter(){
//      return this.httpResourceAdapter;
//  }	

    /**
	 * @generated
	 */
	public void init() {
		//begin-custom-code
		
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> init started");
		logger.info("This is init, processing in 10 seconds");
		
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> init ended");
		
	    //end-custom-code
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.SUCCESS_INIT.format());
		}
	}
	
    /**
	 * @generated
	 */    
	public void destroy() {
		//begin-custom-code
		
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> destroy started");
		logger.info("This is destroy, processing in 10 seconds");
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> destroy ended");
	    
	    //end-custom-code
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.SUCCESS_DESTROY.format());
		}
	}
	
    /**
	 * @generated
	 */
	public void destroyImplementation(ComponentContext componentContext) throws Exception {
		//begin-custom-code
		
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> destroyImplementation started");
		logger.info("This is destroyImplementation, processing in 10 seconds");
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> destroyImplementation ended");
		
	    //end-custom-code
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.SUCCESS_DESTROY_IMPLEMENTATION.format(componentContext.getURI()));
		}
	}
	
    /**
	 * @generated
	 */
	public void initImplementation(ComponentContext componentContext) throws Exception {
		//begin-custom-code

		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> initImplementation started");
		logger.info("This is initImplementation, processing in 10 seconds");
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> initImplementation ended");
		
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.SUCCESS_INIT_IMPLEMENTATION.format(componentContext.getURI()));
		}
		
		UpgradeImplementationContext implementationContext = (UpgradeImplementationContext) componentContext.getImplementationContext();		
		UpgradeImplementation upgradeImplementation = (UpgradeImplementation) implementationContext.getImplementation();		
		ComponentType componentType = UpgradeConfigFileUtil.readComponentTypeFromConfigFile(upgradeImplementation,componentContext);
		
		//begin-sample-code
		// get Properties (including shared resources) and inject into implementation here
		List<Property> properties = componentType.getProperties();
		if (properties != null){
			Iterator<Property> propertyIterator = properties.iterator();
			Property property = null;
			while (propertyIterator.hasNext()) {
				property = propertyIterator.next();
				Object propertyValue = componentContext.getProperty(UpgradeSharedResourceHelper.getClassType(property.getType()), property.getName()); //TODO: Support other types
				if (logger.isInfoEnabled()) {
					logger.info(UpgradeMessageBundle.INFO_PROPERTY.format(componentContext.getURI(), property.getName(), propertyValue));
				}
			    //It is not necessary to store the property in the implementation context.
				implementationContext.setProperty(property.getName(),propertyValue);
			}
		}
		//end-sample-code
		
		//begin-sample-code
		// get Reference proxies and inject them into implementation here
		List<Reference> references = componentType.getReferences();
		if (references != null){		
			Iterator<Reference> referenceIterator = references.iterator();
			Reference reference = null;
			while (referenceIterator.hasNext()) {
				reference = referenceIterator.next();
				ElementArrayGenericBusinessInterface serviceReference = componentContext.getService(
						ElementArrayGenericBusinessInterface.class, reference.getName());
				if (logger.isInfoEnabled()) {
					logger.info(UpgradeMessageBundle.INFO_REFERENCE.format(
							componentContext.getURI(), reference.getName() ,serviceReference));
				}
			    //It is not necessary to store the reference in the implementation context.
			    implementationContext.setReference(reference.getName(),reference);
				implementationContext.setReferenceBusinessInterface(reference.getName(), serviceReference);
			}		
		}
		//end-sample-code
        //end-custom-code
	}
	
    /**
	 * @generated
	 */
	public Class<?>[] getTargetObjectTypes(ComponentContext componentContext, String servicename) {
		//begin-custom-code
		
	    //end-custom-code
        return new Class<?>[]{ (Class<?>) ElementArrayGenericBusinessInterface.class };
	}
	
    /**
	 * @generated
	 */	
	public <T> T getServiceTarget(ComponentContext componentContext, String serviceName, Class<T> serviceTargetType) {
	    //begin-custom-code
	    if (serviceTargetType == ElementArrayGenericBusinessInterface.class) {
			Wsdl11Interface wsdlInterface = (Wsdl11Interface) componentContext
					.getServiceInterfaces().get(serviceName);

			try {
				return (T) new UpgradeMockListener(componentContext,
					wsdlInterface, serviceName);
			} catch (Exception e) {
				String errorMessage = UpgradeMessageBundle.ERROR_CREATING_LISTENER
						.format(componentContext.getURI(), serviceName,
								serviceTargetType.getName());
				if (logger.isErrorEnabled()) {
					logger.error(errorMessage);
				}
				throw new IllegalArgumentException(errorMessage);
			}

		}
	   
	   	String errorMessage = UpgradeMessageBundle.ERROR_INCORRECT_TARGETTYPE.format(componentContext.getURI(), serviceName, serviceTargetType.getName());
	    if (logger.isErrorEnabled()) {
	    	logger.error(errorMessage);
	    }
	    throw new IllegalArgumentException(errorMessage);
	    //end-custom-code
	}
		
    /**
	 * @generated
	 */
	public ImplementationContext createImplementationContext(Implementation implementation) {
		//begin-custom-code
		
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> createImplementationContext started");
		logger.info("This is createImplementationContext, processing in 10 seconds");
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> createImplementationContext ended");
	    
	    //end-custom-code
		if (implementation instanceof UpgradeImplementation){
			return new UpgradeImplementationContext((UpgradeImplementation)implementation);
		}
		
		return null;
	}
		
	public void prepareToUndeployImplementation(final ComponentContext componentContext,
			final CompletionCallback completionCallBack) {
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.PREPARE_UNDEPLOY_IMPLEMENTATION
					.format(componentContext.getURI()));
		}
		
		String NULL_MSG = "NULL";		//define null message
		String mode, scope, type;		//define strings
		
		if(componentContext.getLifeCycleEvent().getMode() == null){
			mode = NULL_MSG;
		}else{
			mode = componentContext.getLifeCycleEvent().getMode().toString();
		}
		
		if(componentContext.getLifeCycleEvent().getScope() == null){
			scope = NULL_MSG;
		}else{
			scope = componentContext.getLifeCycleEvent().getScope().toString();
		}
		
		if(componentContext.getLifeCycleEvent().getType() == null){
			type = NULL_MSG;
		}else{
			type = componentContext.getLifeCycleEvent().getType().toString();
		}
		
		//Print message out.
		logger.info("Mode: " + mode);
		logger.info("Scope: " + scope);
		logger.info("Type: " + type);
		
		
		// prepare to undeploy and reply in a different thread 
		new Thread(new Runnable() {

			public void run() {
				//begin-custom-code
				//prepare to undeploy
				logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> prepareToUndeployImplementation started");
				logger.info("This is prepareToUndeployImplementation, processing in 180 seconds");
				try {
					for(int i = 0; i < 180 ; i ++){
						Thread.sleep(1000);
						logger.info(".");
					}
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> prepareToUndeployImplementation ended");
	
    			//end-custom-code
				if (logger.isInfoEnabled()) {
					logger.info(UpgradeMessageBundle.READY_UNDEPLOY_IMPLEMENTATION
							.format(componentContext.getURI()));
				}
				completionCallBack.readyToUndeployImplementation(componentContext);
			}}).start();
	}

	public void installImplementation(ComponentContext componentContext) throws Exception {
		
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.SUCCESS_INSTALL_IMPLEMENTATION
					.format(componentContext.getURI()));
		}
	}

	public void uninstallImplementation(ComponentContext componentContext) throws Exception {
		
		if (logger.isInfoEnabled()) {
			logger.info(UpgradeMessageBundle.SUCCESS_UNINSTALL_IMPLEMENTATION
					.format(componentContext.getURI()));
		}
	}
	
	public void startImplementation(ComponentContext componentContext) throws Exception {
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> startImplementation started");
		logger.info("This is startImplementation, processing in 10 seconds");
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> startImplementation ended");
		
	}

	public void stopImplementation(ComponentContext componentContext) throws Exception {
		
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> stopImplementation started");
		logger.info("This is stopImplementation, processing in 10 seconds");
		try {
			for(int i = 0; i < 10 ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************Upgrade IT(1.0.0)-> Class: ImplementationAdapter -> stopImplementation ended");
		
	}
	
}
