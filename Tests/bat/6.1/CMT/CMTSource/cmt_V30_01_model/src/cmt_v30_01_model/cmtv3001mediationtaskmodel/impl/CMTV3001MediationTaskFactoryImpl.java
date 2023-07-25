/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package cmt_v30_01_model.cmtv3001mediationtaskmodel.impl;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.*;

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
public class CMTV3001MediationTaskFactoryImpl extends EFactoryImpl implements CMTV3001MediationTaskFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static CMTV3001MediationTaskFactory init()
  {
    try
    {
      CMTV3001MediationTaskFactory theCMTV3001MediationTaskFactory = (CMTV3001MediationTaskFactory)EPackage.Registry.INSTANCE.getEFactory("http://xsd.tns.cmt_v30_01_model.com/amsb/task/custom/models/cmtv3001mediationtaskmodel"); 
      if (theCMTV3001MediationTaskFactory != null)
      {
        return theCMTV3001MediationTaskFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new CMTV3001MediationTaskFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public CMTV3001MediationTaskFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case CMTV3001MediationTaskPackage.CMTV3001_MEDIATION_TASK: return createCMTV3001MediationTask();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public CMTV3001MediationTask createCMTV3001MediationTask()
  {
    CMTV3001MediationTaskImpl cmtv3001MediationTask = new CMTV3001MediationTaskImpl();
    return cmtv3001MediationTask;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public CMTV3001MediationTaskPackage getCMTV3001MediationTaskPackage()
  {
    return (CMTV3001MediationTaskPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  public static CMTV3001MediationTaskPackage getPackage()
  {
    return CMTV3001MediationTaskPackage.eINSTANCE;
  }

} //CMTV3001MediationTaskFactoryImpl
