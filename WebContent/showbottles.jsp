<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bgone">
<div id="wrapper_sec">
<%@include file="css_js.jsp"%>
<%@include file="header_after_login.jsp"%>
<%@include file="navigation.jsp"%>
<div id="contentsec_member">
<div class="prod_detail">
<div class="col3">


                <div class="comments">
				<div style="position:relative;width:960;height=800;">
				
   
         
            	<h2 class="heading colr"><font size="1" >Welcome </font>,
            	
            	<s:property value="#session.UserName"/>
            	</h2>
                
                    	  </div>
                    	  
                    	  
           </div>
            <%@include file="sidebar/staff_function_sidebar.jsp"%>
            
            
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; float: left;margin-top: 60px;
margin-left: 300px; width: 102px">
   <s:form>

	<s:if test="str=='eventlist'">
	<table border="2">
	<tr>
		<th>No.</th>
		<th>Event Title</th>
		<th>Event Description</th>
		<th>Event Date & Time</th>
		<th>Event Venue</th>
		</tr>
		<s:iterator value="eventList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="eventTitle"/></td>
		<td><s:property value="eventDescription"/> </td>
		<td><s:property value="eventDate"/></td>
		<td><s:property value="eventVanue"/></td>
		<td>
					<s:url id="editUrl" action="FillDonor_event">
						<s:param name="eveid" value="%{eventId}" />
					</s:url> 
					<s:a href="%{editUrl}">Fill Donor Detail</s:a> 
		</td>
			<td>
					<s:url id="ViewUrl" action="ViewDonor_event">
						<s:param name="eveid" value="%{eventId}" />
					</s:url> 
					<s:a href="%{ViewUrl}">View</s:a> 
		</td>
		</tr>
		</s:iterator>
	</table>
	</s:if>
	<s:if test="str=='bottlelist'">
	
	<table border="2">
	<tr>
	<th>No.</th>
			<th>First Name</th>
				<th>Middle Name</th>
				<th>Last name</th>
				<th>Gender</th>
				
				<th>Birth Date</th>
		
				</tr>
		<s:iterator value="bottleList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="donorDetail.contactDetail.firstName"/></td>
		<td><s:property value="donorDetail.contactDetail.middleName"/> </td>
		<td><s:property value="donorDetail.contactDetail.lastName"/></td>
		<td><s:property value="donorDetail.contactDetail.contactNo"/></td>
		<td>
					<s:url id="editUrl" action="FillDonor_event">
						<s:param name="bottleid" value="%{bottleId}" />
					</s:url> 
					<s:a href="%{editUrl}">Fill Test Detail</s:a> 
		</td>
		
		</tr>
		</s:iterator>
	</table>
	</s:if>
		  
	<s:if test="str=='Avilable_Bottles'">

	<table border="2">
	<tr>
		<th>No.</th>
		<th>Blood Group</th>
		<th>Bottles Available</th>
		</tr>
		<s:iterator value="inventoryList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="bloodGroup"/></td>
		<td><s:property value="bottlesAvailable"/> </td>

		
		</tr>
		</s:iterator>
	</table>
	
	</s:if>

	
	<s:if test="str=='testbottle'">
	
	<table border="2">
	<tr>
	<th>No.</th>
			<th>First Name</th>
				<th>Middle Name</th>
				<th>Last name</th>
				<th>Gender</th>
				
				<th>Birth Date</th>
		
				</tr>
		<s:iterator value="BottleList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="donorDetail.contactDetail.firstName"/></td>
		<td><s:property value="donorDetail.contactDetail.middleName"/> </td>
		<td><s:property value="donorDetail.contactDetail.lastName"/></td>
		<td><s:property value="donorDetail.contactDetail.contactNo"/></td>
		<td>
					<s:url id="test" action="FillTest">
						<s:param name="bottleid" value="%{bottleId}" />
					</s:url> 
					<s:a href="%{test}">Fill Test Detail</s:a> 
		</td>
		
		</tr>
		</s:iterator>
	</table>
	
	</s:if>
	
	</s:form>

<br/>
<br/>
	                
         </div>

</div>

</div>

<%@include file="footer.jsp"%>

</div>
</body>


</html>