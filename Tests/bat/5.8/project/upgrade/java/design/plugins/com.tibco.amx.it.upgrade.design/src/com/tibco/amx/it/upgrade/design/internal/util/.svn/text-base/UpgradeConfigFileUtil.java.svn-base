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
package com.tibco.amx.it.upgrade.design.internal.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.xml.namespace.QName;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.Resource.Factory.Registry;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;
import org.eclipse.wst.wsdl.Definition;
import org.eclipse.wst.wsdl.PortType;
import org.eclipse.wst.wsdl.util.WSDLResourceFactoryRegistry;
import org.eclipse.wst.wsdl.util.WSDLResourceImpl;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amf.sca.model.componenttype.Callback;
import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.componenttype.ComponentTypeFactory;
import com.tibco.amf.sca.model.componenttype.Multiplicity;
import com.tibco.amf.sca.model.componenttype.Reference;
import com.tibco.amf.sca.model.componenttype.Service;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.composite.ComponentProperty;
import com.tibco.amf.sca.model.composite.ComponentReference;
import com.tibco.amf.sca.model.composite.ComponentService;
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
			UpgradeImplementation impl) {
		if (impl == null) {
			return null;
		}

		String configFile = impl.getConfigFile();
		if ((configFile == null) || "".equals(configFile.trim())) {
			return null;
		}
		URI base = ((EObject) impl).eResource().getURI();
		try {
			URI resolved = URI.createURI(configFile).resolve(base);
			IFile file = WorkspaceSynchronizer.getFile(new ResourceImpl(
					resolved));
			if (file == null || !file.exists()) {
				return null;
			}
			
			file.refreshLocal(0, new NullProgressMonitor());

			Properties properties = new Properties();
			properties.loadFromXML(file.getContents());
			ComponentType componentType = ComponentTypeFactory.eINSTANCE
					.createComponentType();
			readServices(properties, componentType, base);
			readReferences(properties, componentType, base);
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
			ComponentType componentType, URI base) {
		String value = properties.getProperty(COMPONENT_REFERENCES);
		if ((value == null) || "".equals(value)) {
			return;
		}
		String[] names = value.split(VALUE_SEPERATOR);
		for (String name : names) {
			componentType.getReferences().add(readReference(properties, name, base));
		}
	}
	
	/**
	 * @generated
	 */	
	private static Reference readReference(Properties properties, String name, URI base) {
		Reference reference = ComponentTypeFactory.eINSTANCE.createReference();
		reference.setName(name);

		String prefix = COMPONENT_REFERENCE + "." + name;
		Interface aInterface = readInterface(properties, prefix, base);
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
			ComponentType componentType, URI base) {
		String value = properties.getProperty(COMPONENT_SERVICES);
		if ((value == null) || "".equals(value)) {
			return;
		}
		String[] names = value.split(VALUE_SEPERATOR);
		for (String name : names) {
			componentType.getServices().add(readService(properties, name, base));
		}
	}
	
	/**
	 * @generated
	 */	
	private static Service readService(Properties properties, String name, URI base) {
		Service service = ComponentTypeFactory.eINSTANCE.createService();
		service.setName(name);

		String prefix = COMPONENT_SERVICE + "." + name;
		Interface aInterface = readInterface(properties, prefix, base);
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
	private static Interface readInterface(Properties properties, String prefix, URI base) {
		Wsdl11Interface aInterface = SCAExtensionsFactory.INSTANCE
				.createWsdl11Interface();
		String portTypeName = properties.getProperty(prefix
				+ ".interface.porttype");
		aInterface.setPortTypeName(portTypeName);
		String wsdlLocation = properties.getProperty(prefix
				+ ".interface.wsdllocation");
		aInterface.setWsdlLocation(wsdlLocation);
		Resource res = createDefaultResourceSet().getResource(URI.createURI(wsdlLocation).resolve(base), true);
		if (res instanceof WSDLResourceImpl){
			final WSDLResourceImpl wsdlResourceImpl = (WSDLResourceImpl) res;
			Definition definition = wsdlResourceImpl.getDefinition();
			for (int i = 0; i < definition.getEPortTypes().size();i++){
				PortType portType = (PortType) definition.getEPortTypes().get(i);
				
				QName qname = portType.getQName();
				if (portTypeName.equals(qname.getNamespaceURI() + "#wsdl.interface(" + qname.getLocalPart()+")")){
					aInterface.setPortType(portType);
				}
			}
		}
		return aInterface;
	}
	
	/**
	 * @generated
	 */	
	public static void writeComponentToConfigFile(IFile file,
			Component component) {
		ComponentType componentType = createComponentType(component);
		writeComponentTypeToConfigFile(file, componentType);

	}
	
	/**
	 * @generated
	 */	
	public static void writeComponentTypeToConfigFile(UpgradeImplementation impl,
			ComponentType componentType) {
		if (impl == null) {
			return;
		}
		String configFile = impl.getConfigFile();
		if ((configFile == null) || "".equals(configFile.trim())) {
			return;
		}
		
		URI base = ((EObject) impl).eResource().getURI();
		URI resolved = URI.createURI(configFile).resolve(base);
        IFile file = WorkspaceSynchronizer.getFile(new ResourceImpl(
                 resolved));
		writeComponentTypeToConfigFile(file, componentType);

	}
	
	/**
	 * @generated
	 */	
	public static void writeComponentTypeToConfigFile(IFile file,
			ComponentType componentType) {
		String comments = "Created by: "
				+ System.getProperty("user.name") + "\t"
						+ DateFormat.getDateTimeInstance().format(new Date());
		Properties properties = new Properties();
		if (componentType != null) {
			writeServices(properties, componentType.getServices());
			writeReferences(properties, componentType.getReferences());
			writeProperties(properties, componentType.getProperties());
		}

		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(file.getLocation().toFile(), false);
			properties.storeToXML(fos, comments);
			file.refreshLocal(0, new NullProgressMonitor());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException e) {
			e.printStackTrace();
		} finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
				}
			}
		}
	}
	
	/**
	 * @generated
	 */	
	public static ComponentType createComponentType(Component component) {
		if (component == null) {
			return null;
		}
		ComponentTypeFactory f = ComponentTypeFactory.eINSTANCE;
		ComponentType ct = f.createComponentType();

		List<ComponentService> services = component.getServices();
		for (ComponentService serv : services) {
			Service s = f.createService();
			if (serv.getCallback() != null) {
				s.setCallback((Callback) EcoreUtil.copy(serv.getCallback()));
			}
			if (serv.getInterface() != null) {
				s.setInterface((Interface) EcoreUtil.copy((EObject) serv
						.getInterface()));
			}
			s.setName(serv.getName());
			ct.getServices().add(s);
		}
		List<ComponentReference> references = component.getReferences();
		for (ComponentReference ref : references) {
			Reference r = f.createReference();
			if (ref.getCallback() != null) {
				r.setCallback((Callback) EcoreUtil.copy(ref.getCallback()));
			}
			if (ref.getInterface() != null) {
				r.setInterface((Interface) EcoreUtil.copy((EObject) ref
						.getInterface()));
			}
			r.setName(ref.getName());
			r.setWiredByImpl(ref.isWiredByImpl());
			r.setMultiplicity(ref.getMultiplicity());
			ct.getReferences().add(r);
		}

		List<ComponentProperty> componentProperties = component.getProperties();
		for (ComponentProperty componentProperty : componentProperties) {
			Property property = SCAExtensionsFactory.INSTANCE.createProperty();
			property.setType(componentProperty.getType());
			property.setMustSupply(componentProperty.isMustSupply());
			property.setName(componentProperty.getName());
			property.setSimpleValue(componentProperty.getSimpleValue());
			property.setComplexValue(componentProperty.getComplexValue());
			ct.getProperties().add(property);
		}
		
		return ct;
	}
	
	/**
	 * @generated
	 */	
	private static void writeProperties(Properties op,
			EList<Property> propertiesList) {
		if (propertiesList.size() == 0) {
			return;
		}
		StringBuffer names = new StringBuffer();
		for (Property property : propertiesList) {
			names.append(property.getName()).append(VALUE_SEPERATOR);
		}
		names.deleteCharAt(names.length() - 1);// remove last ","
		writeProperty(op, COMPONENT_PROPERTIES, names.toString());

		for (Property property : propertiesList) {
			writeProperty(op, property);
		}
	}
	
	/**
	 * @generated
	 */	
	private static void writeProperty(Properties properties, Property property) {
		String prefix = COMPONENT_PROPERTY + "." + property.getName();
		writeProperty(properties, prefix + ".value", property.getSimpleValue());
		writeProperty(properties, prefix + ".mustsupply", property
				.isMustSupply() ? "true" : "false");
		writeProperty(properties, prefix + ".type", property.getType()
				.toString());

	}
	
	/**
	 * @generated
	 */	
	private static void writeReferences(Properties properties,
			EList<Reference> references) {
		// no reference, do nothing
		if (references.size() == 0) {
			return;
		}
		StringBuffer names = new StringBuffer();
		for (Reference reference : references) {
			names.append(reference.getName()).append(VALUE_SEPERATOR);
		}
		names.deleteCharAt(names.length() - 1);// remove last ","
		writeProperty(properties, COMPONENT_REFERENCES, names.toString());

		for (Reference reference : references) {
			writeReference(properties, reference);
		}
	}
	
	/**
	 * @generated
	 */	
	private static void writeReference(Properties properties,
			Reference reference) {
		String prefix = COMPONENT_REFERENCE + "." + reference.getName();
		writeProperty(properties, prefix + ".wirebyimpl",
				reference.isWiredByImpl() ? "true" : "false");
		writeProperty(properties, prefix + ".autoWire",
				reference.isAutowire() ? "true" : "false");
		writeProperty(properties, prefix + ".multiplicity", reference
				.getMultiplicity().getLiteral());
		writeInterface(properties, prefix, reference.getInterface());
		writeCallback(properties, prefix, reference.getCallback());
	}
	
	/**
	 * @generated
	 */	
	private static void writeServices(Properties properties,
			EList<Service> services) {
		// no service, do nothing
		if (services.size() == 0) {
			return;
		}
		StringBuffer names = new StringBuffer();
		for (Service service : services) {
			names.append(service.getName()).append(VALUE_SEPERATOR);
		}
		names.deleteCharAt(names.length() - 1);// remove last ","
		writeProperty(properties, COMPONENT_SERVICES, names.toString());

		for (Service service : services) {
			writeService(properties, service);
		}
	}
	
	/**
	 * @generated
	 */	
	private static void writeService(Properties properties, Service service) {
		String prefix = COMPONENT_SERVICE + "." + service.getName();
		writeInterface(properties, prefix, service.getInterface());
		writeCallback(properties, prefix, service.getCallback());
	}
	
	/**
	 * @generated
	 */	
	private static void writeCallback(Properties properties, String prefix,
			Callback callback) {
		// TODO to be implemented
	}
	
	/**
	 * @generated
	 */	
	private static void writeInterface(Properties properties, String prefix,
			Interface interface1) {
		// TODO what we should do if the interface is not wsdl interface
		if (interface1 instanceof Wsdl11Interface) {
			Wsdl11Interface wsdlInterface = (Wsdl11Interface) interface1;
			writeProperty(properties, prefix + ".interface.porttype",
					wsdlInterface.getPortTypeName());
			writeProperty(properties, prefix + ".interface.wsdllocation",
					wsdlInterface.getWsdlLocation());
		}
	}
	
	/**
	 * @generated
	 */	
	private static void writeProperty(Properties properties, String key,
			String value) {
		properties.setProperty(key, value);
	}
	
	/**
	 * @generated
	 */		
	private static ResourceSet createDefaultResourceSet() {
		ResourceSet newResourceSet = new ResourceSetImpl();
		Registry resourceFactoryRegistry = newResourceSet
				.getResourceFactoryRegistry();
		WSDLResourceFactoryRegistry wsdlResourceFactoryRegistry = new WSDLResourceFactoryRegistry(
				resourceFactoryRegistry);
		newResourceSet.setResourceFactoryRegistry(wsdlResourceFactoryRegistry);
		Map<Object,Object> loadOptions = newResourceSet.getLoadOptions();
		loadOptions.put(WSDLResourceImpl.TRACK_LOCATION, Boolean.TRUE);
		loadOptions.put(WSDLResourceImpl.CONTINUE_ON_LOAD_ERROR, Boolean.TRUE);
		return newResourceSet;
	}	

}
