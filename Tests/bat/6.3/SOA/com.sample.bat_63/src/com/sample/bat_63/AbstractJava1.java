package com.sample.bat_63;

import org.osoa.sca.annotations.Reference;
import com.example.xmlns._1201081326343.raisesImpl.Raiseamerica;
import org.example.raiseamerica.RaisesDocument;
import org.example.raiseamerica.RaisesResponseDocument;
import com.tibco.amf.platform.runtime.extension.context.ComponentContext;
import org.osoa.sca.annotations.Context;

/**
 * Abstract interface generated for component "Java1".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_63.AbstractJava1 AbstractJava1}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements Raiseamerica {

	/**
	 *	Use this property to access the context parameters.
	 *	Context parameters for this component are:
	 *    contextParameter1  :  INPUT
	 *    contextParameter1  :  INPUT
	 */
	@Context
	public ComponentContext componentContext;

	/**
	 * Implementation of the WSDL operation: raises	 */
	public abstract RaisesResponseDocument raises(RaisesDocument parameters);

	private Raiseamerica Reference1;

	@Reference(name = "Reference1")
	public void setReference1(Raiseamerica Reference1) {
		this.Reference1 = Reference1;
	}

	public Raiseamerica getReference1() {
		return this.Reference1;
	}

}
