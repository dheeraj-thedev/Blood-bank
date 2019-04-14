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
  	<div >
<div style="font-size: 25px;margin-top: 15px">
 <s:a href="index.jsp">Back</s:a>
 </div>
 <div style="font-size: 25px;margin-top: 15px">
 <s:url id="Issue_Hos" action="GetIssue_HOS"/>
 <s:a href="%{Issue_Hos}">Show Issue of Hospital</s:a>
 </div>
 <div style="font-size: 25px;margin-top: 15px">
  <s:url id="Issue_Patient" action="GetIssue_Patient"/>
 <s:a href="%{Issue_Patient}">Show Issue Of Patient</s:a>
 </div>
 <s:if test="str=='hospitalList'">
	   <s:form theme="simple" cssStyle="font-size: 15px; margin-top: 60px;
 width:750px; background-color:ivory;">
	<table border="2">
	<tr>
		<th>No.</th>
		<th>Issue Date</th>
		<th>No. Of Bottles</th>
		<th>Blood Group</th>
		<th>Hospital Name</th>
		<th>Hospital Address</th>
		</tr>
		<s:iterator value="hospitalList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="issueDate"/></td>
		<td><s:property value="noOfBottles"/> </td>
		<td><s:property value="bloodGroup"/> </td>
		
			<td><s:property value="hospitalDetail.HName"/></td>
		<td><s:property value="hospitalDetail.HAddress"/></td>
		
			<td>
					<s:url id="DeleteUrl" action="Delete_issue">
						<s:param name="issueid" value="%{issueId}" />
					</s:url> 
					<s:a href="%{DeleteUrl}">&nbsp;Delete&nbsp;</s:a> 
		</td>
		<td>
					<s:url id="editUrl" action="EditHospital">
						<s:param name="issueid" value="%{issueId}" />
					</s:url> 
					<s:a href="%{editUrl}">&nbsp;Edit&nbsp;</s:a> 
					</td>
		</tr>
		</s:iterator>
	</table>
	</s:form>
	</s:if>
	 <s:if test="str=='patientList'">
	   <s:form theme="simple" cssStyle="font-size: 15px; margin-top: 60px;
 width:900px; background-color:ivory;">
	<table border="2">
	<tr>
		<th>No.</th>
		<th>Issue Date</th>
		<th>No. Of Bottles</th>
		<th>Blood Group</th>
		<th>Patient Name</th>
		<th>Patient is Donor</th>
		</tr>
		<s:iterator value="patientList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="issueDate"/></td>
		<td><s:property value="noOfBottles"/> </td>
		<td><s:property value="bloodGroup"/> </td>
		<td><s:property value="patientDetail.contactDetail.firstName"/>&nbsp;
		<s:property value="patientDetail.contactDetail.middleName"/>&nbsp;
		<s:property value="patientDetail.contactDetail.lastName"/></td>
		<td><s:property value="patientDetail.donorDetail.donorId"/></td>
	
		
			<td>
					<s:url id="DeleteUrl" action="Delete_issue">
						<s:param name="issueid" value="%{issueId}" />
					</s:url> 
					<s:a href="%{DeleteUrl}">&nbsp;Delete&nbsp;</s:a> 
		</td>
		<td>
					<s:url id="DeleteUrl" action="Edit_patient">
						<s:param name="issueid" value="%{issueId}" />
					</s:url> 
					<s:a href="%{DeleteUrl}">&nbsp;Edit&nbsp;</s:a> 
		</td>
		</tr>
		</s:iterator>
	</table>
	</s:form>
	</s:if>
	
 </div>
 </div>
 </body>
 </html>
 