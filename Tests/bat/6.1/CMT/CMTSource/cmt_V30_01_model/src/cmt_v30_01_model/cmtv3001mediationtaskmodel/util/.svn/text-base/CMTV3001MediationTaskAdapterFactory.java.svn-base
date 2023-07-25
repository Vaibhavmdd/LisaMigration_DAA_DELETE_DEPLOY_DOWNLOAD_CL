/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package cmt_v30_01_model.cmtv3001mediationtaskmodel.util;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.*;

import com.tibco.amsb.core.mediationextmodel.MediationTask;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTaskPackage
 * @generated
 */
public class CMTV3001MediationTaskAdapterFactory extends AdapterFactoryImpl
{
  /**
   * The cached model package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static CMTV3001MediationTaskPackage modelPackage;

  /**
   * Creates an instance of the adapter factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public CMTV3001MediationTaskAdapterFactory()
  {
    if (modelPackage == null)
    {
      modelPackage = CMTV3001MediationTaskPackage.eINSTANCE;
    }
  }

  /**
   * Returns whether this factory is applicable for the type of the object.
   * <!-- begin-user-doc -->
   * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
   * <!-- end-user-doc -->
   * @return whether this factory is applicable for the type of the object.
   * @generated
   */
  public boolean isFactoryForType(Object object)
  {
    if (object == modelPackage)
    {
      return true;
    }
    if (object instanceof EObject)
    {
      return ((EObject)object).eClass().getEPackage() == modelPackage;
    }
    return false;
  }

  /**
   * The switch that delegates to the <code>createXXX</code> methods.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected CMTV3001MediationTaskSwitch modelSwitch =
    new CMTV3001MediationTaskSwitch()
    {
      public Object caseCMTV3001MediationTask(CMTV3001MediationTask object)
      {
        return createCMTV3001MediationTaskAdapter();
      }
      public Object caseMediationTask(MediationTask object)
      {
        return createMediationTaskAdapter();
      }
      public Object defaultCase(EObject object)
      {
        return createEObjectAdapter();
      }
    };

  /**
   * Creates an adapter for the <code>target</code>.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param target the object to adapt.
   * @return the adapter for the <code>target</code>.
   * @generated
   */
  public Adapter createAdapter(Notifier target)
  {
    return (Adapter)modelSwitch.doSwitch((EObject)target);
  }


  /**
   * Creates a new adapter for an object of class '{@link cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask <em>CMTV3001 Mediation Task</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask
   * @generated
   */
  public Adapter createCMTV3001MediationTaskAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link com.tibco.amsb.core.mediationextmodel.MediationTask <em>Mediation Task</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see com.tibco.amsb.core.mediationextmodel.MediationTask
   * @generated
   */
  public Adapter createMediationTaskAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for the default case.
   * <!-- begin-user-doc -->
   * This default implementation returns null.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @generated
   */
  public Adapter createEObjectAdapter()
  {
    return null;
  }

} //CMTV3001MediationTaskAdapterFactory
