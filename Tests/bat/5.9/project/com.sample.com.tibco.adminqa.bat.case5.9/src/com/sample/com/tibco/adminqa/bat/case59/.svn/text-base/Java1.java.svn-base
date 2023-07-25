package com.sample.com.tibco.adminqa.bat.case59;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.example.batCase59.EchoElements;
import org.example.batCase59.EchoElementsDocument;
import org.example.batCase59.EchoElementsResponseDocument;
import org.example.batCase59.EchoElements.AnElement;
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
		logger.info("************App1 -> Init for Java1 started :" + sdf.format(Calendar.getInstance().getTime()));

		logger.info("************App1 -> Init for Java1 ended :" + sdf.format(Calendar.getInstance().getTime()));
	}

	/*
	 * Implementation of the WSDL operation: EchoElements
	 */
	public EchoElementsResponseDocument echoElements(
			EchoElementsDocument parameters) {
		// Add the business logic here
		logger.info("***********************app1 -> Java1 Component Started!");
		String inStr = parameters.getEchoElements().getIn();
		
		//Initial the output document
		EchoElementsResponseDocument resp = EchoElementsResponseDocument.Factory.newInstance();
		EchoElements Eles = resp.addNewEchoElementsResponse();
		AnElement anEle = null;
		
		//Echo the "input"
		logger.info("The inString is: " + inStr);
		anEle = Eles.addNewAnElement();
		anEle.setName("app1 -> EchoInput");
		anEle.setValue("Java1 echo : " + inStr);
		
		//Echo the "NodeName" properties
		anEle = Eles.addNewAnElement();
		anEle.setName("app1 -> Java1NodeName");
		anEle.setValue(this.getNodeName());
		
		try{
			parameters.getEchoElements().setIn("java1 -> Call Reference1");
			EchoElementsResponseDocument refRet = this.getReference1().echoElements(parameters);
			copyElements(refRet, resp);
				
			logger.info("The reference returned");

		}catch(Exception e){
			anEle = Eles.addNewAnElement();
			anEle.setName("java1 -> RefErrored");
			anEle.setValue(e.getMessage());
			
			logger.info("The reference errored");
			logger.info(e.getMessage());
			e.printStackTrace(System.out);
		}
		
		logger.info("***********************app1 -> Java1 Component Ended!");
		return resp;
	}
	
	//Copy the elements in EchoElementsResponseDocument
	private void copyElements(EchoElementsResponseDocument source, EchoElementsResponseDocument dest){
		AnElement[] Eles = source.getEchoElementsResponse().getAnElementArray();	//source elements array
		EchoElements destEleDoc = dest.getEchoElementsResponse();					//dest ElementsResponse
		
		for(int i = 0; i < Eles.length; i ++){
			AnElement ele = destEleDoc.addNewAnElement();
			ele.setName(Eles[i].getName());
			ele.setValue(Eles[i].getValue());
		}	
	}

}
