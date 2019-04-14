package com.demo.action;

	import java.sql.Connection;
	import java.sql.DriverManager;

	public final class JDBCConnection
	{
	    public static Connection getJDBCConnection()
	    {
	        Connection connection = null;
	        try
	        {
	            Class.forName("com.mysql.jdbc.Driver");
	            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank_new","root","root");
	        }
	        catch(Exception e)
	        {
	         e.printStackTrace();
	        }
	        return connection;
	    }
	}

