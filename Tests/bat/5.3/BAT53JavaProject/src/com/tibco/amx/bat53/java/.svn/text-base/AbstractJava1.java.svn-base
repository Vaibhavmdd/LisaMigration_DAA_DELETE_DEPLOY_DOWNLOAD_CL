package com.tibco.amx.bat53.java;

import org.osoa.sca.annotations.Reference;
import org.example.www.helloworld.Helloworld;
import org.example.helloworld.SayHelloDocument;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.tibco.amx.bat53.java.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements Helloworld {

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public abstract void sayHello(SayHelloDocument parameters);

	private Helloworld helloworld;

	@Reference(name = "helloworld")
	public void setHelloworld(Helloworld helloworld) {
		this.helloworld = helloworld;
	}

	public Helloworld getHelloworld() {
		return this.helloworld;
	}

}
