package com.tibco.qa.m6.globaltxn.util;

public class DBUtils {
		
	
	public static final String PG="Postgres";
	public static final String ORA="Oracle";
	
	public static String getDeleteQuery(String dbType, String tableName)
	{
		String query = "";
		if(dbType.equalsIgnoreCase(ORA))
		{
			query = "DELETE FROM " + tableName;
		}
		if(dbType.equalsIgnoreCase(PG))
		{
			query = "DELETE FROM \"" + tableName +  "\"";
		}
		return query;
	}

	
	public static String getInsertQuery(String dbType, String tableName)
	{
		String query = "";
		if(dbType.equalsIgnoreCase(ORA))
		{
			query = "INSERT INTO " + tableName+  " (employeeId, firstName, lastName, address) VALUES (?,?, ?, ?)";
		}
		if(dbType.equalsIgnoreCase(PG))
		{
			query = "INSERT INTO \"" +tableName + "\"(\"employeeId\", \"firstName\", \"lastName\", address) VALUES (?,?, ?, ?);";
		}
		return query;
	}

	
	public static  String getSelectQuery(String dbType, String tableName)
	{
		String query = "";
		if(dbType.equalsIgnoreCase(ORA))
		{
			query = "select * from "+ tableName; 
		}
		if(dbType.equalsIgnoreCase(PG))
		{
			query = "select * from \""+ tableName + "\""; 
		}
		return query;
	}
	
}
