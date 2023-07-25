package com.tibco.qa.m6.globaltxn.testcase2.component1.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import org.example.www.echoStringDF.EchoStringDF;
import org.example.www.echoStringDF.Echo_faultMsgException;
import org.example.echoStringDF.EchoDocument;
import org.example.echoStringDF.EchoFaultDocument;
import org.example.echoStringDF.EchoResponseDocument;
import org.example.echoStringDF.EchoFaultDocument.EchoFault;
import org.example.echoStringDF.EchoResponseDocument.EchoResponse;

import com.tibco.qa.m6.globaltxn.util.*;
/**
 * Implementation of Component1 component.
 *
 */
public class Component1 extends AbstractComponent1 {
	private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
	String dbType;
	/**
	 * Initialization of Component1 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		logger.info("**Comp1 Deleting all the rowns in the Employee1 table **");
		Connection conn = null;
		try {
		    conn = this.getJdbcsr1().getConnection();
		    
		    if(conn==null)
		    	logger.info("Component1 can not get a JDBC conenction");
		    if(conn!=null){
		      String dbName = conn.getMetaData().getDatabaseProductName();
		      
		      if(dbName.contains("Ora"))
		    	  dbType="Oracle";
		      else
		    	  dbType="Postgres";
		    }
			Statement stmnt =  conn.createStatement();
			
			logger.info("DB Type :" + dbType + "Query :"+ DBUtils.getDeleteQuery(dbType, "Employee1"));
			stmnt.execute(DBUtils.getDeleteQuery(dbType, "Employee1"));
			
			if(conn!=null)
				 conn.commit();
			
			logger.info("** Comp1 Successfully Deleted all the rowns in the Employee1 table **");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.info("Comp1 Exception while deleting the rows" + e.getMessage());
			e.printStackTrace();
		}
		finally
		{
			try {
				if(conn!=null)
				    conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		logger.info("** Comp1 Deleting all the rowns in the Employee2 table **");
	
		try {
		    conn = this.getJdbcsr2().getConnection();
		    
		    if(conn==null)
		    	logger.info("Component1 can not get a  conenction from jdbcsr2");
			Statement stmnt =  conn.createStatement();
			logger.info("DB Type :" + dbType + "Query :"+ DBUtils.getDeleteQuery(dbType, "Employee2"));
			stmnt.execute(DBUtils.getDeleteQuery(dbType,"Employee2"));
			
			if(conn!=null)
				 conn.commit();
			
			
			logger.info("** Comp1 Successfully Deleted all the rowns in the Employee2 table **");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.info("Comp1 Exception while deleting the rows" + e.getMessage());
			e.printStackTrace();
		}
		finally
		{
			try {
				if(conn!=null)
				   conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	/**
	 * Implementation of the WSDL operation: echo	 */
	public EchoResponseDocument echo(EchoDocument parameters)
			throws Echo_faultMsgException {
		// Add the business logic here
		String input = parameters.getEcho().getIn();
		
		EchoResponseDocument respDoc = EchoResponseDocument.Factory.newInstance();
		
		EchoResponse resp = respDoc.addNewEchoResponse();
		logger.info("** Comp1 inside the echo() before executing the query ***");
		Connection conn = null;
		try {
			conn = this.getJdbcsr1().getConnection();
			if(conn==null)
				throw new RuntimeException("Component1 can not get a connection from jdbcsr1");
			conn.setAutoCommit(false);
			logger.info("Insert Query :" + DBUtils.getInsertQuery(dbType, "Employee1"));
			PreparedStatement stmnt =  conn.prepareStatement(DBUtils.getInsertQuery(dbType, "Employee1"));
			
			stmnt.setString(1, "1234");
			stmnt.setString(2,"raju");
			stmnt.setString(3, "dantuluri");
			stmnt.setString(4,"1234 Homestead Road cupertio ca");
			logger.info("Comp1 About to execute the query..");
			stmnt.executeUpdate();									
			logger.info("** Comp1 Successfully executed the sql query **");
		}
		catch(Exception ex)
		{
			throw new RuntimeException("runtime exception while executing the sql query..."+ex.getMessage());
		}
		finally
		{
			try {
				if(conn!=null)
				 conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new RuntimeException("runtime exception while closing  the connection..."+e.getMessage());
			}
		}
		
		
		// invoke the reference, the referenced component (Component2) may throw an undeclared fault
		logger.info("** Comp1 Invoke the reference **");
		this.getEchoStringDF().echo(parameters);
		logger.info("**Comp1Reference returned successfully **");
		if("Component1.declaredfault".equals(input))
		{
			EchoFaultDocument efd = EchoFaultDocument.Factory.newInstance();
			EchoFault ef = efd.addNewEchoFault();
			ef.setEchoFault("Fault Message set in the FaultDoc Element in Component1");
			throw new Echo_faultMsgException("Fault Message set in the INPUT in Component1", efd);
		}
		else if("Component1.undeclaredfault".equals(input))
		{
			
			throw new RuntimeException("runtime exception while executing the sql query...");
		}
		resp.setOut("Success");
			
		return respDoc;
		
	}
	
}

