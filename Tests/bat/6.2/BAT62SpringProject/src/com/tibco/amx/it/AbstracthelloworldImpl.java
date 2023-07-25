package com.tibco.amx.it;

import org.example.www.helloworld.Helloworld;
import org.example.helloworld.SayHelloDocument;
import org.example.helloworld.SayHelloResponseDocument;

/**
 * Abstract interface generated for component "SpringComp".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.it.AbstracthelloworldImpl AbstracthelloworldImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstracthelloworldImpl implements Helloworld {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract SayHelloResponseDocument sayHello(
			SayHelloDocument parameters)
			throws org.example.www.helloworld.SayHello_faultMsgException;

}
