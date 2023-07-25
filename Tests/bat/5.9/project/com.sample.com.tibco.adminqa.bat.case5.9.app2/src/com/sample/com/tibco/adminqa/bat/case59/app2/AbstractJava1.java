package com.sample.com.tibco.adminqa.bat.case59.app2;

import org.example.batCase59.EchoElementsResponseDocument;
import org.example.batCase59.EchoElementsDocument;
import org.example.www.bat_case5_9.BatCase59;
import org.osoa.sca.annotations.Property;

/**
 * Abstract interface generated for component java1
 * 
 * {@link com.sample.com.tibco.adminqa.bat.case59.app2.AbstractJava1 com.sample.com.tibco.adminqa.bat.case59.app2.AbstractJava1}
 * @Generated TEMPL003
 */
public abstract class AbstractJava1 implements BatCase59 {

	public abstract EchoElementsResponseDocument echoElements(
			EchoElementsDocument parameters);

	private String NodeName;

	@Property(name = "NodeName")
	public void setNodeName(String NodeName) {
		this.NodeName = NodeName;
	}

	public String getNodeName() {
		return NodeName;
	}

	private int time;

	@Property(name = "time")
	public void setTime(int time) {
		this.time = time;
	}

	public int getTime() {
		return time;
	}

}
