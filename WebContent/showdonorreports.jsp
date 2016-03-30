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
 	<s:if test="str=='bottleList'">
	   <s:form theme="simple" cssStyle="font-size: 15px; margin-top: 60px;
 width:850px; background-color:ivory;">
	<table border="2">
	<tr>
		<th>No.</th>
		<th>Donation Date</th>
		<th>Event</th>
		<th>Event Venue</th>
		
		</tr>
		<s:iterator value="bottleList" status="stat">
		<tr>
		<td><s:property value="#stat.count" /></td>
		<td><s:property value="donorDetail.donationDate"/></td>
		<td><s:property value="eventDetail.eventTitle"/></td>
		
		<td><s:property value="eventDetail.eventVanue"/></td>
		
			<td>
					<s:url id="ViewUrl" action="View_Report">
						<s:param name="bottle_id" value="%{bottleId}" />
					</s:url> 
					<s:a href="%{ViewUrl}">&nbsp;View My Report&nbsp;</s:a> 
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