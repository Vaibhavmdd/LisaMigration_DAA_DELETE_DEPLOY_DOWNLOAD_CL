package pluginxpf3;

import com.tibco.xml.cxf.common.annotations.XPathFunction;
import com.tibco.xml.cxf.common.annotations.XPathFunctionGroup;
import com.tibco.xml.cxf.common.annotations.XPathFunctionParameter;

@XPathFunctionGroup(category = "Custom Functions", prefix = "p3", namespace = "ns3", helpText = "Custom defined function")
public class CustomFunctions {

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "StringOV") })
	public String func3Str(String param) {
		return param.toUpperCase();
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "10") })
	public int func3Int(int param) {
		return param + 1;
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "20") })
	public long func3Long(long param) {
		return param + 2;
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "5") })
	public short func3Short(short param) {
		return (short) (param + 3);
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "8.8") })
	public float func3Float(float param) {
		return (float) (param + 4.5);
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "30") })
	public double func3Double(double param) {
		return param + 5;
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "0") })
	public boolean func3Boolean(boolean param) {
		return param;
	}

	@XPathFunction(helpText = "Description", parameters = {
			@XPathFunctionParameter(name = "String1", optional = true, optionalValue = "func3AllOV"),
			@XPathFunctionParameter(name = "int2", optional = true, optionalValue = "7"),
			@XPathFunctionParameter(name = "long3", optional = true, optionalValue = "17"),
			@XPathFunctionParameter(name = "short4", optional = true, optionalValue = "27"),
			@XPathFunctionParameter(name = "float5", optional = true, optionalValue = "37.7"),
			@XPathFunctionParameter(name = "double6", optional = true, optionalValue = "47"),
			@XPathFunctionParameter(name = "boolean7", optional = true, optionalValue = "0") })
	public String func3AllOptionalParam(String String1, int int2, long long3,
			short short4, float float5 , double double6, boolean boolean7) {
		double sum = int2 + long3 + short4 + float5 + double6;
		String returnStr = "Stirng1: " + String1 + " sum: " + sum + " boolean7: " + boolean7;
		return returnStr;
	}
}
