package cmt_v30_01_runtime;

import org.slf4j.Logger;

import cmt_v30_01_model.cmtv3001mediationtaskmodel.CMTV3001MediationTask;

import com.tibco.mediation.task.rt.*;
import com.tibco.mediation.task.rt.context.TaskContext;

import com.tibco.mediation.task.rt.fault.TaskFault;
import com.tibco.mediation.task.rt.fault.TaskLifeCycleFault;

/**
 * Each mediation task in a mediation flow has a single instance of class
 * <code>CMTV3001RT</code> that allows the mediation task to interacts with
 * the mediation engine. The mediation task processing logic must be defined in
 * the execute() method of this class.
 * 
 * <code>Task/code> also provides task life cycle methods that can
 * be overridden to meet the requirements of a particular mediation task type.
 * The task life cycle methods are:
 * <ul>
 * <li>{@link com.tibco.amsb.core.task.rt.Task#init() init}
 * <li>{@link com.tibco.amsb.core.task.rt.Task#destroy() destroy}
 * </ul>
 * 
 * @see Task
 * @see TaskContext
 * @see TaskFault
 * @see TaskLifeCycleFault
 */
public class CMTV3001RT<I, U, N extends I, A extends I, S, T, X> extends
		Task<I, U, N, A, S, T, X> {

	/**
	 * <P>
	 * The init method is called once by the Process Engine after the instance
	 * is created. This method may be implemented to acquire any resources
	 * required for the task runtime.
	 * </P>
	 * 
	 * @throws TaskLifeCycleFault
	 *             Thrown by the method to indicate a failure caused by the
	 *             implementation of the initialization steps
	 */
	public void init() throws TaskLifeCycleFault {
	}

	/**
	 * <P>
	 * The destroy method is called once by the Process Engine before the
	 * instance is destroyed. This method may be implemented to release any
	 * resources acquired by the init method.
	 * </P>
	 * 
	 * @throws TaskLifeCycleFault
	 *             - Thrown by the method to indicate a failure caused by the
	 *             implementation of the resource release steps
	 */
	public void destroy() throws TaskLifeCycleFault {
	}

	/**
	 * The Process engine invokes this method to execute a task. Implementation
	 * of this method defines the behavior of the task.
	 * 
	 * @param input
	 *            The input to the task may be a XML document or
	 *            <code>null</code> if the task does not require an input
	 * @param exchange
	 *            The exchange carries the information flowing through the
	 *            process flow
	 * @return An XML Document which adheres to the output schema of the custom
	 *         task. May return null if the task does not require any output
	 * 
	 * @throws TaskFault
	 *             Thrown by the method to indicate a failure in executing the
	 *             implementation
	 * 
	 * 
	 * @NotThreadSafe - This method may be invoked by multiple threads
	 *                concurrently. Proper synchronization techniques should be
	 *                used to ensure the thread safety of instance state
	 */
	public N execute(final N input, final Exchange<N> exchange)
			throws TaskFault {
		/**
		 * Implementor of the custom mediation task needs to add custom code
		 * here.
		 */
		System.out.println("CMT 01 begin....");
		

		TaskContext myTaskContext =this.getContext();
		CMTV3001MediationTask cmtMT=(CMTV3001MediationTask) myTaskContext.getTaskConfiguration();
		
		 String cmterrorinfo=cmtMT.getErrorinfo();
		 if(cmterrorinfo.equalsIgnoreCase("NPE")){
		    	throw new NullPointerException("===This is a NullPointerException in execute() wrote by Anne: A demonstrate the runtime exception!" );
		    }
		 System.out.println("CMT 01 end......");
		return exchange.getMessageData();
	}
}