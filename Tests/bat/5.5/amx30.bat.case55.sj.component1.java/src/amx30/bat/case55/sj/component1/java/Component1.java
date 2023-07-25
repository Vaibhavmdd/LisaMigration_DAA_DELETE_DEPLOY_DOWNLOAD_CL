package amx30.bat.case55.sj.component1.java;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
//import org.example.www.echoStringRLE.EchoStringRLE;
import org.example.echoStringRLE.DataDocument;

/**
 * Implementation of Component1 component.
 *
 */
public class Component1 extends AbstractComponent1 {

	/**
	 * Initialization of Component1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Component1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: echo	 */
	public DataDocument echo(DataDocument echoRequest) {
		// Add the business logic here
		DataDocument respDoc = DataDocument.Factory.newInstance();
		
		respDoc.setData(echoRequest.getData());
		
		return respDoc;
	}

}
