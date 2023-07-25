/**
 *
 */
package com.tibco.sample.helloworld;

import org.osoa.sca.annotations.Reference;

import org.example.www.helloworld.Helloworld;

import org.example.helloworld.SayHelloDocument;
import org.example.helloworld.SayHelloResponseDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.sample.helloworld.Java2 com.tibco.sample.helloworld.Java2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements Helloworld {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract SayHelloResponseDocument sayHello(
			SayHelloDocument parameters);

	private Helloworld helloworld;

	@Reference(name = "helloworld")
	public void setHelloworld(Helloworld helloworld) {
		this.helloworld = helloworld;
	}

	public Helloworld getHelloworld() {
		return this.helloworld;
	}

}
