/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.example.weathersample;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.example.weathersample.WeathersampleFactory
 * @model kind="package"
 * @generated
 */
public interface WeathersamplePackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "weathersample";

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "http://www.example.org/weathersample";

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "weathersample";

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	WeathersamplePackage eINSTANCE = org.example.weathersample.impl.WeathersamplePackageImpl.init();

	/**
	 * The meta object id for the '{@link org.example.weathersample.impl.WeatherReportImpl <em>Weather Report</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.example.weathersample.impl.WeatherReportImpl
	 * @see org.example.weathersample.impl.WeathersamplePackageImpl#getWeatherReport()
	 * @generated
	 */
	int WEATHER_REPORT = 0;

	/**
	 * The feature id for the '<em><b>City</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__CITY = 0;

	/**
	 * The feature id for the '<em><b>Id</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__ID = 1;

	/**
	 * The feature id for the '<em><b>State</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__STATE = 2;

	/**
	 * The feature id for the '<em><b>Zip</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__ZIP = 3;

	/**
	 * The feature id for the '<em><b>High</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__HIGH = 4;

	/**
	 * The feature id for the '<em><b>Low</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__LOW = 5;

	/**
	 * The feature id for the '<em><b>Forecast</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT__FORECAST = 6;

	/**
	 * The number of structural features of the '<em>Weather Report</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WEATHER_REPORT_FEATURE_COUNT = 7;


	/**
	 * Returns the meta object for class '{@link org.example.weathersample.WeatherReport <em>Weather Report</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Weather Report</em>'.
	 * @see org.example.weathersample.WeatherReport
	 * @generated
	 */
	EClass getWeatherReport();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getCity <em>City</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>City</em>'.
	 * @see org.example.weathersample.WeatherReport#getCity()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_City();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getId <em>Id</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Id</em>'.
	 * @see org.example.weathersample.WeatherReport#getId()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_Id();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getState <em>State</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>State</em>'.
	 * @see org.example.weathersample.WeatherReport#getState()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_State();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getZip <em>Zip</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Zip</em>'.
	 * @see org.example.weathersample.WeatherReport#getZip()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_Zip();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getHigh <em>High</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>High</em>'.
	 * @see org.example.weathersample.WeatherReport#getHigh()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_High();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getLow <em>Low</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Low</em>'.
	 * @see org.example.weathersample.WeatherReport#getLow()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_Low();

	/**
	 * Returns the meta object for the attribute '{@link org.example.weathersample.WeatherReport#getForecast <em>Forecast</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Forecast</em>'.
	 * @see org.example.weathersample.WeatherReport#getForecast()
	 * @see #getWeatherReport()
	 * @generated
	 */
	EAttribute getWeatherReport_Forecast();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	WeathersampleFactory getWeathersampleFactory();

	/**
	 * <!-- begin-user-doc -->
	 * Defines literals for the meta objects that represent
	 * <ul>
	 *   <li>each class,</li>
	 *   <li>each feature of each class,</li>
	 *   <li>each enum,</li>
	 *   <li>and each data type</li>
	 * </ul>
	 * <!-- end-user-doc -->
	 * @generated
	 */
	interface Literals {
		/**
		 * The meta object literal for the '{@link org.example.weathersample.impl.WeatherReportImpl <em>Weather Report</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.example.weathersample.impl.WeatherReportImpl
		 * @see org.example.weathersample.impl.WeathersamplePackageImpl#getWeatherReport()
		 * @generated
		 */
		EClass WEATHER_REPORT = eINSTANCE.getWeatherReport();

		/**
		 * The meta object literal for the '<em><b>City</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__CITY = eINSTANCE.getWeatherReport_City();

		/**
		 * The meta object literal for the '<em><b>Id</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__ID = eINSTANCE.getWeatherReport_Id();

		/**
		 * The meta object literal for the '<em><b>State</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__STATE = eINSTANCE.getWeatherReport_State();

		/**
		 * The meta object literal for the '<em><b>Zip</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__ZIP = eINSTANCE.getWeatherReport_Zip();

		/**
		 * The meta object literal for the '<em><b>High</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__HIGH = eINSTANCE.getWeatherReport_High();

		/**
		 * The meta object literal for the '<em><b>Low</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__LOW = eINSTANCE.getWeatherReport_Low();

		/**
		 * The meta object literal for the '<em><b>Forecast</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute WEATHER_REPORT__FORECAST = eINSTANCE.getWeatherReport_Forecast();

	}

} //WeathersamplePackage
