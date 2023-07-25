package com.sample.bat_5_10;

import org.osoa.sca.annotations.Property;
import org.osoa.sca.annotations.Reference;
import javax.mail.Session;
import com.tibco.www.SRTest.SRTest;
import com.tibco.srTest.SRTestRequestDocument;
import com.tibco.srTest.SRTestResponseDocument;

/**
 * Abstract interface generated for component "Java3".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat_5_10.AbstractJava3 AbstractJava3}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava3 implements SRTest {

	private Session smtp;

	@Property(name = "smtp")
	public void setSmtp(Session smtp) {
		this.smtp = smtp;
	}

	public Session getSmtp() {
		return smtp;
	}

	/**
	 * Implementation of the WSDL operation: SRTestOperation	 */
	public abstract SRTestResponseDocument sRTestOperation(
			SRTestRequestDocument inParam);

	private SRTest SRTest;

	@Reference(name = "SRTest")
	public void setSRTest(SRTest SRTest) {
		this.SRTest = SRTest;
	}

	public SRTest getSRTest() {
		return this.SRTest;
	}

}
