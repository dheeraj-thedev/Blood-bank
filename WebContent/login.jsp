<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
<title>Life Line Blood Bank</title>
</head>

<body class="bgone" onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<div id="wrapper_sec"><%@include file="css_js.jsp"%>
<%@include file="header.jsp"%> <%@include
	file="navigation.jsp"%>
<body>
<div id="contentsec">
<div class="prod_detail">
<div class="col3">


<div class="comments">
<div style="position: relative; width: 960;">
<h2 class="heading colr">Login</h2>
 
</div>

</div>
<div class="clear"></div>
<div style="font-size: 15px">
<%@include file="forms/login_form.jsp"%>
</div>

</div>
<%@include file="sidebar.jsp"%></div>
</div>

<%@include file="footer.jsp"%>
</div>
</body>
</body>
</html>