<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@page import="java.util.List"%>
	<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Life Line Blood Bank</title>
</head>

<body class="bgone">
<%@include file="/css_js.jsp"%>
<s:if test="#session.tracker == 'true'"> 
<%@include
	file="header_after_login.jsp"%>
</s:if>
<s:else>
<s:include value="header.jsp"></s:include>
</s:else>
<div id="wrapper_sec">
 <%@include
	file="/navigation.jsp"%>
<div id="contentsec">
<div class="prod_detail">
<div class="col3">


<div class="comments">
<div style="position: relative; width: 960;">
<h2 class="heading colr">Why Donate Blood?</h2>
<div style="font-size:15px">
<p class="txt">
<div class="center">
<img alt="" src="images/wdb.jpg">
</div>
  <strong>Safe blood saves lives and improves health. Blood transfusion is needed for:</strong>
  <br/>
1.women with complications of pregnancy, such as ectopic pregnancies and haemorrhage       before, during or after childbirth;<br/>
2.children with severe anaemia often resulting from malaria or malnutrition;<br/>
3.people with severe trauma following accidents; and<br/>
4.many surgical and cancer patients.<br/>

</p>
<hr/>
It is also needed for regular transfusions for people with conditions such as thalassemia and sickle cell disease and is used to make products such as clotting factors for people with haemophilia.<br/>

There is a constant need for regular blood supply because blood can be stored for only a limited time before use. <br/>
Regular blood donations by a sufficient number of healthy people is needed to ensure that safe blood will be available whenever and wherever it is needed.<br/>
Blood is the most precious gift that anyone can give to another person the gift of life. <br/>
A decision to donate your blood can save someones life, or even several if your blood is separated into its components red cells, platelets and plasma  which can be used individually for patients with specific conditions.<br/>


</div>
</div>
<div class="clear"></div>
</div>

</div>
<%@include file="../sidebar.jsp"%></div>
</div>

<%@include file="../footer.jsp"%></div>
</body>
</html>