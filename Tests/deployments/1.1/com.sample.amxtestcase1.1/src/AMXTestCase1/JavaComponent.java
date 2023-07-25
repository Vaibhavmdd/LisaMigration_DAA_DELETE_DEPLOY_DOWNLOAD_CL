package AMXTestCase1;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.amxTestCase11WSDL.NewOperationResponseDocument;
import org.example.amxTestCase11WSDL.NewOperationDocument;

/**
 * Implementation of JavaComponent component.
 *
 */
public class JavaComponent extends AbstractJavaComponent {

	/**
	 * Initialization of JavaComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		// The Reference cannot be invoked unless "Start Service First" policy has been applied on it.
	}

	/**
	 * Disposal of JavaComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public NewOperationResponseDocument newOperation(
			NewOperationDocument parameters) {
		// Add the business logic here
		
		
		String input=parameters.getNewOperation().getIn();
		
		NewOperationResponseDocument doc=NewOperationResponseDocument.Factory.newInstance();
		
		org.example.amxTestCase11WSDL.NewOperationResponseDocument.NewOperationResponse resp=doc.addNewNewOperationResponse();
		
		resp.setOut(input);
	
		System.out.println("*********** Received ************");
		
		return doc;
	}

}
