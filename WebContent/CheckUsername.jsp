<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
try {
String str=request.getParameter("user");
String connectionURL = "jdbc:mysql://localhost:3306/blood_bank_new";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "root");
//Add the data into the database
String sql = "SELECT login FROM account_detail WHERE login='"+str+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
int count = 0;
while (rs.next ()){
count++;
}
if(count==0)
{
out.println("<font color=GREEN><b>"+str+"</b> is avaliable</font>");
}
else
	{
	out.println("<font color=RED><b>"+str+"</b> is not avaliable</font>");
	}
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>