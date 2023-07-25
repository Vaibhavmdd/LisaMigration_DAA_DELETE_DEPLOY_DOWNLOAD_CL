/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package com.tibco.amx.it.upgrade.model.impl;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.amx.it.upgrade.model.UpgradeImplementationDocument;

import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EMap;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;

import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Upgrade Implementation Document</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationDocumentImpl#getMixed <em>Mixed</em>}</li>
 *   <li>{@link com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationDocumentImpl#getXMLNSPrefixMap <em>XMLNS Prefix Map</em>}</li>
 *   <li>{@link com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationDocumentImpl#getXSISchemaLocation <em>XSI Schema Location</em>}</li>
 *   <li>{@link com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationDocumentImpl#getImplementationUpgrade <em>Implementation Upgrade</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class UpgradeImplementationDocumentImpl extends EObjectImpl implements
		UpgradeImplementationDocument {
	/**
	 * The cached value of the '{@link #getMixed() <em>Mixed</em>}' attribute list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getMixed()
	 * @generated
	 * @ordered
	 */
	protected FeatureMap mixed;

	/**
	 * The cached value of the '{@link #getXMLNSPrefixMap() <em>XMLNS Prefix Map</em>}' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getXMLNSPrefixMap()
	 * @generated
	 * @ordered
	 */
	protected EMap<String, String> xMLNSPrefixMap;

	/**
	 * The cached value of the '{@link #getXSISchemaLocation() <em>XSI Schema Location</em>}' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getXSISchemaLocation()
	 * @generated
	 * @ordered
	 */
	protected EMap<String, String> xSISchemaLocation;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected UpgradeImplementationDocumentImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION_DOCUMENT;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public FeatureMap getMixed() {
		if (mixed == null) {
			mixed = new BasicFeatureMap(
					this,
					UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__MIXED);
		}
		return mixed;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EMap<String, String> getXMLNSPrefixMap() {
		if (xMLNSPrefixMap == null) {
			xMLNSPrefixMap = new EcoreEMap<String, String>(
					EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY,
					EStringToStringMapEntryImpl.class,
					this,
					UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XMLNS_PREFIX_MAP);
		}
		return xMLNSPrefixMap;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EMap<String, String> getXSISchemaLocation() {
		if (xSISchemaLocation == null) {
			xSISchemaLocation = new EcoreEMap<String, String>(
					EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY,
					EStringToStringMapEntryImpl.class,
					this,
					UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XSI_SCHEMA_LOCATION);
		}
		return xSISchemaLocation;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public UpgradeImplementation getImplementationUpgrade() {
		return (UpgradeImplementation) getMixed()
				.get(
						UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE,
						true);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetImplementationUpgrade(
			UpgradeImplementation newImplementationUpgrade,
			NotificationChain msgs) {
		return ((FeatureMap.Internal) getMixed())
				.basicAdd(
						UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE,
						newImplementationUpgrade, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setImplementationUpgrade(
			UpgradeImplementation newImplementationUpgrade) {
		((FeatureMap.Internal) getMixed())
				.set(
						UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE,
						newImplementationUpgrade);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd,
			int featureID, NotificationChain msgs) {
		switch (featureID) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__MIXED:
			return ((InternalEList<?>) getMixed()).basicRemove(otherEnd, msgs);
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XMLNS_PREFIX_MAP:
			return ((InternalEList<?>) getXMLNSPrefixMap()).basicRemove(
					otherEnd, msgs);
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XSI_SCHEMA_LOCATION:
			return ((InternalEList<?>) getXSISchemaLocation()).basicRemove(
					otherEnd, msgs);
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE:
			return basicSetImplementationUpgrade(null, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__MIXED:
			if (coreType)
				return getMixed();
			return ((FeatureMap.Internal) getMixed()).getWrapper();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XMLNS_PREFIX_MAP:
			if (coreType)
				return getXMLNSPrefixMap();
			else
				return getXMLNSPrefixMap().map();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XSI_SCHEMA_LOCATION:
			if (coreType)
				return getXSISchemaLocation();
			else
				return getXSISchemaLocation().map();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE:
			return getImplementationUpgrade();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__MIXED:
			((FeatureMap.Internal) getMixed()).set(newValue);
			return;
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XMLNS_PREFIX_MAP:
			((EStructuralFeature.Setting) getXMLNSPrefixMap()).set(newValue);
			return;
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XSI_SCHEMA_LOCATION:
			((EStructuralFeature.Setting) getXSISchemaLocation()).set(newValue);
			return;
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE:
			setImplementationUpgrade((UpgradeImplementation) newValue);
			return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__MIXED:
			getMixed().clear();
			return;
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XMLNS_PREFIX_MAP:
			getXMLNSPrefixMap().clear();
			return;
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XSI_SCHEMA_LOCATION:
			getXSISchemaLocation().clear();
			return;
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE:
			setImplementationUpgrade((UpgradeImplementation) null);
			return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__MIXED:
			return mixed != null && !mixed.isEmpty();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XMLNS_PREFIX_MAP:
			return xMLNSPrefixMap != null && !xMLNSPrefixMap.isEmpty();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__XSI_SCHEMA_LOCATION:
			return xSISchemaLocation != null && !xSISchemaLocation.isEmpty();
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION_DOCUMENT__IMPLEMENTATION_UPGRADE:
			return getImplementationUpgrade() != null;
		}
		return super.eIsSet(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String toString() {
		if (eIsProxy())
			return super.toString();

		StringBuffer result = new StringBuffer(super.toString());
		result.append(" (mixed: ");
		result.append(mixed);
		result.append(')');
		return result.toString();
	}

} //UpgradeImplementationDocumentImpl
