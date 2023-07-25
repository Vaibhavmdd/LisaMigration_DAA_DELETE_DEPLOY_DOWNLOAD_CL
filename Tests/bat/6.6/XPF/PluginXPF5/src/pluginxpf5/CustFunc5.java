package pluginxpf5;

import com.tibco.xml.cxf.common.annotations.XPathFunction;
import com.tibco.xml.cxf.common.annotations.XPathFunctionGroup;
import com.tibco.xml.cxf.common.annotations.XPathFunctionParameter;

@XPathFunctionGroup(category = "Custom Functions", prefix = "CXFP5", namespace = "CXFNS5", helpText = "Custom defined function 5")
public class CustFunc5 {

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "StringOV") })
	public String func5Str(String param) {
		System.out.println("**func5Str: " + param);
		return param.toUpperCase();
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "10") })
	public int func5Int(int param) {
		return param + 1;
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "20") })
	public long func5Long(long param) {
		return param + 2;
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "5") })
	public short func5Short(short param) {
		return (short) (param + 3);
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "8.8") })
	public float func5Float(float param) {
		return (float) (param + 4.5);
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "30") })
	public double func5Double(double param) {
		return param + 5;
	}

	@XPathFunction(helpText = "Description", parameters = { @XPathFunctionParameter(name = "param", optional = false, optionalValue = "0") })
	public boolean func5Boolean(boolean param) {
		return param;
	}

    @XPathFunction(helpText = "Description", parameters = {
            @XPathFunctionParameter(name = "ReqString1", optional = false, optionalValue = "func5AllReqV"),
            @XPathFunctionParameter(name = "Reqint2", optional = false, optionalValue = "5"),
            @XPathFunctionParameter(name = "Reqlong3", optional = false, optionalValue = "15"),
            @XPathFunctionParameter(name = "Reqshort4", optional = false, optionalValue = "25"),
            @XPathFunctionParameter(name = "Reqfloat5", optional = false, optionalValue = "35.5"),
            @XPathFunctionParameter(name = "Reqdouble6", optional = false, optionalValue = "45"),
            @XPathFunctionParameter(name = "Reqboolean7", optional = false, optionalValue = "0") })
    public String func5AllRequiredParam(String ReqString1, int Reqint2, long Reqlong3,
            short Reqshort4, float Reqfloat5 , double Reqdouble6, boolean Reqboolean7) {
        double Reqsum = Reqint2 + Reqlong3 + Reqshort4 + Reqfloat5 + Reqdouble6;
        String returnStr = ReqString1 + Reqsum;
		System.out.println("*****CXF func5AllRequiredParam: Got Parameters***** "
				+ " ReqString1: " + ReqString1 
				+ " Reqint2: " + Reqint2
				+ " Reqlong3: " + Reqlong3
				+ " Reqshort4: " + Reqshort4
				+ " Reqfloat5: " + Reqfloat5
				+ " Reqdouble6: " + Reqdouble6
				+ " Reqboolean7: " + Reqboolean7
				+ " Reqsum: " + Reqsum
				);
        return returnStr;
    }

    @XPathFunction(helpText = "Description", parameters = {
            @XPathFunctionParameter(name = "OptString1", optional = true, optionalValue = "func5AllOptV"),
            @XPathFunctionParameter(name = "Optint2", optional = true, optionalValue = "7"),
            @XPathFunctionParameter(name = "Optlong3", optional = true, optionalValue = "17"),
            @XPathFunctionParameter(name = "Optshort4", optional = true, optionalValue = "27"),
            @XPathFunctionParameter(name = "Optfloat5", optional = true, optionalValue = "37.7"),
            @XPathFunctionParameter(name = "Optdouble6", optional = true, optionalValue = "47"),
            @XPathFunctionParameter(name = "Optboolean7", optional = true, optionalValue = "1") })
    public String func5AllOptionalParam(String OptString1, int Optint2, long Optlong3,
            short Optshort4, float Optfloat5 , double Optdouble6, boolean Optboolean7) {
        double Optsum = Optint2 + Optlong3 + Optshort4 + Optfloat5 + Optdouble6;
		System.out.println("*****CXF func5AllOptionalParam: Got Parameters***** "
				+ " OptString1: " + OptString1 
				+ " Optint2: " + Optint2
				+ " Optlong3: " + Optlong3
				+ " Optshort4: " + Optshort4
				+ " Optfloat5: " + Optfloat5
				+ " Optdouble6: " + Optdouble6
				+ " Optboolean7: " + Optboolean7
				+ " Optsum: " + Optsum
				);
        String returnStr = OptString1 + Optsum;
        return returnStr;
    }
    	
	@XPathFunction(helpText = "Function returning the same string passed in", parameters = {
			@XPathFunctionParameter(name = "String1", optional = false, optionalValue = "funcRetSameStr"),
			@XPathFunctionParameter(name = "int2", optional = true, optionalValue = "2"),
			@XPathFunctionParameter(name = "long3", optional = true, optionalValue = "3"),
			@XPathFunctionParameter(name = "short4", optional = true, optionalValue = "4"),
			@XPathFunctionParameter(name = "float5", optional = true, optionalValue = "5"),
			@XPathFunctionParameter(name = "double6", optional = true, optionalValue = "6"),
			@XPathFunctionParameter(name = "boolean7", optional = true, optionalValue = "1") })
	public String funcReturnSameStr(String String1, int int2, long long3, short short4,
			float float5, double double6, boolean boolean7
			) {
		double sum = int2 + long3 + short4 + float5 + double6 ;
		System.out.println("*****CXF funcReturnSameStr: Got Parameters***** "
				+ " String1: " + String1 
				+ " int2: " + int2
				+ " long3: " + long3
				+ " short4: " + short4
				+ " float5: " + float5
				+ " double6: " + double6
				+ " boolean7: " + boolean7
				+ " sum: " + sum
				);
		String returnStr = String1;
		return returnStr;
	}
}
