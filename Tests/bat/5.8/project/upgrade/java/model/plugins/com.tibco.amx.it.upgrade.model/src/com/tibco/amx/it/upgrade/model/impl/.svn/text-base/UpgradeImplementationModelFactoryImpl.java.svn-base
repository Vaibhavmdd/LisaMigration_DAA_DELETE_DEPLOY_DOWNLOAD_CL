/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package com.tibco.amx.it.upgrade.model.impl;

import com.tibco.amx.it.upgrade.model.*;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class UpgradeImplementationModelFactoryImpl extends EFactoryImpl
		implements UpgradeImplementationModelFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static final UpgradeImplementationModelFactoryImpl eINSTANCE = init();

	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static UpgradeImplementationModelFactoryImpl init() {
		try {
			UpgradeImplementationModelFactoryImpl theUpgradeImplementationModelFactory = (UpgradeImplementationModelFactoryImpl) EPackage.Registry.INSTANCE
					.getEFactory("http://xsd.tns.tibco.com/amf/models/sca/implementationtype/upgrade");
			if (theUpgradeImplementationModelFactory != null) {
				return theUpgradeImplementationModelFactory;
			}
		} catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new UpgradeImplementationModelFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public UpgradeImplementationModelFactoryImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EObject create(EClass eClass) {
		switch (eClass.getClassifierID()) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION:
			return (EObject) createUpgradeImplementation();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT:
			return (EObject) createUpgradeImplementationDocument();
		default:
			throw new IllegalArgumentException("The class '" + eClass.getName()
					+ "' is not a valid classifier");
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public UpgradeImplementation createUpgradeImplementation() {
		UpgradeImplementationImpl upgradeImplementation = new UpgradeImplementationImpl();
		return upgradeImplementation;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public UpgradeImplementationDocument createUpgradeImplementationDocument() {
		UpgradeImplementationDocumentImpl upgradeImplementationDocument = new UpgradeImplementationDocumentImpl();
		return upgradeImplementationDocument;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public UpgradeImplementationModelPackageImpl getUpgradeImplementationModelPackageImpl() {
		return (UpgradeImplementationModelPackageImpl) getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	@Deprecated
	public static UpgradeImplementationModelPackageImpl getPackage() {
		return UpgradeImplementationModelPackageImpl.eINSTANCE;
	}

} //UpgradeImplementationModelFactoryImpl
