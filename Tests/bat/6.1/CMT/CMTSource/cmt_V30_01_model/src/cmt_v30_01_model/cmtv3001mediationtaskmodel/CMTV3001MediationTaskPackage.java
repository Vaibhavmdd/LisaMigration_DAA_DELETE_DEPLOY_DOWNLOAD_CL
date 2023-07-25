/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package cmt_v30_01_model.cmtv3001mediationtaskmodel;

import com.tibco.amsb.core.mediationextmodel.MediationextmodelPackage;

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
 * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTaskFactory
 * @model kind="package"
 * @generated
 */
public interface CMTV3001MediationTaskPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "cmtv3001mediationtaskmodel";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://xsd.tns.cmt_v30_01_model.com/amsb/task/custom/models/cmtv3001mediationtaskmodel";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "cmtv3001mediationtaskmodel";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  CMTV3001MediationTaskPackage eINSTANCE = cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskPackageImpl.init();

  /**
   * The meta object id for the '{@link cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskImpl <em>CMTV3001 Mediation Task</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskImpl
   * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskPackageImpl#getCMTV3001MediationTask()
   * @generated
   */
  int CMTV3001_MEDIATION_TASK = 0;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CMTV3001_MEDIATION_TASK__NAME = MediationextmodelPackage.MEDIATION_TASK__NAME;

  /**
   * The feature id for the '<em><b>Description</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CMTV3001_MEDIATION_TASK__DESCRIPTION = MediationextmodelPackage.MEDIATION_TASK__DESCRIPTION;

  /**
   * The feature id for the '<em><b>Errorinfo</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CMTV3001_MEDIATION_TASK__ERRORINFO = MediationextmodelPackage.MEDIATION_TASK_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>CMTV3001 Mediation Task</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CMTV3001_MEDIATION_TASK_FEATURE_COUNT = MediationextmodelPackage.MEDIATION_TASK_FEATURE_COUNT + 1;


  /**
   * Returns the meta object for class '{@link cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask <em>CMTV3001 Mediation Task</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>CMTV3001 Mediation Task</em>'.
   * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask
   * @generated
   */
  EClass getCMTV3001MediationTask();

  /**
   * Returns the meta object for the attribute '{@link cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask#getErrorinfo <em>Errorinfo</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Errorinfo</em>'.
   * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask#getErrorinfo()
   * @see #getCMTV3001MediationTask()
   * @generated
   */
  EAttribute getCMTV3001MediationTask_Errorinfo();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  CMTV3001MediationTaskFactory getCMTV3001MediationTaskFactory();

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
  interface Literals
  {
    /**
     * The meta object literal for the '{@link cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskImpl <em>CMTV3001 Mediation Task</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskImpl
     * @see cmt_v30_01_model.cmtv3001mediationtaskmodel.impl.CMTV3001MediationTaskPackageImpl#getCMTV3001MediationTask()
     * @generated
     */
    EClass CMTV3001_MEDIATION_TASK = eINSTANCE.getCMTV3001MediationTask();

    /**
     * The meta object literal for the '<em><b>Errorinfo</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CMTV3001_MEDIATION_TASK__ERRORINFO = eINSTANCE.getCMTV3001MediationTask_Errorinfo();

  }

} //CMTV3001MediationTaskPackage
