/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package cmt_v30_01_model.cmtv3001mediationtaskmodel.impl;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask;
import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTaskFactory;
import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTaskPackage;

import com.tibco.amsb.core.mediationextmodel.MediationextmodelPackage;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class CMTV3001MediationTaskPackageImpl extends EPackageImpl implements CMTV3001MediationTaskPackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass cmtv3001MediationTaskEClass = null;

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
   * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTaskPackage#eNS_URI
   * @see #init()
   * @generated
   */
  private CMTV3001MediationTaskPackageImpl()
  {
    super(eNS_URI, CMTV3001MediationTaskFactory.eINSTANCE);
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
  public static CMTV3001MediationTaskPackage init()
  {
    if (isInited) return (CMTV3001MediationTaskPackage)EPackage.Registry.INSTANCE.getEPackage(CMTV3001MediationTaskPackage.eNS_URI);

    // Obtain or create and register package
    CMTV3001MediationTaskPackageImpl theCMTV3001MediationTaskPackage = (CMTV3001MediationTaskPackageImpl)(EPackage.Registry.INSTANCE.getEPackage(eNS_URI) instanceof CMTV3001MediationTaskPackageImpl ? EPackage.Registry.INSTANCE.getEPackage(eNS_URI) : new CMTV3001MediationTaskPackageImpl());

    isInited = true;

    // Initialize simple dependencies
    MediationextmodelPackage.eINSTANCE.eClass();

    // Create package meta-data objects
    theCMTV3001MediationTaskPackage.createPackageContents();

    // Initialize created meta-data
    theCMTV3001MediationTaskPackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theCMTV3001MediationTaskPackage.freeze();

    return theCMTV3001MediationTaskPackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getCMTV3001MediationTask()
  {
    return cmtv3001MediationTaskEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getCMTV3001MediationTask_Errorinfo()
  {
    return (EAttribute)cmtv3001MediationTaskEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public CMTV3001MediationTaskFactory getCMTV3001MediationTaskFactory()
  {
    return (CMTV3001MediationTaskFactory)getEFactoryInstance();
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
  public void createPackageContents()
  {
    if (isCreated) return;
    isCreated = true;

    // Create classes and their features
    cmtv3001MediationTaskEClass = createEClass(CMTV3001_MEDIATION_TASK);
    createEAttribute(cmtv3001MediationTaskEClass, CMTV3001_MEDIATION_TASK__ERRORINFO);
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
  public void initializePackageContents()
  {
    if (isInitialized) return;
    isInitialized = true;

    // Initialize package
    setName(eNAME);
    setNsPrefix(eNS_PREFIX);
    setNsURI(eNS_URI);

    // Obtain other dependent packages
    MediationextmodelPackage theMediationextmodelPackage = (MediationextmodelPackage)EPackage.Registry.INSTANCE.getEPackage(MediationextmodelPackage.eNS_URI);

    // Add supertypes to classes
    cmtv3001MediationTaskEClass.getESuperTypes().add(theMediationextmodelPackage.getMediationTask());

    // Initialize classes and features; add operations and parameters
    initEClass(cmtv3001MediationTaskEClass, CMTV3001MediationTask.class, "CMTV3001MediationTask", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getCMTV3001MediationTask_Errorinfo(), ecorePackage.getEString(), "errorinfo", "Attribute_Value", 0, 1, CMTV3001MediationTask.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Create resource
    createResource(eNS_URI);
  }

} //CMTV3001MediationTaskPackageImpl
