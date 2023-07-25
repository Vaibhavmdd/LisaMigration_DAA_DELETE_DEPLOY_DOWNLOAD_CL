/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.example.weathersample.impl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

import org.example.weathersample.WeatherReport;
import org.example.weathersample.WeathersampleFactory;
import org.example.weathersample.WeathersamplePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class WeathersamplePackageImpl extends EPackageImpl implements WeathersamplePackage {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass weatherReportEClass = null;

	/**
	 * Creates an instance of the model <b>Package</b>, registered with
	 * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
	 * package URI value.
	 * <p>Note: the correct way to create the package is via the static
	 * factory method {@link #init init()}, which also performs
	 * initialization of the package, or returns the registered package,
	 * if one already exists.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.emf.ecore.EPackage.Registry
	 * @see org.example.weathersample.WeathersamplePackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private WeathersamplePackageImpl() {
		super(eNS_URI, WeathersampleFactory.eINSTANCE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private static boolean isInited = false;

	/**
	 * Creates, registers, and initializes the <b>Package</b> for this
	 * model, and for any others upon which it depends.  Simple
	 * dependencies are satisfied by calling this method on all
	 * dependent packages before doing anything else.  This method drives
	 * initialization for interdependent packages directly, in parallel
	 * with this package, itself.
	 * <p>Of this package and its interdependencies, all packages which
	 * have not yet been registered by their URI values are first created
	 * and registered.  The packages are then initialized in two steps:
	 * meta-model objects for all of the packages are created before any
	 * are initialized, since one package's meta-model objects may refer to
	 * those of another.
	 * <p>Invocation of this method will not affect any packages that have
	 * already been initialized.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static WeathersamplePackage init() {
		if (isInited) return (WeathersamplePackage)EPackage.Registry.INSTANCE.getEPackage(WeathersamplePackage.eNS_URI);

		// Obtain or create and register package
		WeathersamplePackageImpl theWeathersamplePackage = (WeathersamplePackageImpl)(EPackage.Registry.INSTANCE.getEPackage(eNS_URI) instanceof WeathersamplePackageImpl ? EPackage.Registry.INSTANCE.getEPackage(eNS_URI) : new WeathersamplePackageImpl());

		isInited = true;

		// Initialize simple dependencies
		XMLTypePackage.eINSTANCE.eClass();

		// Create package meta-data objects
		theWeathersamplePackage.createPackageContents();

		// Initialize created meta-data
		theWeathersamplePackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		theWeathersamplePackage.freeze();

		return theWeathersamplePackage;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getWeatherReport() {
		return weatherReportEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_City() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_Id() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(1);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_State() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(2);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_Zip() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(3);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_High() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(4);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_Low() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(5);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EAttribute getWeatherReport_Forecast() {
		return (EAttribute)weatherReportEClass.getEStructuralFeatures().get(6);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public WeathersampleFactory getWeathersampleFactory() {
		return (WeathersampleFactory)getEFactoryInstance();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private boolean isCreated = false;

	/**
	 * Creates the meta-model objects for the package.  This method is
	 * guarded to have no affect on any invocation but its first.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void createPackageContents() {
		if (isCreated) return;
		isCreated = true;

		// Create classes and their features
		weatherReportEClass = createEClass(WEATHER_REPORT);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__CITY);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__ID);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__STATE);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__ZIP);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__HIGH);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__LOW);
		createEAttribute(weatherReportEClass, WEATHER_REPORT__FORECAST);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private boolean isInitialized = false;

	/**
	 * Complete the initialization of the package and its meta-model.  This
	 * method is guarded to have no affect on any invocation but its first.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void initializePackageContents() {
		if (isInitialized) return;
		isInitialized = true;

		// Initialize package
		setName(eNAME);
		setNsPrefix(eNS_PREFIX);
		setNsURI(eNS_URI);

		// Obtain other dependent packages
		XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage(XMLTypePackage.eNS_URI);

		// Create type parameters

		// Set bounds for type parameters

		// Add supertypes to classes

		// Initialize classes and features; add operations and parameters
		initEClass(weatherReportEClass, WeatherReport.class, "WeatherReport", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
		initEAttribute(getWeatherReport_City(), theXMLTypePackage.getString(), "city", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEAttribute(getWeatherReport_Id(), theXMLTypePackage.getLong(), "id", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEAttribute(getWeatherReport_State(), theXMLTypePackage.getString(), "state", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEAttribute(getWeatherReport_Zip(), theXMLTypePackage.getString(), "zip", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEAttribute(getWeatherReport_High(), theXMLTypePackage.getFloat(), "high", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEAttribute(getWeatherReport_Low(), theXMLTypePackage.getFloat(), "low", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEAttribute(getWeatherReport_Forecast(), theXMLTypePackage.getString(), "forecast", null, 1, 1, WeatherReport.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

		// Create resource
		createResource(eNS_URI);

		// Create annotations
		// http:///org/eclipse/emf/ecore/util/ExtendedMetaData
		createExtendedMetaDataAnnotations();
	}

	/**
	 * Initializes the annotations for <b>http:///org/eclipse/emf/ecore/util/ExtendedMetaData</b>.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected void createExtendedMetaDataAnnotations() {
		String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";		
		addAnnotation
		  (weatherReportEClass, 
		   source, 
		   new String[] {
			 "name", "WeatherReport",
			 "kind", "elementOnly"
		   });		
		addAnnotation
		  (getWeatherReport_City(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "city"
		   });		
		addAnnotation
		  (getWeatherReport_Id(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "id"
		   });		
		addAnnotation
		  (getWeatherReport_State(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "state"
		   });		
		addAnnotation
		  (getWeatherReport_Zip(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "zip"
		   });		
		addAnnotation
		  (getWeatherReport_High(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "high"
		   });		
		addAnnotation
		  (getWeatherReport_Low(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "low"
		   });		
		addAnnotation
		  (getWeatherReport_Forecast(), 
		   source, 
		   new String[] {
			 "kind", "element",
			 "name", "forecast"
		   });
	}

} //WeathersamplePackageImpl
