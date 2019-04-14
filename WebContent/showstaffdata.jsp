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
<div id="wrapper_sec" >
<%@include file="css_js.jsp"%>



   	<div >
<div style="font-size: 25px;margin-top: 15px">
 <s:a href="index.jsp">Back</s:a>
 </div>
 <s:if test="str=='list'">
   <s:form theme="simple" cssStyle="font-size: 15px; margin-top: 60px;
 width:1600px; background-color:ivory;">



		<table border="1">
			<tr>
				
				<th></th>
				<th></th>
				<th></th>
				<th>No.</th>
				<th>StaffID</th>
				<th>Login</th>
				<th>Password</th>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>Last name</th>
				<th>Gender</th>
				
				<th>Birth Date</th>
				<th>Contact No.</th>
				<th>EmailID</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				
				<th>Qualification</th>
				<th>Post</th>
				<th>Joinning Date</th>
				
			</tr>

			<s:iterator  value="staffList" status="stat">
				<tr>
					<td><s:url id="viewUrl" action="ViewStaff">
						<s:param name="accid" value="%{accountId}" />
					</s:url> 
					<s:a href="%{viewUrl}">View</s:a>
					</td> 
					<td><s:url id="deleteUrl" action="DeleteStaff">
						<s:param name="accid" value="%{accountId}" />
						<s:param name="staffid" value="%{staffDetail.staffId}" />
					</s:url> 
					<s:a href="%{deleteUrl}" onclick="return confirm('Are you sure you want to delete?')">Delete</s:a>
					</td> 
					<td>
					<s:url id="editUrl" action="EditStaff">
						<s:param name="accid" value="%{accountId}" />
					</s:url> 
					<s:a href="%{editUrl}">Edit</s:a> 
					</td>
					
					<td><s:property value="#stat.count" /></td>
					<td><s:property value="staffDetail.staffId" /></td>
					<td><s:property value="login" /></td>
					<td><s:property value="password" /></td>
					<td><s:property value="staffDetail.contactDetail.firstName" /></td>
					<td><s:property value="staffDetail.contactDetail.middleName" /></td>
					<td><s:property value="staffDetail.contactDetail.lastName" /></td>
					<td><s:property value="staffDetail.contactDetail.gender" /></td>
					<td><s:property value="staffDetail.contactDetail.birthDate" /></td>
					<td><s:property value="staffDetail.contactDetail.contactNo" /></td>
					<td><s:property value="staffDetail.contactDetail.emailId" /></td>
					<td><s:property value="staffDetail.contactDetail.address" /></td>
					<td><s:property value="staffDetail.contactDetail.city" /></td>
					<td><s:property value="staffDetail.contactDetail.state" /></td>
					
					<td><s:property value="staffDetail.qualification" /></td>
					<td><s:property value="staffDetail.post" /></td>
					<td><s:property value="staffDetail.joiningDate" /></td>
					
					
				</tr>
			</s:iterator>
			</table>
		</s:form>
	</s:if>
		<s:if test="str=='donor_found'">
	   <s:form theme="simple" cssStyle="font-size: 15px; margin-top: 60px;
 width:1200px; background-color:ivory;">
	<table border="2">
	<tr>
	<th></th>
	<th></th>
		<th>No.</th>
		<th>DonorID</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Date Of Birth</th>	
		<th>Contact No.</th>
		<th>EmailID</th>
		
		<th>Blood Group</th>
		<th>Donation Date</th>
		<th>Donated Times</th>
		
		</tr>
		<s:iterator value="DonorList" status="stat">
		<tr>
				<td>
					<s:url id="ViewUrl" action="Delete_Donor">
						<s:param name="donorid" value="%{donorId}" />
					</s:url> 
					<s:a href="%{ViewUrl}">&nbsp;Delete&nbsp;</s:a> 
		</td>
		<td>
					<s:url id="EditUrl" action="Edit_Donor">
						<s:param name="donorid" value="%{donorId}" />
					</s:url> 
					<s:a href="%{EditUrl}">&nbsp;Edit&nbsp;</s:a> 
		</td>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="donorId" /></td>
		<td><s:property value="contactDetail.firstName" />&nbsp;
		<s:property value="contactDetail.middleName" />&nbsp;
		<s:property value="contactDetail.lastName" /></td>
					<td><s:property value="contactDetail.gender" /></td>
					<td><s:property value="contactDetail.birthDate" /></td>
					<td><s:property value="contactDetail.contactNo" /></td>
					<td><s:property value="contactDetail.emailId" /></td>
		<td><s:property value="bloodGroup"/> </td>
		<td><s:property value="donationDate"/></td>
		<td><s:property value="donatedTimes"/></td>
		
	
		</tr>
		</s:iterator>
	</table>
	</s:form>
	</s:if>
	<s:if test="str=='eventlist'">
	   <s:form theme="simple" cssStyle="font-size: 15px; margin-top: 60px;
 width:850px; background-color:ivory;">
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
					<s:url id="ViewUrl" action="Delete_Event">
						<s:param name="eveid" value="%{eventId}" />
					</s:url> 
					<s:a href="%{ViewUrl}">&nbsp;Delete&nbsp;</s:a> 
		</td>
		<td>
					<s:url id="mailUrl" action="Send_mail">
						<s:param name="eveid" value="%{eventId}" />
					</s:url> 
					<s:a href="%{mailUrl}">&nbsp;Send Mail to Users&nbsp;</s:a> 
		</td>
		</tr>
		</s:iterator>
	</table>
	</s:form>
	</s:if>
	<s:if test="str=='bottlelist'">
	
	<table border="2">
	<tr>
	<th>No.</th>
	<th>Bottle ID</th>
	<th>Donor Id</th>
			<th>Donor Name </th>
				<th>Event ID</th>
				<th>Event Title</th>
				
				
		
				</tr>
		<s:iterator value="bottleList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="bottleId"/></td>
		<td><s:property value="donorDetail.donorId"/></td>
		<td><s:property value="donorDetail.contactDetail.firstName"/>&nbsp;
		&nbsp;<s:property value="donorDetail.contactDetail.middleName"/> &nbsp;
		&nbsp;<s:property value="donorDetail.contactDetail.lastName"/></td>&nbsp;
		<td><s:property value="eventDetail.eventId"/></td>
		<td><s:property value="eventDetail.eventTitle"/></td>
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
	
	

<br/>
<br/>
	                
         </div>

</div>

</div>



</div>
</body>


</html>