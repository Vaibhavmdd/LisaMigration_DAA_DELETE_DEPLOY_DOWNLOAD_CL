/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.example.weathersample.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.example.weathersample.WeatherReport;
import org.example.weathersample.WeathersampleFactory;
import org.example.weathersample.WeathersamplePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class WeathersampleFactoryImpl extends EFactoryImpl implements WeathersampleFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static WeathersampleFactory init() {
		try {
			WeathersampleFactory theWeathersampleFactory = (WeathersampleFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.example.org/weathersample"); 
			if (theWeathersampleFactory != null) {
				return theWeathersampleFactory;
			}
		}
		catch (Exception exception) {
			//EcorePlugin.INSTANCE.log(exception);
		}
		return new WeathersampleFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public WeathersampleFactoryImpl() {
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
			case WeathersamplePackage.WEATHER_REPORT: return createWeatherReport();
			default:
				throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public WeatherReport createWeatherReport() {
		WeatherReportImpl weatherReport = new WeatherReportImpl();
		return weatherReport;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public WeathersamplePackage getWeathersamplePackage() {
		return (WeathersamplePackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	@Deprecated
	public static WeathersamplePackage getPackage() {
		return WeathersamplePackage.eINSTANCE;
	}

} //WeathersampleFactoryImpl
