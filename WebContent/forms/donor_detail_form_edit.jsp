<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script>

$(document).ready(function(){
  $("input[name$='type']").click(function(){
  var value = $(this).val();
  if(value=='yes') {
    $("#1").show();
     $("#2").hide();
  }
  else if(value=='no') {
   $("#2").show();
    $("#1").hide();
   }
  });
  $("#2").show();
  $("#1").hide();
});

</script>

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
$(
		function()
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


 
<s:form theme="simple" method="post" action="RegisterDonor" >

<s:hidden name="dd.donorId" value="%{dd.donorId}"/>
<s:hidden name="dd.donorRandomId" value="%{dd.donorRandomId}"/>
<s:hidden name="dd.donatedTimes" value="%{dd.donatedTimes}"/>
<s:hidden name="cd.contactId" value="%{dd.contactDetail.contactId}"/>
<header id="header" class="info">
<h2><font color="#900000">Personal Information</font></h2>
<div></div>
<header>

<ul>
<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Name
</label>
<span>
<s:textfield id="Field0" name="cd.firstName"  cssClass="field text fn" value="%{dd.contactDetail.firstName}" size="14"  />
<label for="Field0">First</label>
</span>
<span>
<s:textfield id="Field1" name="cd.middleName"  cssClass="field text ln" value="%{dd.contactDetail.middleName}" size="34"  />
<label for="Field1">Middle</label>
</span>
<span>
<s:textfield id="Field1" name="cd.lastName"  cssClass="field text ln" value="%{dd.contactDetail.lastName}" size="24"  />
<label for="Field1">Last</label>
</span>
</li>

<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Gender
<li>
	<s:radio   cssClass="field text ln" name="cd.gender" list="#{'Male':'Male','Female':'Female'}"
	 value="%{dd.contactDetail.gender}"></s:radio>
 </li>
</label>

</li>
<li>
<label class="desc" >
Date of Birth
</label>
<div>
<s:textfield cssClass="field text ln" id="jQueryDatePicker2" value="%{dd.contactDetail.birthDate}" name="cd.birthDate" />
</div>
</li>


<li id="foli16" class="complex notranslate      ">

<label class="desc" id="title16" for="Field16">
Address
</label>
<div>
<span class="full addr1">
<s:textfield id="Field16" name="cd.address" cssClass="field text addr" value="%{dd.contactDetail.address}"  />
<label for="Field16">Street Address</label>
</span>
</div>
</li>
</ul>
<ul>
<li id="foli0" class="notranslate      ">

<span>
<s:textfield id="Field0" name="cd.city"   cssClass="field text fn" value="%{dd.contactDetail.city}" size="14" />
<label for="Field0">City</label>
</span>
<span>
<s:textfield id="Field1" name="cd.state" type="text" cssClass="field text ln" value="%{dd.contactDetail.state}" size="34"  />
<label for="Field1">State</label>
</span>
<span>
<s:textfield id="Field1" name="cd.pincode" type="text" cssClass="field text ln" value="%{dd.contactDetail.pincode}" size="24"  />
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
<s:textfield id="Field0" name="cd.contactNo"  cssClass="field text fn" value="%{dd.contactDetail.contactNo}" size="14"  />
<label for="Field0" style="font-weight: bolder">Contact No.</label>
</span>
<span>
<s:textfield id="Field1" name="cd.emailId" type="text" cssClass="field text ln" value="%{dd.contactDetail.emailId}" size="34"  />
<label for="Field1" style="font-weight: bolder">Email ID</label>
</span>
</li>
</ul>

</li>






<header id="header" class="info">
<h2><font color="#900000">Blood Information</font></h2>
</header>
<label class="desc">
Select Blood Group:
</label>
<ul>
<li id="foli2" class="date notranslate">
<s:select theme="simple" onselect="disable" cssClass="field text ln" value="%{dd.bloodGroup}"  name="dd.bloodGroup" headerKey="1"
		headerValue="-BG-" list="{'o-','o+','A-','A+','B-','B+','AB-','AB+'}"></s:select>
</li>

<li id="foli2" class="date notranslate">

<label class="desc" id="title2" for="Field2">
Date of Donation
</label>
<span>
<s:textfield type="text" cssClass="field text ln"id="jQueryDatePicker1" value="%{dd.donationDate}" name="dd.donationDate"  />
</li>
</span>
<!--<li id="foli2" class="date notranslate">
<label class="desc">
Donated Times:
</label>
<s:textfield id="Field1" name="dd.donatedTimes" type="text" cssClass="field text ln" value="" size="3"  />

</li>

-->
<!--<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Is Special Donor:

	<s:radio    name="dd.isSpecialDonor" list="#{'1':'no','2':'yes'}"
	 value="1"></s:radio>
 
</label>
</li>


-->
</li> 
</ul>
<ul>
<li id="foli0" class="notranslate      ">
<label class="desc" id="title2" for="Field2">
Health Information:
</label>
<span>
<s:textfield id="Field0" name="dd.weight"   cssClass="field text fn" value="%{dd.weight}" size="10" />
<label for="Field0">Weight</label>
</span>
<span>
<s:textfield id="Field1" name="dd.bloodPressure" type="text" cssClass="field text ln" value="%{dd.bloodPressure}" size="14"  />
<label for="Field1">Blood Pressure</label>
</span>
<span>
<s:textfield id="Field1" name="dd.pulse" type="text" cssClass="field text ln" value="%{dd.pulse}" size="14"  />
<label for="Field1">Pulse</label>
</span>
<span>
<s:textfield id="Field1" name="dd.hemoglobin" type="text" cssClass="field text ln" value="%{dd.hemoglobin}" size="14"  />
<label for="Field1">Hemoglobin</label>
</span>
</li>
</ul>

<button>
                    <s:submit   value=" Register " />
                    </button>



</s:form> 


</div>
              
    
    
    
   
</body>