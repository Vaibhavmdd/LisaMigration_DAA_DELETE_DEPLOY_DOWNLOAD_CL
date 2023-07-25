package com.sample.com.tibco.adminqa.bat.case59.app2;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.example.batCase59.EchoElements;
import org.example.batCase59.EchoElementsResponseDocument;
import org.example.batCase59.EchoElementsDocument;
import org.example.batCase59.EchoElements.AnElement;
import org.example.www.bat_case5_9.BatCase59;
import org.osoa.sca.annotations.Init;
import org.slf4j.LoggerFactory;

/*
 * Implementation of java1 component.
 * 
 */
public class Java1 extends AbstractJava1 {
	
	private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());

	/*
	 * Initialization of java1 component.
	 * 
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		logger.info("************App2 -> Init for Java1 started :" + sdf.format(Calendar.getInstance().getTime()));
		int t = this.getTime(); 
		logger.info("This is Init for Java2, processing in " + t + " seconds");
		try {
			for(int i = 0; i < t ; i ++){
				Thread.sleep(1000);
				logger.info(".");
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("************App2 -> Init for Java1 ended :" + sdf.format(Calendar.getInstance().getTime()));
	}

	/*
	 * Implementation of the WSDL operation: EchoElements
	 */
	public EchoElementsResponseDocument echoElements(
			EchoElementsDocument parameters) {
		// Add the business logic here
		logger.info("***********************app2 -> Java1 Component Started!");
		String inStr = parameters.getEchoElements().getIn();
		
		//Initial the output document
		EchoElementsResponseDocument resp = EchoElementsResponseDocument.Factory.newInstance();
		EchoElements Eles = resp.addNewEchoElementsResponse();
		AnElement anEle = null;
		
		//Echo the "input"
		logger.info("The inString is: " + inStr);
		anEle = Eles.addNewAnElement();
		anEle.setName("app2 -> EchoInput");
		anEle.setValue("Java1 echo : " + inStr);
		
		//Echo the "NodeName" properties
		anEle = Eles.addNewAnElement();
		anEle.setName("app2 -> Java1NodeName");
		anEle.setValue(this.getNodeName());
		
		logger.info("***********************app2 -> Java1 Component Ended!");
		return resp;
	}

}
