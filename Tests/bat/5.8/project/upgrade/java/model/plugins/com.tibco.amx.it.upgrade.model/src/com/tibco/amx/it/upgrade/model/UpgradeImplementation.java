/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package com.tibco.amx.it.upgrade.model;

import com.tibco.amf.sca.model.extensionpoints.Implementation;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Upgrade Implementation</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link com.tibco.amx.it.upgrade.model.UpgradeImplementation#getConfigFile <em>Config File</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public interface UpgradeImplementation extends Implementation {
	/**
	 * Returns the value of the '<em><b>Config File</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Config File</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Config File</em>' attribute.
	 * @see #setConfigFile(String)
	 * @generated
	 */
	String getConfigFile();

	/**
	 * Sets the value of the '{@link com.tibco.amx.it.upgrade.model.UpgradeImplementation#getConfigFile <em>Config File</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Config File</em>' attribute.
	 * @see #getConfigFile()
	 * @generated
	 */
	void setConfigFile(String value);

} // UpgradeImplementation
