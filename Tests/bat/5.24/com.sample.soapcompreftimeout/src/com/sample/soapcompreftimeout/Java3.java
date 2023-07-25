package com.sample.soapcompreftimeout;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.example.newwsdlfile.NewWSDLFile;
import org.example.newWSDLFile.NewOperationDocument;
import org.example.newWSDLFile.NewOperationResponseDocument;

/**
 * Implementation of Java3 component.
 *
 */
public class Java3 extends AbstractJava3 {

	/**
	 * Initialization of Java3 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java3 component.
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
		String in = parameters.getNewOperation().getIn();
        String currentThread = Thread.currentThread().getName();
        System.out.println((new StringBuilder("Java3 : ThreadName is ")).append(currentThread).toString());
        if(in.contains("success") || in.contains("timeout"))
        {
            in.replaceFirst("success", "");
            in.replaceFirst("timeout", "");
            if(currentThread.equalsIgnoreCase(in))
            {
                System.out.println("*******************************************");
                System.out.println("******** case failed since thread switch did not happen *********");
                System.out.println("*******************************************");
                throw new RuntimeException("Thread switching failed");
            }
            
            if(!currentThread.contains("BAT-ThreadPool"))
            {
                System.out.println("*******************************************");
                System.out.println("******** Incorrect Thread pool prefix *********");
                System.out.println("*******************************************");
                throw new RuntimeException("Incorrect Thread pool prefix");
            }
            
            if(in.contains("timeout"))
            {
                System.out.println((new StringBuilder("T2=")).append(getT2()).toString());
                try
                {
                    int timeout = getT2() + 20;
                    Thread.sleep(timeout * 1000);
                }
                catch(InterruptedException e)
                {
                    System.out.println("in catch block");
                    e.printStackTrace();
                }
            }
        }
        parameters.getNewOperation().setIn("success");
        NewOperationResponseDocument doc = org.example.newWSDLFile.NewOperationResponseDocument.Factory.newInstance();
        org.example.newWSDLFile.NewOperationResponseDocument.NewOperationResponse rsp = doc.addNewNewOperationResponse();
        rsp.setOut(parameters.getNewOperation().getIn());
        return doc;

	}

}
