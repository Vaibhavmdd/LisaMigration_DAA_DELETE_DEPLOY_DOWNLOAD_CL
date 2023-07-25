/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package com.tibco.amx.it.upgrade.model;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @generated
 */
public interface UpgradeImplementationModelFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	UpgradeImplementationModelFactory INSTANCE = com.tibco.amx.it.upgrade.model.impl.UpgradeImplementationModelFactoryImpl.eINSTANCE;

	/**
	 * Returns a new object of class '<em>Upgrade Implementation</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Upgrade Implementation</em>'.
	 * @generated
	 */
	UpgradeImplementation createUpgradeImplementation();

	/**
	 * Returns a new object of class '<em>Upgrade Implementation Document</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Upgrade Implementation Document</em>'.
	 * @generated
	 */
	UpgradeImplementationDocument createUpgradeImplementationDocument();

} //UpgradeImplementationModelFactory
