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
package com.tibco.amx.it.upgrade.design.internal.ct;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

import com.tibco.amf.dependency.osgi.ImportPackage;
import com.tibco.amf.dependency.osgi.OsgiFactory;
import com.tibco.amf.dependency.osgi.VersionRange;
import com.tibco.amx.it.upgrade.design.internal.util.UpgradeConfigFileUtil;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amf.sca.componenttype.implementation.ComponentTypeResolver;
import com.tibco.amf.sca.componenttype.util.RequirementsUtil;
import com.tibco.amf.sca.model.componenttype.CapabilityType;
import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.componenttype.ComponentTypeFactory;
import com.tibco.amf.sca.model.componenttype.Reference;
import com.tibco.amf.sca.model.componenttype.RequiredCapability;
import com.tibco.amf.sca.model.componenttype.Requirements;
import com.tibco.amf.sca.model.componenttype.Service;
import com.tibco.amf.sca.model.extensionpoints.Implementation;
import com.tibco.amf.sca.model.extensionpoints.Interface;

 /**
 * <!-- begin-custom-doc -->
 * Component Type factory.
 * 
 * Class is responsible for providing Component Type based on existing
 * implementation object. Also it is responsible for providing component
 * dependencies.
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeComponentTypeResolver extends ComponentTypeResolver {

	/**
	 * <!-- begin-custom-doc -->
	 * The Constructor.
	 * <!-- end-custom-doc -->
	 * @generated
	 */	
	public UpgradeComponentTypeResolver() {
	}
	
	/**
	 * <!-- begin-custom-doc -->
	 * Construct object with requirements.
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */
	public Requirements getComponentRequirements(Implementation implementation) {
	    //begin-custom-code
		if (implementation instanceof UpgradeImplementation) {

			// list configuration files
			String file = ((UpgradeImplementation) implementation).getConfigFile();
			Requirements reqs = ComponentTypeFactory.eINSTANCE
					.createRequirements();
			reqs.getIncludedResources().add(file);

			ImportPackage importPck = OsgiFactory.eINSTANCE
					.createImportPackage();
			importPck
					.setName("com.tibco.amx.it.upgrade.model");//$NON-NLS-1$
			VersionRange range = OsgiFactory.eINSTANCE.createVersionRange();
			range.setLower("1.0.0");//$NON-NLS-1$
			range.setUpper("2.0.0");//$NON-NLS-1$
			importPck.setRange(range);
			reqs.getPackageImports().add(importPck);
			
			// add required capability - implementation.upgrade
			RequiredCapability upgradeCapab = ComponentTypeFactory.eINSTANCE
					.createRequiredCapability();
			upgradeCapab.setId("com.tibco.amx.capability.implementation.upgrade");
			upgradeCapab.setType(CapabilityType.FACTORY);
			upgradeCapab.setVersion("1.0.0");
			reqs.getRequiredCapabilities().add(upgradeCapab);

			// add list of the required files and folders to the
			// "reqs.getIncludedResources()"
			// collection. It should be list of paths relative to the composite.

			List<String> deps = RequirementsUtil.getRelativePaths(((EObject) implementation).eResource().getURI(),
			 calculateWSDLDependencies((UpgradeImplementation)implementation));
			reqs.getIncludedResources().addAll(deps);

			return reqs;
		}
		return null;
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	private List<URI> calculateWSDLDependencies(UpgradeImplementation implementation) {
		//begin-custom-code
		Set<URI> dependencies = new HashSet<URI>();
		ComponentType ct = UpgradeConfigFileUtil.readComponentTypeFromConfigFile(implementation);
				List<Service> services = ct.getServices();
		if (services != null) {
			for (Service service : services) {
				Interface interface1 = service.getInterface();
				if (interface1 != null) {
					List<URI> external = RequirementsUtil.getEMFDependencies(
							(EObject) interface1, false);
					dependencies.addAll(external);
				}
			}
		}

		List<Reference> references = ct.getReferences();
		if (references != null) {
			for (Reference reference : references) {
				Interface interface1 = reference.getInterface();
				if (interface1 != null) {
					List<URI> external = RequirementsUtil.getEMFDependencies(
							(EObject) interface1, false);
					dependencies.addAll(external);
				}
			}
		}
		return new ArrayList<URI>(dependencies);
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Resolve list of workspace resources that are affecting this
	 * implementation.
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
	public IResource[] getImplementationResources(Implementation implementation) {
		//begin-custom-code
		UpgradeImplementation target = (UpgradeImplementation) implementation;
		String configFile = target.getConfigFile();
		if (configFile != null) {
			URI base = ((EObject) target).eResource().getURI();
			try {
				URI resolved = URI.createURI(configFile).resolve(base);
				IFile file = WorkspaceSynchronizer.getFile(new ResourceImpl(
						resolved));
				if (file != null && file.exists()) {
					return new IResource[] { file };
				}
			} catch (IllegalArgumentException e) {
				// nothing here, if URI is invalid no file should be returned.
			}
		}
		return null;
		//end-custom-code
	}

	/**
	 * <!-- begin-custom-doc -->
	 * Provide Component Type. This can return null as an indicator that the
	 * implementation object is not configured properly (for example java IT
	 * without specified java class). 
	 * <!-- end-custom-doc -->
	 * @generated
	 * @Override
	 */	
    public ComponentType getComponentType(Implementation implementation) {
	    return getComponentTypeFromConfigFile(implementation);
	}

	/**
	 * <!-- begin-custom-doc -->
	 * 
	 * <!-- end-custom-doc -->
	 * @generated
	 */	
	private ComponentType getComponentTypeFromConfigFile(
			Implementation implementation) {
		//begin-custom-code
		if (implementation == null) {
			return null;
		}
		if (implementation instanceof UpgradeImplementation) {

			// upgrade implementation contains Component Type for simplicity.
			// The component type should be constructed here based on actual
			// implementation.
			UpgradeImplementation upgradeImplementation = (UpgradeImplementation) implementation;
			ComponentType ct = UpgradeConfigFileUtil
					.readComponentTypeFromConfigFile(upgradeImplementation);
			return ct;
		}
		return null;
		//end-custom-code
	}

}
