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
<style type="text/css">
#jQueryDatePicker1,jQueryDatePicker2
{
   border: 1px #C0C0C0 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   vertical-align: middle;
}

.ui-datepicker
{
   font-family: Arial;
   font-size: 13px;
   z-index: 1003 !important;
   display: none;
   
}
</style>
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
</head>
<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form theme="simple" method="post" action="EditUser" >

<header id="header" class="info">
<h3><font color="#900000">Edit User</font></h3>
</header>
<header id="header" class="info">
<h2><font color="#900000">Personal Information</font></h2>
<div></div>
</header>

<ul>
<s:hidden name="ad.accountId" value="%{ad_temp.accountId}"/>
<!--<s:hidden name="sd.staffId" value="%{ad_temp.staffDetail.staffId}"/>
<s:hidden name="cd.contactId" value="%{ad_temp.staffDetail.contactDetail.contactId}"/>
--><li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Name
</label>
<span>
<s:textfield id="Field0" name="cd.firstName"  cssClass="field text fn" value="%{ad_temp.userDetail.contactDetail.firstName}" size="14"  />
<label for="Field0">First</label>
</span>

<span>
<s:textfield id="Field1" name="cd.middleName"  cssClass="field text ln" value="%{ad_temp.userDetail.contactDetail.middleName}" size="34"  />
<label for="Field1">Middle</label>
</span>
<span>
<s:textfield id="Field1" name="cd.lastName"  cssClass="field text ln" value="%{ad_temp.userDetail.contactDetail.lastName}" size="24"  />
<label for="Field1">Last</label>
</span>


</li>
</ul>
<div id="fieldError"  >
<s:fielderror fieldName="cd.firstName"/>

<s:fielderror fieldName="cd.middleName"/>

<s:fielderror fieldName="cd.lastName"/>
</div>
<ul>
<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Gender
<li>
	<s:radio   cssClass="field text ln" name="cd.gender" value="%{ad_temp.userDetail.contactDetail.gender}" list="#{'1':'Male','2':'Female'}"></s:radio>
 </li>
</label>

</li>
<li class="date notranslate">
<label class="desc" >
Date of Birth
</label>

<div>
<s:textfield cssClass="field text ln" id="jQueryDatePicker2" value="%{ad_temp.userDetail.contactDetail.birthDate}" name="cd.birthDate" />

<div id="fieldError" ><s:fielderror fieldName="cd.birthDate"/></div>
</li>


<li id="foli16" class="complex notranslate      ">

<label class="desc" id="title16" for="Field16">
Address
</label>
<div>
<span class="full addr1">
<s:textfield id="Field16" name="cd.address" cssClass="field text addr" value="%{ad_temp.userDetail.contactDetail.address}"  />
<label for="Field16">Street Address</label>
</span>
</div>
</li>
<ul>
<li id="foli0" class="notranslate      ">

<span>
<s:textfield id="Field0" name="cd.city"  cssClass="field text fn" value="%{ad_temp.userDetail.contactDetail.city}" size="14" />
<label for="Field0">City</label>
</span>
<div id="fieldError" ><s:fielderror fieldName="cd.city"/></div>
<span>
<s:textfield id="Field1" name="cd.state"  cssClass="field text ln" value="%{ad_temp.userDetail.contactDetail.state}" size="34"  />
<label for="Field1">State</label>
</span>

<div id="fieldError" ><s:fielderror fieldName="cd.state"/></div>
<span>
<s:textfield id="Field1" name="cd.pincode"  cssClass="field text ln" value="%{ad_temp.userDetail.contactDetail.pincode}" size="24"  />
<label for="Field1">Pincode</label>
</span>


</li>
</ul>
<label class="desc" id="title16" for="Field16">
Contact Details:
</label>
<ul>
<li id="foli0" class="notranslate      ">

<span>
<s:textfield id="Field0" name="cd.contactNo"  cssClass="field text fn" value="%{ad_temp.userDetail.contactDetail.contactNo}" size="14"  />
<label for="Field0" style="font-weight: bolder">Contact No.</label>
</span>
<div id="fieldError" ><s:fielderror fieldName="cd.contactNo"/></div>
<span>
<s:textfield id="Field1" name="cd.emailId" type="text" cssClass="field text ln" value="%{ad_temp.userDetail.contactDetail.emailId}" size="34"  />
<label for="Field1" style="font-weight: bolder">Email ID</label>
</span>
</li>
</ul>

</li>

<li>



<header id="header" class="info">
<h2><font color="#900000">Account Information</font></h2>
</header>
<li id="foli2" class="notranslate">
<label class="desc">
Assign Username
</label>
<s:textfield id="Field1" name="ad.login" type="text" cssClass="field text ln" value="%{ad_temp.login}" size="20"  />

</li>


<div id="fieldError" ><s:fielderror fieldName="ad.login"/></div>


<li id="foli2" class="notranslate">
<label class="desc">
Assign Password:
</label>
<s:textfield id="Field1" name="ad.password" type="text" cssClass="field text ln" value="%{ad_temp.password}" size="20"  />

</li>

<div id="fieldError" ><s:fielderror fieldName="ad.password"/></div>


<header id="header" class="info">
<h2><font color="#900000">Job Information</font></h2>
</header>

<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Is Donor:

	<s:radio    name="ud.isDonor" list="#{'Normal':'no','Donor':'yes'}" value="%{ad_temp.userDetail.isDonor}"
	></s:radio>
 
</label>
</li>


 

<li class="buttons ">
<div>

                    <s:submit value="Register" /></div>
</li>


</s:form> 

</div>
              
    
    
    
   
</body>