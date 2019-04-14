<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Life Line Blood Bank</title>
<link rel="stylesheet" href="css/sidebar.css" type="text/css">

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
            	<h2 class="heading colr"><font size="1" >Welcome</font>,<s:property value="#session.UserName"/></h2>
                
                    	  </div>
            <!--<div class="clear"></div>
            --></div>
    <%@include file="sidebar/staff_function_sidebar.jsp"%>        
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; float: right;margin-top: 60px;
margin-right: 10px;">
	<%@include file="forms/hospital_edit_form.jsp"%>                
         </div>

</div>
</div>