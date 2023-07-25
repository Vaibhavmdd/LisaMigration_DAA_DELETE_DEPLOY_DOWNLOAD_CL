package com.tibco.qa.m6.globaltxn.testcase2.component2.java;

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

import com.tibco.qa.m6.globaltxn.util.DBUtils;

/**
 * Implementation of Component2 component.
 *
 */
public class Component2 extends AbstractComponent2 {
	private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
	String dbType;
	/**
	 * Initialization of Component2 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
		logger.info("**Comp2 Deleting all the rowns in the Employee3 table **");
		Connection conn = null;
		try {
		    conn = this.getJdbcsr3().getConnection();
		    
		    if(conn==null)
		    	logger.info("Component2 can not get a connection from jdbcsr3");
		    if(conn!=null){
			      String dbName = conn.getMetaData().getDatabaseProductName();
			      
			      if(dbName.contains("Ora"))
			    	  dbType="Oracle";
			      else
			    	  dbType="Postgres";
		    }

		    Statement stmnt =  conn.createStatement();
			
			stmnt.execute(DBUtils.getDeleteQuery(dbType, "Employee3") );
			
			if(conn!=null)
				 conn.commit();			
			
			logger.info("** Comp2 Successfully Deleted all the rowns in the Employee3 table **");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.info("Comp2 Exception while deleting the rows" + e.getMessage());
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
		logger.info("** Component2.inside the echo() before executing the query ***");
		Connection conn = null;
		try {
			conn = this.getJdbcsr3().getConnection();
			if(conn==null)
				throw new RuntimeException("Component2 can not get a connection from jdbcsr3");
			conn.setAutoCommit(false);
			PreparedStatement stmnt =  conn.prepareStatement(DBUtils.getInsertQuery(dbType, "Employee3"));
			
			stmnt.setString(1, "1235");
			stmnt.setString(2,"raju");
			stmnt.setString(3, "dantuluri");
			stmnt.setString(4,"1235 Homestead Road cupertio ca");
			logger.info("Component2 About to execute the query..");
			stmnt.executeUpdate();									
			logger.info("** Component2 Successfully executed the sql query **");
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
						
		if("Component2.declaredfault".equals(input))
		{
			EchoFaultDocument efd = EchoFaultDocument.Factory.newInstance();
			EchoFault ef = efd.addNewEchoFault();
			ef.setEchoFault("Fault Message set in the FaultDoc Element in Component2");
			throw new Echo_faultMsgException("Fault Message set in the INPUT in Component2", efd);
		}
		else if("Component2.undeclaredfault".equals(input))
		{
			
			throw new RuntimeException("runtime exception while executing the sql query...");
		
		}
		
		resp.setOut("Success");
			
		return respDoc;
	}
}
