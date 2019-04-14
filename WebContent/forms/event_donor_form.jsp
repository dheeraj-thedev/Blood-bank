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


<!--<div id="msg"><font color="red">Awesome Gallery By Anil Labs</font></div>

-->
</head>

<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form  theme="simple" action="Event_Donr" >

<ul>
<li id="foli2" class="notranslate">
<label class="desc">
Enter Donor Id:
</label>
<s:hidden name="bbd.bottleId"/>
<s:textfield  name="dd.donorRandomId"  cssClass="field text ln"  size="20"  />

<div id="fieldError" >
	<s:fielderror fieldName="dd.donorId" /></div>
</li>



<font color="red">
<s:if test="str=='notvalid'">
<s:label value="****Please Enter Correct Donor Id"></s:label>
</s:if>
</font>

<li id="foli2" class="notranslate">

<button>
                    <s:submit  value="   REGISTER  " />
       </button>  
                    </li>


                   

</ul>

</s:form> 



</div>
              
    
    
    
   
</body>