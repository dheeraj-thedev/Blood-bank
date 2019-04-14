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

</head>
<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form theme="simple" method="post" action="ForgotPWD.Action" >
<ul>
<li id="foli2" class="notranslate">
<label class="desc">
Enter Username:
</label>
<s:textfield id="Field1" name="ad.login"  cssClass="field text ln"  size="20"  />

</li>

<li id="foli2" class="notranslate">
<label class="desc">
Enter emailid:
</label>
<!--<s:password id="Field1"  name="ad.password"  cssClass="field text ln"  size="20"></s:password>
--><s:textfield id="Field1"  name="ad.emailId"  cssClass="field text ln"  size="20"  />

</li>

<li class="buttons ">
<div>

                    <s:submit value="  Send Me Email  " />
                    </div>
</li>


</ul>
</s:form> 



</div>
              
    
    
    
   
</body>