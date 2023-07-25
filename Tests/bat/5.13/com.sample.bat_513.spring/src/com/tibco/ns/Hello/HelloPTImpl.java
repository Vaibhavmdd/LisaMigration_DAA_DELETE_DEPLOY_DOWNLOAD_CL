package com.tibco.ns.Hello;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloRequestDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * Implementation of Spring1 component.
 *
 */
public class HelloPTImpl extends AbstractHelloPTImpl {

	final private Logger logger = LoggerFactory.getLogger(HelloPTImpl.class.getName());
	private static final String UPDATE_STATEMENT_DB2 = "UPDATE table_2 SET currency=? WHERE country=?";
	private static int redeliverycount = 1;
	
	/**
	 * Initialization of Spring1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Spring1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public void sayHello(HelloRequestDocument firstName) {
		// Add the business logic here
		System.out.println("**************************** Inside SPRING ************************" + "--->" + firstName.getHelloRequest());

		String input = firstName.getHelloRequest();
		
		if (input.equalsIgnoreCase("success")) 
		{
			redeliverycount = 1;
			updateDb(input);
			this.getHelloPT2().sayHello(firstName);
		}
		
		// to test node crash on single node...
		if (input.equalsIgnoreCase("nodecrash-spring")) {
			updateDb("nodecrash-java2");
			// during the wait time of 30 sec - kill the db...expect redelivery ...start the db again and see whether commits are done...

			logger.debug("**************************** Sleep Starts - 30 Sec *********************");
			
			try {
				Thread.sleep(30000);
			} catch (Exception e) {
				
			}
			logger.debug("**************************** Sleep Over - returned from the call *********************");
		}

		if (input.equalsIgnoreCase("case3")){
			updateDb("case3");
			this.getHelloPT2().sayHello(firstName);
			logger.debug("**********  Case 3 : undeclared fault from SPRING after : " + input + "done in Java2 ******************");
			throw new RuntimeException("**********  case 3  ******************");
		}
		
		if (input.equalsIgnoreCase("case7")){
			redeliverycount++;
			updateDb("case7");
			this.getHelloPT2().sayHello(firstName);			
			if (redeliverycount > 4){
				logger.debug("**********  Case 7 : Stop Redelivery in Java 2******************");
				throw new com.tibco.amf.platform.runtime.extension.exception.StopRedeliverMessageException("Stop Delivery from Java1");
			}	
			else	
				throw new RuntimeException("**********  Case 7 : undeclared fault from SPRING after ********************");		
		}
		
		if (input.equalsIgnoreCase("case8")){
			updateDb("case8");
			this.getHelloPT2().sayHello(firstName);
			throw new com.tibco.amf.platform.runtime.extension.exception.RedeliverMessageException("case8 Redeleliver now");
		}
		return ; 
	}
	
	
	public Connection getConnection_jdbc2() {
		try {
			Connection conn = this.getBAT_5_13_jbdc_2().getConnection();
			conn.setAutoCommit(false);
			return conn;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public void updateDb(String newVal) {

		Connection conn = getConnection_jdbc2();
			try {
				
				PreparedStatement ps = conn.prepareStatement(UPDATE_STATEMENT_DB2);
				ps.setString(1, newVal);
				ps.setString(2, "India");
				int result = ps.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
				logger.debug("**************************** Error while creation of prepared statement for 2nd db****************************");
			}	finally {
				try{
					closeConnection(conn);
				} catch (Exception e) {
					logger.debug("**************************** Error while 2nd db closeConnection****************************");
					throw new RuntimeException(e);
			}
		}
	}
	
	public void closeConnection(Connection conn) throws SQLException {
		try {
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
