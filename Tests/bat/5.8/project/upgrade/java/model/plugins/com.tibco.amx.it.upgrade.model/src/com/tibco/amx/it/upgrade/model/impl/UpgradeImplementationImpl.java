/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package com.tibco.amx.it.upgrade.model.impl;

import com.tibco.amf.sca.model.extensionpoints.impl.ImplementationImpl;

import com.tibco.amx.it.upgrade.model.UpgradeImplementation;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Upgrade Implementation</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationImpl#getConfigFile <em>Config File</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class UpgradeImplementationImpl extends ImplementationImpl implements
		UpgradeImplementation {
	/**
	 * The default value of the '{@link #getConfigFile() <em>Config File</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getConfigFile()
	 * @generated
	 * @ordered
	 */
	protected static final String CONFIG_FILE_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getConfigFile() <em>Config File</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getConfigFile()
	 * @generated
	 * @ordered
	 */
	protected String configFile = CONFIG_FILE_EDEFAULT;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected UpgradeImplementationImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return UpgradeImplementationModelPackageImpl.Literals.UPGRADE_IMPLEMENTATION;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public String getConfigFile() {
		return configFile;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setConfigFile(String newConfigFile) {
		String oldConfigFile = configFile;
		configFile = newConfigFile;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(
					this,
					Notification.SET,
					UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION__CONFIG_FILE,
					oldConfigFile, configFile));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION__CONFIG_FILE:
			return getConfigFile();
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
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION__CONFIG_FILE:
			setConfigFile((String) newValue);
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
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION__CONFIG_FILE:
			setConfigFile(CONFIG_FILE_EDEFAULT);
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
		case UpgradeImplementationModelPackageImpl.UPGRADE_IMPLEMENTATION__CONFIG_FILE:
			return CONFIG_FILE_EDEFAULT == null ? configFile != null
					: !CONFIG_FILE_EDEFAULT.equals(configFile);
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
		result.append(" (configFile: ");
		result.append(configFile);
		result.append(')');
		return result.toString();
	}

} //UpgradeImplementationImpl
