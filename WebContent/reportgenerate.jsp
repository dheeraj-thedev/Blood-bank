<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Life Line Blood Bank</title>
<link rel="stylesheet" href="css/sidebar.css" type="text/css">
<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="js/wufoo.js"></script>
<link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.min.js"></script>
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
  <div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form action="Generate_Donor_Report" theme="simple">

<ul>
<li id="foli2" class="notranslate">
<label class="desc">
Enter Bottle Id:
</label>


	<s:textfield name="bottle_id" label="Enter Bottle Id"></s:textfield>
	<li id="foli2" class="notranslate">
	<button>
	<s:submit value="Generate Report"></s:submit>
	</button>
</s:form>
<div id="fieldError" >
	<s:fielderror fieldName="dd.donorId" /></div>
</li>






                   

</ul>






</div>

</div>
</div>
<%@include file="footer.jsp"%>
</div>
</body>
</html>