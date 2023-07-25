/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package cmt_v30_01_model.cmtv3001mediationtaskmodel.impl;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask;
import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTaskPackage;

import com.tibco.amsb.core.mediationextmodel.impl.MediationTaskImpl;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>CMTV3001 Mediation Task</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskImpl#getErrorinfo <em>Errorinfo</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class CMTV3001MediationTaskImpl extends MediationTaskImpl implements CMTV3001MediationTask
{
  /**
   * The default value of the '{@link #getErrorinfo() <em>Errorinfo</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getErrorinfo()
   * @generated
   * @ordered
   */
  protected static final String ERRORINFO_EDEFAULT = "Attribute_Value";

  /**
   * The cached value of the '{@link #getErrorinfo() <em>Errorinfo</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getErrorinfo()
   * @generated
   * @ordered
   */
  protected String errorinfo = ERRORINFO_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected CMTV3001MediationTaskImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected EClass eStaticClass()
  {
    return CMTV3001MediationTaskPackage.Literals.CMTV3001_MEDIATION_TASK;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getErrorinfo()
  {
    return errorinfo;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setErrorinfo(String newErrorinfo)
  {
    String oldErrorinfo = errorinfo;
    errorinfo = newErrorinfo;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, CMTV3001MediationTaskPackage.CMTV3001_MEDIATION_TASK__ERRORINFO, oldErrorinfo, errorinfo));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case CMTV3001MediationTaskPackage.CMTV3001_MEDIATION_TASK__ERRORINFO:
        return getErrorinfo();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case CMTV3001MediationTaskPackage.CMTV3001_MEDIATION_TASK__ERRORINFO:
        setErrorinfo((String)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case CMTV3001MediationTaskPackage.CMTV3001_MEDIATION_TASK__ERRORINFO:
        setErrorinfo(ERRORINFO_EDEFAULT);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case CMTV3001MediationTaskPackage.CMTV3001_MEDIATION_TASK__ERRORINFO:
        return ERRORINFO_EDEFAULT == null ? errorinfo != null : !ERRORINFO_EDEFAULT.equals(errorinfo);
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (errorinfo: ");
    result.append(errorinfo);
    result.append(')');
    return result.toString();
  }

} //CMTV3001MediationTaskImpl
