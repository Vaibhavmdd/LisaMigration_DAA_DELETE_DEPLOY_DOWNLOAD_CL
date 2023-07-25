/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package com.tibco.amx.it.upgrade.model;

import org.eclipse.emf.common.util.EMap;

import org.eclipse.emf.ecore.util.FeatureMap;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Upgrade Implementation Document</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.tibco.amx.it.upgrade.model.UpgradeImplementationDocument#getMixed <em>Mixed</em>}</li>
 *   <li>{@link com.tibco.amx.it.upgrade.model.UpgradeImplementationDocument#getXMLNSPrefixMap <em>XMLNS Prefix Map</em>}</li>
 *   <li>{@link com.tibco.amx.it.upgrade.model.UpgradeImplementationDocument#getXSISchemaLocation <em>XSI Schema Location</em>}</li>
 *   <li>{@link com.tibco.amx.it.upgrade.model.UpgradeImplementationDocument#getImplementationUpgrade <em>Implementation Upgrade</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public interface UpgradeImplementationDocument {
	/**
	 * Returns the value of the '<em><b>Mixed</b></em>' attribute list.
	 * The list contents are of type {@link org.eclipse.emf.ecore.util.FeatureMap.Entry}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Mixed</em>' attribute list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Mixed</em>' attribute list.
	 * @generated
	 */
	FeatureMap getMixed();

	/**
	 * Returns the value of the '<em><b>XMLNS Prefix Map</b></em>' map.
	 * The key is of type {@link java.lang.String},
	 * and the value is of type {@link java.lang.String},
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>XMLNS Prefix Map</em>' map isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>XMLNS Prefix Map</em>' map.
	 * @generated
	 */
	EMap<String, String> getXMLNSPrefixMap();

	/**
	 * Returns the value of the '<em><b>XSI Schema Location</b></em>' map.
	 * The key is of type {@link java.lang.String},
	 * and the value is of type {@link java.lang.String},
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>XSI Schema Location</em>' map isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>XSI Schema Location</em>' map.
	 * @generated
	 */
	EMap<String, String> getXSISchemaLocation();

	/**
	 * Returns the value of the '<em><b>Implementation Upgrade</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Implementation Upgrade</em>' containment reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Implementation Upgrade</em>' containment reference.
	 * @see #setImplementationUpgrade(UpgradeImplementation)
	 * @generated
	 */
	UpgradeImplementation getImplementationUpgrade();

	/**
	 * Sets the value of the '{@link com.tibco.amx.it.upgrade.model.UpgradeImplementationDocument#getImplementationUpgrade <em>Implementation Upgrade</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Implementation Upgrade</em>' containment reference.
	 * @see #getImplementationUpgrade()
	 * @generated
	 */
	void setImplementationUpgrade(UpgradeImplementation value);

} // UpgradeImplementationDocument
