package com.sample.bat520;

import org.osoa.sca.annotations.Property;
import org.osoa.sca.annotations.Reference;
import javax.jms.Destination;
import javax.jms.ConnectionFactory;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;
import org.example.newWSDLFile.NewOperationInDocument;

/**
 * Abstract interface generated for component "Java2".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.bat520.AbstractJava2 AbstractJava2}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJava2 implements NewWSDLFile {

	private Destination bat520_out_jd;

	@Property(name = "bat520_out_jd")
	public void setBat520_out_jd(Destination bat520_out_jd) {
		this.bat520_out_jd = bat520_out_jd;
	}

	public Destination getBat520_out_jd() {
		return bat520_out_jd;
	}
	private ConnectionFactory bat520_out_jcf;

	@Property(name = "bat520_out_jcf")
	public void setBat520_out_jcf(ConnectionFactory bat520_out_jcf) {
		this.bat520_out_jcf = bat520_out_jcf;
	}

	public ConnectionFactory getBat520_out_jcf() {
		return bat520_out_jcf;
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public abstract NewOperationResponseDocument newOperation(
			NewOperationDocument parameters)
			throws org.example.newwsdlfile.NewOperation_faultMsgException;
	/**
	 * Implementation of the WSDL operation: NewOperationIn	 */
	public abstract void newOperationIn(NewOperationInDocument parameters);

	private NewWSDLFile NewWSDLFile;

	@Reference(name = "NewWSDLFile")
	public void setNewWSDLFile(NewWSDLFile NewWSDLFile) {
		this.NewWSDLFile = NewWSDLFile;
	}

	public NewWSDLFile getNewWSDLFile() {
		return this.NewWSDLFile;
	}

}
