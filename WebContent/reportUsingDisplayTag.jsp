<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<link rel="stylesheet" href="css/screen.css" type="text/css">
<link rel="stylesheet" href="css/site.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<display:table name="sessionScope.Staff"  
	export="true" pagesize="3" sort="list" defaultsort="1"  cellpadding="5">
	<display:column property="staffDetail.contactDetail.firstName" title="first Name"
		sortable="true" headerClass="sortable" />
	<display:column property="staffDetail.contactDetail.lastName" title="second Name"
		sortable="true" headerClass="sortable" />
	<display:column property="staffDetail.contactDetail.emailId" title="emailId" sortable="true"
		headerClass="sortable" />
	<display:column property="staffDetail.contactDetail.address" title="address" sortable="true"
		headerClass="sortable" />
	
	
	<display:column title="EDIT" property="accountId"/>
	
	<display:column title="Delete" autolink="true">
	<s:iterator value="staffList"  >
	<s:url id="deleteUrl" action="DeleteStaff">
	
						<s:param name="accid"  value="%{accountId}" />
						
					</s:url> 
					</s:iterator>	
									
					<s:a href="%{deleteUrl}"  onclick="return confirm('Are you sure you want to delete?')">Delete</s:a>
	</display:column>
<display:column>
<s:iterator value="staffList" >
		<s:url id="editUrl" action="EditStaff">
						<s:param name="accid" value="%{accountId}" />
					 </s:url>
					 </s:iterator>
					<s:a href="%{editUrl}" >Edit</s:a> 
</display:column>
</display:table>
</body>
</html>