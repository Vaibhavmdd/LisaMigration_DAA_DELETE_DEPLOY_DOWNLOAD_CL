package com.sample.phonebook;


import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;
import com.tibco.ns.phonebook.PhonebookPT;
import com.tibco.ns.phonebook.AddPhoneRequestDocument;
import com.tibco.ns.phonebook.GetPhoneResponseDocument;
import com.tibco.ns.phonebook.AddPhoneResponseDocument;
import com.tibco.ns.phonebook.GetPhoneRequestDocument;
import com.tibco.ns.phonebook.PhoneEntryType;
import com.tibco.ns.phonebook.AddPhoneRequestDocument.AddPhoneRequest;
import com.tibco.ns.phonebook.AddPhoneResponseDocument.AddPhoneResponse;
import com.tibco.ns.phonebook.GetPhoneRequestDocument.GetPhoneRequest;
import com.tibco.ns.phonebook.GetPhoneResponseDocument.GetPhoneResponse;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Implementation of JavaPhonebookComponent component.
 *
 */
public class PhonebookImpl extends AbstractPhonebookImpl {

	/**
	 * Initialization of JavaPhonebookComponent component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of JavaPhonebookComponent component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: AddPhone	 */
	public AddPhoneResponseDocument addPhone(AddPhoneRequestDocument addPhoneParameters) {
		// Add the business logic here
		
		AddPhoneRequest addInfo = addPhoneParameters.getAddPhoneRequest();
		DataSource ds = getDatabase();
		String firstName = nn(addInfo.getFirstName());
		String lastName = nn(addInfo.getLastName());
		String phone = nn(addInfo.getPhone());
		String id = null;
		
		try {
			Connection connection = ds.getConnection();
			ensureTablesExist(connection);	
			id = addEntry(connection, firstName, lastName, phone);
		} catch (SQLException e) {
			id = "ERROR";
			e.printStackTrace();
		}
		
		AddPhoneResponseDocument retValue = AddPhoneResponseDocument.Factory.newInstance();		
		AddPhoneResponse resp = retValue.addNewAddPhoneResponse();
		id = nn(id);		
		resp.setEntryId(id);
		
		return retValue;
	}

	private String addEntry(Connection connection, String firstName,
			String lastName, String phone) throws SQLException {

		Statement stmt = null;
		String lastId = null;
		
		try{
			String sqlString = "INSERT INTO PHONEBOOK (firstName, lastName, phone) VALUES ('" + firstName +"', '" + lastName + "', '" + phone + "');";
			stmt = connection.createStatement();		
			stmt.executeUpdate(sqlString);
			sqlString = "SELECT MAX(id) AS LAST_ID FROM PHONEBOOK WHERE firstName='" + firstName +"' AND lastName='" + lastName + "';";
			ResultSet rs = stmt.executeQuery(sqlString);
									
			while(rs.next())
			{
				lastId = rs.getString("LAST_ID");
				if (null != lastId)
				{
					break;
				}
			}
		}catch(SQLException e){
			
		}finally{
			try{
				stmt.close();
			}catch(Exception e){};
		}
		return lastId;
	}


	private void ensureTablesExist(Connection connection) throws SQLException {

		DatabaseMetaData metadata = connection.getMetaData();
		String sqlString = null;
		
		ResultSet rs = metadata.getTables(null, null, "PHONEBOOK", null);
		boolean exists = rs.next();
		if (!exists)
		{
			sqlString = "CREATE TABLE PHONEBOOK ( id integer IDENTITY, firstName varchar(60), lastName varchar(120), phone varchar(20) );";
			Statement stmt = connection.createStatement();	
			stmt.executeUpdate(sqlString);
		}
		rs.close();
	}

	private final static String nn(String s)
	{
		if (null == s)
			s = "";
		return s;
	}
	
	/**
	 * Implementation of the WSDL operation: GetPhone
	 */

	public GetPhoneResponseDocument getPhone(GetPhoneRequestDocument getPhoneParameters) {
		// Add the business logic here
		
		GetPhoneRequest requestInfo = getPhoneParameters.getGetPhoneRequest();
		String id = requestInfo.getEntryId();
		String firstName = requestInfo.getFirstName();
		String lastName = requestInfo.getLastName();
		String sqlString = constructSelectStatement(id, firstName, lastName);;
		
		DataSource ds = getDatabase();
		Connection connection = null;
		
		GetPhoneResponseDocument retValue = GetPhoneResponseDocument.Factory.newInstance();
		
		GetPhoneResponse resp = retValue.addNewGetPhoneResponse();
		
		
		
		try{
			connection = ds.getConnection();
			ensureTablesExist(connection);	
			
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(sqlString);
			PhoneEntryType entry = null;
			
			while(rs.next())
			{
				entry = resp.addNewOut();
				entry.setEntryId(rs.getString("id"));
				entry.setFirstName(rs.getString("firstName"));
				entry.setLastName(rs.getString("lastName"));
				entry.setPhone(rs.getString("phone"));			
			}

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				connection.close();
			}catch(Exception e){};
		}
		
		
		return retValue;
	}

	private String constructSelectStatement(String id, String firstName,
			String lastName) {
		String sqlString = null;
		
		if (null != id)
		{
			int index = -1;
			
			try{
				index = Integer.parseInt(id);
			}catch ( NumberFormatException e){
				
				throw new IllegalArgumentException("Id to search must be of type Integer", e);
				
			}
			
			// SEARCH BY ID, firstName and lastName will be ignored
			
			sqlString = "SELECT * FROM PHONEBOOK WHERE id=" + index + ";";
			
			
		}else{
			
			String firstNameCondition = null;
			if (null != firstName)
			{
				if (firstName.indexOf("%") >= 0)
				{
					firstNameCondition = "firstName LIKE '" + firstName + "'";
				}else{
					firstNameCondition = "firstName='" + firstName + "'";
				}
			}
			
			String lastNameCondition = null;
			if (null != lastName)
			{
				if (lastName.indexOf("%") >= 0)
				{
					lastNameCondition = "lastName LIKE '" + lastName + "'";
				}else{
					lastNameCondition = "lastName='" + lastName + "'";
				}
			}
			
			String condition = "";
			if (null != firstNameCondition)
			{
				if (null != lastNameCondition)
				{
					condition = " WHERE " + firstNameCondition + " AND " + lastNameCondition;
				}else{
					condition = " WHERE " + firstNameCondition;
				}
			}else{
				if (null != lastNameCondition)
				{
					condition = " WHERE " + lastNameCondition;
				}else{
					condition = "";
				}
			}
			
			sqlString = "SELECT * FROM PHONEBOOK" + condition + ";";
		}
		
		return sqlString;
	}
}
