<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="js/wufoo.js"></script>

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<style type="text/css"> 
		
			

			#tabs, #ui-datepicker-div, .ui-datepicker{ font-size: 125%; }
			.clear{ clear: both; }
			
			.example-container{}
			.example-container input{ border: solid 1px #aaa; padding: 4px; width: 175px; }
		</style> 
		<link rel="stylesheet" media="all" type="text/css" href="css/jquery-ui.css" />
		<link rel="stylesheet" media="all" type="text/css" href="css/jquery-ui-timepicker-addon.css" />
		
		<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-timepicker-addon.js"></script>
		<script type="text/javascript" src="js/jquery-ui-sliderAccess.js"></script>
		<script type="text/javascript">
			
			$(function(){
				$('#basic_example_1').datetimepicker({ minDate: "-D", maxDate: "+18Y" });
		
				$('.example-container > pre').each(function(i){
					eval($(this).text());
				});
			});
			
		</script>

</head>
<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form theme="simple" method="post" action="RegisterBottle" >
<s:hidden name="bbd.bottleId" value="%{bbd.bottleId}"/>
<!--<s:hidden name="dd.donorId" value="%{bbd.donorDetail.donorId}"/>
<s:hidden name="ed.eventId" value="%{bbd.eventDetail.eventId}"/>
-->

<ul>
<li id="foli16" class="complex notranslate      ">


<header id="header" class="info">
<h2><font color="#900000">Test Information</font></h2>
</header>
<li id="foli2" class="date notranslate">
<label class="desc">
Test
</label>
<li id="foli2" class="date notranslate">
<s:select  cssClass="field text ln"    name="td.testName" headerKey="1"
		headerValue="-------SELECT Test------" list="{'HEPATITIS B','HEPATITIS C','HIV I & II','MALARIA','SYPHILIS'}"></s:select>
</li>
</li>
<li id="foli2" class="date notranslate">
<label class="desc">
Post
</label>
<li id="foli2" class="date notranslate">
<s:select  cssClass="field text ln"     name="td.testMethod" headerKey="1"
		headerValue="-------SELECT Method------" list="{'ELISA','SMEAR','TPHA'}"></s:select>
</li>
</li>
<li id="foli2" class="notranslate">
<label class="desc">
Result
</label>
<s:select  cssClass="field text ln"     name="td.result" headerKey="1"
		headerValue="-------SELECT Method------" list="{'Non Reactive','Reactive','Negative','Positive','Not Detected','Detected'}"></s:select>
</li>


	
<li class="date notranslate">

<button>
                    <s:submit value="  Register  " />
</button>
					</li>
</div>
					
				




</s:form> 


              
    
    
    
   
</body>
</html>