<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.List"%>
	<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>

<script src="http://connect.facebook.net/en_US/all.js#xfbml=1&appId=561303080587920""></script>
<title>Life Line Blood Bank</title>

</head>
<body class="bgone">



<div id="wrapper_sec">
<%@include file="css_js.jsp"%>
<s:if test="#session.tracker == 'true'"> 
<%@include
	file="header_after_login.jsp"%>
</s:if>
<s:else>
<s:include value="header.jsp"></s:include>
</s:else>

<%@include file="navigation.jsp"%>
<div id="contentsec">
<s:if test="#session.tracker == 'true'"> 
<div class="prod_detail">
<div class="col3">
<%@include file="member_home.jsp"%>
</div>
</div>
</s:if>
<s:else>
<div class="prod_detail">
<div class="col3">
<%@include file="slideshow.jsp"%>
<%@include file="comments.jsp"%>
</div>
<%@include file="sidebar.jsp"%>
</div>
</s:else>
</div>

<%@include file="footer.jsp"%>
</div>
</body>
</html>