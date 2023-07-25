package AMXTestCase1;

import org.example.amxtestcase1_1wsdl.AMXTestCase11WSDL;
import org.example.amxTestCase11WSDL.NewOperationResponseDocument;
import org.example.amxTestCase11WSDL.NewOperationDocument;

/**
 * Abstract interface generated for component "JavaComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link AMXTestCase1.AbstractJavaComponent AbstractJavaComponent}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractJavaComponent implements AMXTestCase11WSDL {

	/**
	 * Implementation of the WSDL operation: NewOperation	 */
	public abstract NewOperationResponseDocument newOperation(
			NewOperationDocument parameters);

}
