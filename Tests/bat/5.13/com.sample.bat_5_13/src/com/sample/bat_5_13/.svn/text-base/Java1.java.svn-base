package com.sample.bat_5_13;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import com.tibco.ns.Hello.HelloPT;
import com.tibco.ns.hello.HelloRequestDocument;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {
	
	final private Logger logger = LoggerFactory.getLogger(Java1.class.getName());
	private static final String UPDATE_STATEMENT_DB1 = "UPDATE table_1 SET gdp=? WHERE country=?";
	private static final String UPDATE_STATEMENT_DB2 = "UPDATE table_3 SET capital=? WHERE country=?";
	
	private static int redeliverycount = 1;
	/**
	 * Initialization of Java1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java1 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: sayHello	 */
	public void sayHello(HelloRequestDocument firstName) {
		logger.debug("**************************** Inside Java 1************************" + "--->" + firstName.getHelloRequest());

		
		//throw new com.tibco.amf.platform.runtime.extension.exception.RedeliverMessageException
		//throw new com.tibco.amf.platform.runtime.extension.exception.StopRedeliverMessageException
		
		String input = firstName.getHelloRequest();
		
		if (input.equalsIgnoreCase("success")|| 
				input.equalsIgnoreCase("case7")  || 
				input.equalsIgnoreCase("case8")  ||
				input.equalsIgnoreCase("case9")||
				input.equalsIgnoreCase("case10") ||
				input.equalsIgnoreCase("nodecrash-spring")) 
		{
				redeliverycount = 1;
				updateDb(input);
				updateDb2(input);
				getHelloPT().sayHello(firstName);
			}

		// to test node crash on multiple node...
		if (input.equalsIgnoreCase("nodecrash-java1")) {
			updateDb("nodecrash-java1");
			getHelloPT().sayHello(firstName);
			// during the wait time of 30 sec - kill the db...expect redelivery ...start the db again and see whether commits are done...

			logger.debug("**************************** Sleep Starts - 30 Sec *********************");
			
			try {
				Thread.sleep(30000);
			} catch (Exception e) {
				e.printStackTrace();
			}
			logger.debug("**************************** Sleep Over - returned from the call *********************");
		}

		
		if (input.equalsIgnoreCase("case0")){
			throw new RuntimeException("**********  case 0 ******************");
		}
		
		if (input.equalsIgnoreCase("case1")){
			updateDb("case2");
			throw new RuntimeException("**********  case 1  ******************");
		}

		if (input.equalsIgnoreCase("case2")){
			updateDb("case4");
			updateDb2("case4");
			throw new RuntimeException("**********  case 2  ******************");
		}
		
		if (input.equalsIgnoreCase("case3")){
			updateDb("case3");
			updateDb2("case3");
			getHelloPT().sayHello(firstName);
		}
		
		if (input.equalsIgnoreCase("case4")){
			updateDb("case4");
			updateDb2("case4");
			getHelloPT().sayHello(firstName);
			throw new RuntimeException("**********  case 4  ******************");
		}
		
		if (input.equalsIgnoreCase("case5")){
			redeliverycount++;
			updateDb("case5");
			updateDb2("case5");
			getHelloPT().sayHello(firstName);
			
			if (redeliverycount > 5){
				logger.debug("**********  Stop Redelivery in Java 1******************");
				throw new com.tibco.amf.platform.runtime.extension.exception.StopRedeliverMessageException("Stop Delivery from Java1");
			}	
			else	
				throw new RuntimeException("**********  case 5 ******************");		
		}
		
		if (input.equalsIgnoreCase("case6")){
			updateDb("case6");
			getHelloPT().sayHello(firstName);
			throw new com.tibco.amf.platform.runtime.extension.exception.RedeliverMessageException("Redeleliver now");
		}
	
		if (input.equalsIgnoreCase("stop")){
			redeliverycount++;
			updateDb("stop");
			getHelloPT().sayHello(firstName);
			if (this.redeliverycount > 3)
				throw new NullPointerException("**********  stop redelivery on ******************");
			else 
				throw new RuntimeException("**********  Stop ******************");
		}
		return ; 
	}
	
	
	public Connection getConnection_jdbc1() {
		try {
			Connection conn = this.getBAT_5_13_jdbc_1().getConnection();
			conn.setAutoCommit(false);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void updateDb(String newVal) {
		Connection conn = this.getConnection_jdbc1();
			try {
				
				PreparedStatement ps = conn.prepareStatement(UPDATE_STATEMENT_DB1);
				ps.setString(1, newVal);
				ps.setString(2, "India");
				int result = ps.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
				logger.debug("**************************** Error while creation of prepared statement for 1st db****************************");
			}	finally {
				try{
					closeConnection(conn);
				} catch (Exception e) {
					e.printStackTrace();
					logger.debug("**************************** Error while 1st db closeConnection****************************");
					throw new RuntimeException(e);
			}
		}
	}
	
	public void closeConnection(Connection conn) throws SQLException {
		try {
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public Connection getConnection_jdbc3() {
		try {
			Connection conn = this.getBAT_5_13_jdbc_3().getConnection();
			conn.setAutoCommit(false);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void updateDb2(String newVal) {

		Connection conn = getConnection_jdbc3();
			try {
				
				PreparedStatement ps = conn.prepareStatement(UPDATE_STATEMENT_DB2);
				ps.setString(1, newVal);
				ps.setString(2, "India");
				int result = ps.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("**************************** Error while creation of prepared statement for 3rd db****************************");
			}	finally {
				try{
					closeConnection(conn);
				} catch (Exception e) {
					System.out.println("**************************** Error while 3rd db closeConnection****************************");
					throw new RuntimeException(e);
			}
		}
	}
	
	public void closeConnection2(Connection conn) throws SQLException {
		try {
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}


}
