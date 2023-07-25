package com.sample.bat_5_13.dbreader;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import javax.sql.DataSource;
import org.example.echostring.EchoString;
import org.example.echoString.EchoResponseDocument;
import org.example.echoString.EchoRequestDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Implementation of Java1 component.
 *
 */
public class Java1 extends AbstractJava1 {

	final private Logger logger = LoggerFactory.getLogger(Java1.class.getName());
	private static final String SELECT_STATEMENT_DB1 = "SELECT gdp from table_1";
	private static final String SELECT_STATEMENT_DB2 = "SELECT currency from table_2";
	private static final String SELECT_STATEMENT_DB3 = "SELECT capital from table_3";

	private static final String INSERT_STATEMENT_DB1 = "INSERT INTO table_1(country, gdp) VALUES ('India', 'success')";
	private static final String INSERT_STATEMENT_DB2 = "INSERT INTO table_2(country, currency) VALUES ('India', 'success')";
	private static final String INSERT_STATEMENT_DB3 = "INSERT INTO table_3(country, capital) VALUES ('India', 'success')";

	private static final String UPDATE_STATEMENT_DB1 = "UPDATE table_1 SET gdp='success' WHERE country='India'";
	private static final String UPDATE_STATEMENT_DB2 = "UPDATE table_2 SET currency='success' WHERE country='India'";
	private static final String UPDATE_STATEMENT_DB3 = "UPDATE table_3 SET capital='success' WHERE country='India'";

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
	 * Implementation of the WSDL operation: echo	 */
	public EchoResponseDocument echo(EchoRequestDocument inParam) {
		// Add the business logic here
		
		String response="";
		try {
		if (inParam.getEchoRequest().getIn().equalsIgnoreCase("insert")){
			response = insertInDb();
		}
			
		if (inParam.getEchoRequest().getIn().equalsIgnoreCase("initialize")){	
			response = initializeDb();
		} 
		
		if (inParam.getEchoRequest().getIn().equalsIgnoreCase("select")){
			response = getResults();
		}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("****************** Exception *******************");
		}
		EchoResponseDocument respdoc = EchoResponseDocument.Factory.newInstance();
		respdoc.addNewEchoResponse().setOut(response);
		return respdoc;
	}
	
	public Connection getConnection_jdbc1() {
		try {
			Connection conn = this.getBAT_5_13_jdbc_1().getConnection();
			//conn.setAutoCommit(false);
			return conn;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public Connection getConnection_jdbc2() {
		try {
			Connection conn = this.getBAT_5_13_jdbc_2().getConnection();
			//conn.setAutoCommit(false);
			return conn;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public Connection getConnection_jdbc3() {
		try {
			Connection conn = this.getBAT_5_13_jdbc_3().getConnection();
			//conn.setAutoCommit(false);
			return conn;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public String getResults() throws SQLException{
		
		String output = "";
		Connection conn1 = this.getConnection_jdbc1();
		try {
			Statement stmnt =  conn1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet results = stmnt.executeQuery(SELECT_STATEMENT_DB1);
			while (results.next()) {
		        String gdp = results.getString("gdp");
		        System.out.println("gdp : " + gdp);
		        output = gdp;
			}
			//conn1.commit();
		} catch (Exception e) {
			//conn1.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing select statement on db1");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn1);
		}
		
		Connection conn2 = this.getConnection_jdbc2();
		try {
			Statement stmnt =  conn2.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet results = stmnt.executeQuery(SELECT_STATEMENT_DB2);
			while (results.next()) {
		        String currency = results.getString("currency");
		        System.out.println("currency : " + currency);
		        output = output + ":" + currency;
			}
			//conn2.commit();
		} catch (Exception e) {
			//conn2.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing select statement on db2");
			System.out.println("*************************************");
			e.printStackTrace();
		} finally {
			closeConnection(conn2);
		}
		
		Connection conn3 = this.getConnection_jdbc3();
		try {
			Statement stmnt =  conn3.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet results = stmnt.executeQuery(SELECT_STATEMENT_DB3);
			while (results.next()) {
		        String capital = results.getString("capital");
		        System.out.println("capital : " + capital);
		        output = output + ":" + capital;
			}
			//conn3.commit();
		} catch (Exception e) {
			//conn3.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing select statement on db3");
			System.out.println("*************************************");
			e.printStackTrace();
		} finally {
			closeConnection(conn3);
		}
		
		System.out.println("****************output: ******************" + output);
		return output;
	}
	

	public String initializeDb() throws SQLException {
	
		String output = "";
		Connection conn1 = this.getConnection_jdbc1();
		try {
			Statement stmnt =  conn1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmnt.executeUpdate(UPDATE_STATEMENT_DB1);
			output ="initialized";
			conn1.commit();
		} catch (Exception e) {
			conn1.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing Update statement on db1");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn1);
		}
		
		Connection conn2 = this.getConnection_jdbc2();
		try {
			Statement stmnt =  conn2.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmnt.executeUpdate(UPDATE_STATEMENT_DB2);
			output = output + ":" + "initialized";;
			conn2.commit();
		} catch (Exception e) {
			conn2.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing Update statement on db2");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn2);
		}
		
		Connection conn3 = this.getConnection_jdbc3();
		try {
			Statement stmnt =  conn3.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmnt.executeUpdate(UPDATE_STATEMENT_DB3);
			output = output + ":" + "initialized";
			conn3.commit();
		} catch (Exception e) {
			conn3.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing Update statement on db3");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn3);
		}
		
		System.out.println("****************output: ******************" + output);
		return output;
	}
	
	public String insertInDb() throws SQLException{
		
		String output = "";
		Connection conn1 = this.getConnection_jdbc1();
		try {
			Statement stmnt =  conn1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmnt.executeUpdate(INSERT_STATEMENT_DB1);
			output ="inserted";
			conn1.commit();
		} catch (Exception e) {
			conn1.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing Insert statement on db1");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn1);
		}
		
		Connection conn2 = this.getConnection_jdbc2();
		try {
			Statement stmnt =  conn2.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmnt.executeUpdate(INSERT_STATEMENT_DB2);
			output = output + ":" + "inserted";
			conn2.commit();
		} catch (Exception e) {
			conn2.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing Insert statement on db2");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn2);
		}
		
		Connection conn3 = this.getConnection_jdbc3();
		try {
			Statement stmnt =  conn3.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmnt.executeUpdate(INSERT_STATEMENT_DB3);
			conn3.commit();
			output = output + ":" + "inserted";
		} catch (Exception e) {
			conn3.rollback();
			System.out.println("*************************************");
			System.out.println("caught sql exception while executing Insert statement on db3");
			System.out.println("*************************************");
			e.printStackTrace();
		}finally {
			closeConnection(conn3);
		}
		
		System.out.println("****************output: ******************" + output);
		return output;
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


}
