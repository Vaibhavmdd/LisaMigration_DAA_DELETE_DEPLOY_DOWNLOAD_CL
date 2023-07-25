package com.sample.bat_5_10;

import org.osoa.sca.annotations.Property;
import javax.naming.ldap.LdapContext;
import com.tibco.www.SRTest.SRTest;
import com.tibco.srTest.SRTestRequestDocument;
import com.tibco.srTest.SRTestResponseDocument;

/**
 * Abstract interface generated for component "Java4".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_10.AbstractJava4 AbstractJava4}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava4 implements SRTest {

	private LdapContext ldap;

	@Property(name = "ldap")
	public void setLdap(LdapContext ldap) {
		this.ldap = ldap;
	}

	public LdapContext getLdap() {
		return ldap;
	}

	/**
	 * Implementation of the WSDL operation: SRTestOperation	 */
	public abstract SRTestResponseDocument sRTestOperation(
			SRTestRequestDocument inParam);

}
