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
package com.tibco.amx.it.upgrade.runtime.mock.util;

import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.util.Properties;

import javax.xml.namespace.QName;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
import com.tibco.amf.sca.model.componenttype.Callback;
import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.componenttype.ComponentTypeFactory;
import com.tibco.amf.sca.model.componenttype.Multiplicity;
import com.tibco.amf.sca.model.componenttype.Reference;
import com.tibco.amf.sca.model.componenttype.Service;
import com.tibco.amf.sca.model.extensionpoints.Interface;
import com.tibco.amf.sca.model.extensionpoints.Property;
import com.tibco.amf.sca.model.extensionpoints.SCAExtensionsFactory;
import com.tibco.amf.sca.model.extensionpoints.Wsdl11Interface;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeConfigFileUtil {

	private static final String COMPONENT_PROPERTIES = "component.properties";
	private static final String COMPONENT_PROPERTY = "component.property";

	private static final String COMPONENT_REFERENCE = "component.reference";
	private static final String COMPONENT_REFERENCES = "component.references";

	private static final String COMPONENT_SERVICE = "component.service";
	private static final String COMPONENT_SERVICES = "component.services";

	private static final String VALUE_SEPERATOR = ",";
	
	/**
	 * @generated
	 */
	public static ComponentType readComponentTypeFromConfigFile(
			UpgradeImplementation impl, ComponentContext componentContext) {
		if (impl == null) {
			return null;
		}

		String configFile = impl.getConfigFile();
		if ((configFile == null) || configFile.trim().equals("")) {
			return null;
		}
		
		try {
			URI base = ((EObject) impl).eResource().getURI();
			URI resolved = URI.createURI(configFile).resolve(base);
			URL url = new URL(resolved.toString());
			final File file = componentContext.getURLToFileConverter()	
					.convertToFile(url);
			Properties properties = new Properties();
			properties.loadFromXML(new FileInputStream(file));

			ComponentType componentType = ComponentTypeFactory.eINSTANCE
					.createComponentType();
			readServices(properties, componentType);
			readReferences(properties, componentType);
			readProperties(properties, componentType);
			return componentType;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	/**
	 * @generated
	 */
	private static void readProperties(Properties properties,
			ComponentType componentType) {
		String value = properties.getProperty(COMPONENT_PROPERTIES);
		if ((value == null) || "".equals(value)) {
			return;
		}
		String[] names = value.split(VALUE_SEPERATOR);
		for (String name : names) {
			componentType.getProperties().add(readProperty(properties, name));

		}
	}
	
	/**
	 * @generated
	 */
	private static Property readProperty(Properties properties, String name) {
		Property property = SCAExtensionsFactory.INSTANCE.createProperty();
		property.setName(name);
		String prefix = COMPONENT_PROPERTY + "." + name;
		property.setMustSupply(convertToBoolean(properties.getProperty(prefix
				+ ".mustsupply")));
		property.setType(convertToQName(properties
				.getProperty(prefix + ".type")));
		property.setSimpleValue(properties.getProperty(prefix + ".value"));		
		return property;
	}

	/**
	 * @generated
	 */
	private static QName convertToQName(String value) {
		return QName.valueOf(value);
	}
	
	/**
	 * @generated
	 */
	private static boolean convertToBoolean(String value) {
		return "true".equalsIgnoreCase(value) ? true : false;
	}
	
	/**
	 * @generated
	 */
	private static void readReferences(Properties properties,
			ComponentType componentType) {
		String value = properties.getProperty(COMPONENT_REFERENCES);
		if ((value == null) || "".equals(value)) {
			return;
		}
		String[] names = value.split(VALUE_SEPERATOR);
		for (String name : names) {
			componentType.getReferences().add(readReference(properties, name));
		}
	}
	
	/**
	 * @generated
	 */
	private static Reference readReference(Properties properties, String name) {
		Reference reference = ComponentTypeFactory.eINSTANCE.createReference();
		reference.setName(name);

		String prefix = COMPONENT_REFERENCE + "." + name;
		Interface aInterface = readInterface(properties, prefix);
		if (aInterface != null) {
			reference.setInterface(aInterface);
		}
		Callback callback = readCallback(properties, prefix);
		if (callback != null) {
			reference.setCallback(callback);
		}

		boolean wireByImpl = convertToBoolean(properties.getProperty(prefix
				+ ".wirebyimpl"));
		reference.setWiredByImpl(wireByImpl);
		
		boolean autoWire = convertToBoolean(properties.getProperty(prefix
				+ ".autowire"));
		reference.setAutowire(autoWire);
		
		String value = properties.getProperty(prefix + ".multiplicity");
		if (value != null) {
			reference.setMultiplicity(Multiplicity.get(value));
		}

		return reference;
	}
	
	/**
	 * @generated
	 */
	private static void readServices(Properties properties,
			ComponentType componentType) {
		String value = properties.getProperty(COMPONENT_SERVICES);
		if ((value == null) || "".equals(value)) {
			return;
		}
		String[] names = value.split(VALUE_SEPERATOR);
		for (String name : names) {
			componentType.getServices().add(readService(properties, name));
		}
	}
	
	/**
	 * @generated
	 */
	private static Service readService(Properties properties, String name) {
		Service service = ComponentTypeFactory.eINSTANCE.createService();
		service.setName(name);

		String prefix = COMPONENT_SERVICE + "." + name;
		Interface aInterface = readInterface(properties, prefix);
		if (aInterface != null) {
			service.setInterface(aInterface);
		}
		Callback callback = readCallback(properties, prefix);
		if (callback != null) {
			service.setCallback(callback);
		}

		return service;
	}
	
	/**
	 * @generated
	 */
	private static Callback readCallback(Properties properties, String prefix) {
		return null;
	}
	
	/**
	 * @generated
	 */
	private static Interface readInterface(Properties properties, String prefix) {
		// TODO handle other interface type
		Wsdl11Interface aInterface = SCAExtensionsFactory.INSTANCE
				.createWsdl11Interface();
		aInterface.setPortTypeName(properties.getProperty(prefix
				+ ".interface.porttype"));
		aInterface.setWsdlLocation(properties.getProperty(prefix
				+ ".interface.wsdllocation"));

		return aInterface;
	}
}
