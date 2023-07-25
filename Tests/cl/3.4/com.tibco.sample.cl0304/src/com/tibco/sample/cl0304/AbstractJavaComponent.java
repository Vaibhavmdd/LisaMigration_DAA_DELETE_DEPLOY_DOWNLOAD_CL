package com.tibco.sample.cl0304;

import com.tibco.matrix.qa.wsdl.lotteryservice.LotteryPort;
import com.tibco.matrix.qa.xsd.lottery.OneToNinetyNine;

/**
 * Abstract interface generated for component "JavaComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.sample.cl0304.AbstractJavaComponent AbstractJavaComponent}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJavaComponent implements LotteryPort {

	/**
	 * Implementation of the WSDL operation: GetNumber	 */
	public abstract OneToNinetyNine getNumber(OneToNinetyNine part1);

}
