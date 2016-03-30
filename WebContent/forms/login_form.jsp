<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="js/wufoo.js"></script>
<link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.min.js"></script>
<style type="text/css"><!--
#fieldError li span{
    font-family: sans-serif;
    font-size: 15px;
    color: #900000;
   text-shadow: white;
   blink('#msg');
}
#fieldError li, #successMessage li{
    margin-right: 2px;    
}
#fieldError ul{

    margin-right: 10px;
    
    list-style:none;
    
}
#jQueryDatePicker1,jQueryDatePicker2
{
   border: 1px #C0C0C0 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   
   vertical-align: middle;
}

.ui-datepicker
{
   font-family: Arial;
   font-size: 13px;
   z-index: 1003 !important;
   display: none;
   
}
--></style>
<script type="text/javascript">
$(function()
{
	$( "#jQueryDatePicker2" ).datepicker({ minDate: "-40Y", maxDate: "-18Y" ,changeYear: true,yearRange:"-40:+0"});
	$( "#jQueryDatePicker1" ).datepicker({ minDate: "-12M", maxDate: "+D",yearRange:"-40:+0" });
   var jQueryDatePicker1Opts =
   {
      dateFormat: 'dd/mm/yy',
      changeMonth: false,
      
      showButtonPanel: true,
      showAnim: 'show'
	  
   };
   $("#jQueryDatePicker1").datepicker(jQueryDatePicker1Opts);
   $("#jQueryDatePicker1").datepicker("setDate", "new Date()");
    $("#jQueryDatePicker2").datepicker(jQueryDatePicker1Opts);

   //$("#jQueryDatePicker2").datepicker("setDate", "new Date()");
});

</script>

<!--<div id="msg"><font color="red">Awesome Gallery By Anil Labs</font></div>

-->
</head>

<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form  theme="simple" action="Login.Action" >

<ul>
<li id="foli2" class="notranslate">
<label class="desc">
Enter Username:
</label>
<s:textfield  name="ad.login"  cssClass="field text ln"  size="20"  />

<div id="fieldError" >
	<s:fielderror fieldName="ad.login" /></div>
</li>

<li id="foli2" class="notranslate">
<label class="desc">
Enter Password:
</label>

<s:password id="Field1"  name="ad.password"  cssClass="field text ln"  size="20"/>
<!--<s:textfield   name="ad.password"  cssClass="field text ln"  size="20" cssErrorStyle="color:red;" />
 
  
-->
<div id="fieldError" >
<div id="msg" >
                   <s:fielderror fieldName="ad.password" />
             </div></div> 
	
</li>

<font color="red">
<s:if test="str=='notvalid'">
<s:label value="****Please Enter Correct Username and Password"></s:label>
</s:if>
</font>

<li id="foli2" class="notranslate">

<button>
                    <s:submit  value="   Login  " />
       </button>  
                    </li>


                    <s:a href="forgotPasswordPage.jsp">Forgot Password</s:a>

</ul>

</s:form> 



</div>
              
    
    
    
   
</body>