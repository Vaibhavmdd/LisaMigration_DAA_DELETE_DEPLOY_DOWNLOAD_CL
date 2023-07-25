/**
 *
 */
package com.tibco.sample.helloworld;

import org.example.www.helloworld.Helloworld;

import org.example.helloworld.SayHelloDocument;
import org.example.helloworld.SayHelloResponseDocument;

/**
 * Abstract interface generated for component "Java3".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.sample.helloworld.Java3 com.tibco.sample.helloworld.Java3}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava3 implements Helloworld {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract SayHelloResponseDocument sayHello(
			SayHelloDocument parameters);

}
