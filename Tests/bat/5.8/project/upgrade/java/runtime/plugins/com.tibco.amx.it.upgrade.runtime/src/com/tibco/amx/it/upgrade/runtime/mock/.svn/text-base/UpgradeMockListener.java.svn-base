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
package com.tibco.amx.it.upgrade.runtime.mock;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.Queue;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.naming.NamingException;
import javax.wsdl.Message;
import javax.wsdl.Operation;
import javax.wsdl.OperationType;
import javax.wsdl.Part;
import javax.xml.namespace.QName;

import org.apache.xmlbeans.SchemaTypeLoader;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.URIConverterImpl;
import org.osoa.sca.ServiceRuntimeException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

import com.tibco.amf.platform.runtime.extension.context.CallbackContext;
import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
import com.tibco.amf.platform.runtime.extension.context.MutableCallbackContext;
import com.tibco.amf.platform.runtime.extension.context.MutableRequestContext;
import com.tibco.amf.platform.runtime.extension.context.RequestContext;
import com.tibco.amf.platform.runtime.extension.context.URLToFileConverter;
import com.tibco.amf.platform.runtime.extension.support.ElementArrayGenericBusinessInterface;
import com.tibco.amf.platform.runtime.extension.support.GenericReplyCallback;
import com.tibco.amf.platform.runtime.extension.support.ServiceVirtualizationHelper;
import com.tibco.amf.sca.model.extensionpoints.Wsdl11Interface;
import com.tibco.amx.it.upgrade.runtime.UpgradeAbstractListener;
import com.tibco.amx.it.upgrade.runtime.UpgradeImplementationContext;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public final class UpgradeMockListener extends UpgradeAbstractListener {
    private final SchemaTypeLoader schemaTypeLoader;
    private final URLToFileConverter urlToFileConverter;
    	
	 /**
	 * <!-- begin-custom-doc -->
	 * @param componentContext
	 * @param portType
	 * @throws Exception 
	 * @throws IOException 
	 * <!-- end-custom-doc -->
	 * @generated
	 */	
    public UpgradeMockListener(ComponentContext componentContext,final Wsdl11Interface wsdlInterface,String serviceName) throws Exception {
        super(componentContext, wsdlInterface, serviceName);
        
        this.urlToFileConverter = componentContext.getURLToFileConverter();       
         
        final URI uri = ((EObject)wsdlInterface.getPortType()).eResource().getURI();
        final URIConverter converter = new ClassLoaderURIConverter();
        this.schemaTypeLoader = UpgradeContentGenerator.getLoaderForWsdl(
                converter.createInputStream(uri),
                new UpgradeEntityResolver(uri, converter));
    }
    
    /**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */	
    private final class ClassLoaderURIConverter extends URIConverterImpl {
        
        /* (non-Javadoc)
         * @see org.eclipse.emf.ecore.resource.impl.URIConverterImpl#createInputStream(org.eclipse.emf.common.util.URI)
         */
        public InputStream createInputStream(final URI uri) throws IOException {
			URL url = new URL(URI.decode(uri.toString()));
			File file = UpgradeMockListener.this.urlToFileConverter.convertToFile(url);
			return new FileInputStream(file);
        }
    }
    
    /**
	 * <!-- begin-custom-doc -->
     * @see com.tibco.amf.platform.runtime.extension.implementation.GenericBusinessInterface#getMessageType()	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
    public Class<Element[]> getMessageType() {
        return Element[].class;
    }
    
     /**
	 * <!-- begin-custom-doc -->
	 *
	 * <!-- end-custom-doc -->
	 * @generated
	 */
    public void invoke(QName operationName, RequestContext requestContext, Element[] message) {
    	//begin-custom-code
    	int a = message.length;
    	for(int k = 0; k < a; k ++){
    		Element el = message[k];
    		logger.info("The inut " + k + " is: ");
    		logger.info(el.toString());
    		logger.info("");
    	}
    	
    	Hashtable props = implmentationContext.getProperties();
    	Enumeration e = props.keys();
    	String outStr = "Upgrade IT(1.0.0)-> ";
    	logger.info("**************Upgrade IT(1.0.0)-> Class: MockListener -> Properties in User application is:");
    	while(e.hasMoreElements()){
    		String aKey = (String) e.nextElement();
    		Object value =  props.get(aKey);
    		
    		logger.info(aKey + " : " + value.toString());
    		outStr += aKey + " = " + value.toString() + "; ";
    	}
    	logger.info("The out String is: " + outStr);
    	
    	Integer s = (Integer) props.get("ProcessTime");
    	
    	
    	int i = s.intValue();
    	logger.info("The ProcessTime is: " + i);
    	
    	logger.info("************Upgrade IT(1.0.0)-> Class: MockListener -> invoke started");
    	logger.info("This is implementation bussiness process, processing in " + i + " seconds");
    	try {
			for(int j = 0; j < i ; j ++){
				Thread.sleep(1000);
				logger.info(".");
				
			}
		} catch (InterruptedException er) {
			// TODO Auto-generated catch block
			er.printStackTrace();
		}
		
        final Operation operation = this.wsdlInterface.getPortType().getOperation(operationName.getLocalPart(), null, null);         
        final OperationType operationType = operation.getStyle();
        
        if (needReturnMessage(operationType)) {
    		GenericReplyCallback<Element[]> replyCallback = requestContext.getCallback();
   
      		// if there is a reference with same name, then invoke it.
    		ElementArrayGenericBusinessInterface reference = implmentationContext.getReferenceBusinessInterface(serviceName);
    		if (reference != null) {
    			logger.info("************Upgrade IT(1.0.0)-> Class: MockListener -> Start invoke reference");
    			invokeReference(reference, componentContext, operationName, replyCallback);
    			logger.info("************Upgrade IT(1.0.0)-> Class: MockListener -> reference returned");
    			
    		} else {
	            Element[] nodeList = generateSampleResponse(operation,
						operationType);
	            Element respElement = nodeList[0];
	            Node outStringNode = respElement.getElementsByTagName("out").item(0);
	            if(outStringNode != null){
	            	outStringNode.setTextContent(outStr);
	            }
				MutableCallbackContext callbackContext = requestContext.createCallbackContext();
				replyCallback.invoke(callbackContext, nodeList);	
    		}		
        }
        logger.info("************Upgrade IT(1.0.0)-> Class: MockListener -> invoke ended");
        //end-custom-code
    }

    /**
     * @generated
     */
    public void invokeReference(ElementArrayGenericBusinessInterface reference, ComponentContext componentContext, QName operationName, GenericReplyCallback<Element[]> replyCallback) {
    	final Operation operation = (Operation) this.wsdlInterface.getPortType().getOperation(operationName.getLocalPart(), null, null);
    	final OperationType operationType = operation.getStyle();

    	if (needReturnMessage(operationType)) {
    		Element[] nodeList = generateSampleRequest(operation,operationType);
    		MutableRequestContext requestContext = componentContext.createMutableRequestContext();
    		
    		//set callback interface
    		requestContext.setCallback(new MyCallback(replyCallback));
    		//set target uri
    		if (isWireByImpl((UpgradeImplementationContext)componentContext.getImplementationContext())){
    			requestContext.setEndpointReference(calculateTargetURI(componentContext));
    		}
			
    		//async call, the response will be turn in another thread.
    		reference.invoke(
    				new QName(this.wsdlInterface.getPortType().getQName().getNamespaceURI(), operation
    						.getName()), requestContext, nodeList);
    	}
    }
    
	private boolean isWireByImpl(
			UpgradeImplementationContext implementationContext) {
		return implementationContext.getReference(serviceName).isWiredByImpl();
	}

	private boolean needReturnMessage(final OperationType operationType) {
		return operationType.equals(OperationType.REQUEST_RESPONSE) || operationType.equals(OperationType.SOLICIT_RESPONSE);
	}	    

	private java.net.URI calculateTargetURI(ComponentContext componentContext) {
		String envName = componentContext.getEnvironmentName();
		String appName = componentContext.getApplicationName();
		// assumption same app and environment
		java.net.URI targetURI = ServiceVirtualizationHelper.createPromotedServiceURI(envName, appName, serviceName + "-epr");
		logger.debug("EPR Set to " + targetURI);
		return targetURI;
	}
    
	private Element[] generateSampleResponse(final Operation operation,
			final OperationType operationType) {
		final List<Part> partList = getResponseElement(operation,operationType);
		return generateSampleMessage(partList);
	}
    
    private List<Part> getResponseElement(Operation operation,
			OperationType operationType) {
    	final Message message;
		if (operationType.equals(OperationType.REQUEST_RESPONSE)){
			 message = operation.getOutput().getMessage();
		}else {
			message = operation.getInput().getMessage();
		}
		return message.getOrderedParts(null);
	}      

	private Element[] generateSampleRequest(Operation operation,
			OperationType operationType) {
		final List<Part> partList = getRequestElement(operation,operationType);
		return generateSampleMessage(partList);
	}
	
	private static List<Part> getRequestElement(final Operation operation,final OperationType operationType){
		final Message message;
		if (operationType.equals(OperationType.REQUEST_RESPONSE)){
			 message = operation.getInput().getMessage();
		}else {
			message = operation.getOutput().getMessage();
		}
		return message.getOrderedParts(null);
	}	

	private Element[] generateSampleMessage(final List<Part> partList) {
		try {
			return UpgradeContentGenerator.getSampleNodeList(
					this.schemaTypeLoader, partList.toArray(new Part[0]));
		} catch (Exception e) {
			logger.error("can not get NodeList ", e);
		}
		
		return null;
	}
    
    /**
     * @generated
     */
    public class MyCallback implements GenericReplyCallback<Element[]> {

    	/**
    	 * @generated
    	 */
    	Element[] reply;
    	
    	/**
    	 * @generated
    	 */
    	GenericReplyCallback<Element[]> replyCallback;

    	/**
    	 * @generated
    	 */
    	public MyCallback(GenericReplyCallback<Element[]> replyCallback) {
    		this.replyCallback = replyCallback;
    	}

    	/**
    	 * @generated
    	 */
    	public Element[] getReply() {
    		return reply;
    	}

    	/**
    	 * @generated
    	 */
    	public void invoke(CallbackContext callbackContext,
    			Element[] replyMessage) {
    		reply = replyMessage;
   			replyCallback.invoke(callbackContext,reply);
    	}
		
		/**
		 * @generated
		 */
		public void onException(ServiceRuntimeException arg0) {
			// TODO Auto-generated method stub
			
		}
		
   	}

}
