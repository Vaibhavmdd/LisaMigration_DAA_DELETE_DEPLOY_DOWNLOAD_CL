package com.tibco.qa.m6.globaltxn.testcase2.validator.java;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import org.example.www.echoString.EchoString;
import org.example.echoString.EchoResponseDocument;
import org.example.echoString.EchoRequestDocument;
import org.example.echoString.EchoResponseDocument.EchoResponse;

import com.tibco.qa.m6.globaltxn.util.DBUtils;

/**
 * Implementation of Validator component.
 *
 */
public class Validator extends AbstractValidator {
	private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
    String dbType;
	/**
	 * Initialization of Validator component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Implementation of the WSDL operation: echo	 */
	public EchoResponseDocument echo(EchoRequestDocument inParam) {
		// Add the business logic here
		String input = inParam.getEchoRequest().getIn();
		
		EchoResponseDocument respDoc = EchoResponseDocument.Factory.newInstance();
		
		EchoResponse resp = respDoc.addNewEchoResponse();
		
		// check the rowcount of  Schema1, Schema2, Schema3 and reply.
		
		String response=null;
		
		response = "Employee1:"+this.getRowCountOfATable(this.getJdbcsr1(), "Employee1")+";";
						
		response =response+ "Employee2:"+ this.getRowCountOfATable(this.getJdbcsr2(), "Employee2") +":";
		
		response =response+ "Employee3:"+ this.getRowCountOfATable(this.getJdbcsr3(), "Employee3");
		
		resp.setOut(response);
		
		return respDoc;
	}
	
	private int getRowCountOfATable(DataSource ds, String tableName) throws RuntimeException
	{
		Connection conn = null;
		int rowcount=0;
		try {
			conn = ds.getConnection();
			
		    if(conn!=null){
			      String dbName = conn.getMetaData().getDatabaseProductName();
			      
			      if(dbName.contains("Ora"))
			    	  dbType="Oracle";
			      else
			    	  dbType="Postgres";
			 }
			
			
			Statement stmnt =  conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			
			logger.info("Validator.echo() about to execute the query..");
			
			ResultSet res  = stmnt.executeQuery(DBUtils.getSelectQuery(dbType, tableName) );
		
		
			logger.info("Validator.echo() Successfully executed the sql query **");
			
			res.last();
			
			rowcount = res.getRow();
				
		}
		catch(Exception ex)
		{
			throw new RuntimeException("runtime exception while executing the sql query..."+ex.getMessage());
		}
		finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new RuntimeException("runtime exception while closing  the connection..."+e.getMessage());
			}
		}
		
		return rowcount;
		
	}
}
