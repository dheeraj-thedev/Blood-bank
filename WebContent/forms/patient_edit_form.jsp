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
<script type="text/javascript" src="js/city_state.js"></script>
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

	<style type="text/css"> 
		
			

			#tabs, #ui-datepicker-div, .ui-datepicker{ font-size: 100%; }
			.clear{ clear: both; }
			
			.example-container{}
			.example-container input{ border: solid 1px #aaa; padding: 4px; width: 175px; }
		</style> 
		
		<link rel="stylesheet" media="all" type="text/css" href="css/jquery-ui-timepicker-addon.css" />
		
		<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-timepicker-addon.js"></script>
		<script type="text/javascript" src="js/jquery-ui-sliderAccess.js"></script>
		<script type="text/javascript">
			
			$(function(){
				$('#basic_example_1').datetimepicker({ minDate: "-12M", maxDate: "-D"  });
		
				$('.example-container > pre').each(function(i){
					eval($(this).text());
				});
			});
			
		</script>

</head>
<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">
<header id="header" class="info">
<h2><font color="#900000">Issue Information</font></h2>
<div></div>
<header>
<s:form id="form2"  theme="simple" method="post" action="edit_patient_form" >
<header id="header" class="info">
<h2><font color="#900000">Personal Information</font></h2>
<div></div>
<header>
<ul>

<s:hidden name="id.issueId" value="%{id_temp.issueId}"/>
<s:hidden name="pd.patientId" value="%{id_temp.patientDetail.patientId}"/>
<s:hidden name="cd.contactId" value="%{id_temp.patientDetail.contactDetail.contactId}"/>
<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Name
</label>
<span>
<s:textfield id="Field0" name="cd.firstName"  cssClass="field text fn" value="%{id_temp.patientDetail.contactDetail.firstName}" size="14"  />
<label for="Field0">First</label>
</span>
<span>
<s:textfield id="Field1" name="cd.middleName"  cssClass="field text ln" value="%{id_temp.patientDetail.contactDetail.middleName}" size="34"  />
<label for="Field1">Middle</label>
</span>
<span>
<s:textfield id="Field1" name="cd.lastName"  cssClass="field text ln" value="%{id_temp.patientDetail.contactDetail.lastName}" size="24"  />
<label for="Field1">Last</label>
</span>
</li>

<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Gender
<li>
	<s:radio   cssClass="field text ln" name="cd.gender" list="#{'Male':'Male','Female':'Female'}"
	 value="%{id_temp.patientDetail.contactDetail.gender}"></s:radio>
 </li>
</label>

</li>
<li>
<label class="desc" >
Date of Birth
</label>
<div>
<s:textfield cssClass="field text ln" id="jQueryDatePicker2" value="%{id_temp.patientDetail.contactDetail.birthDate}" name="cd.birthDate" />
</div>
</li>


<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">

</label>
<span>
<select onchange="set_country(this,country,city_state)" size="1" name="region">
<option value="India" selected="selected">--SELECT COUNTRY--</option>
<option value=""></option>
<script type="text/javascript">
setRegions(this);
</script>
</select>
<label for="Field0">Country</label>
</span>
<span>

<select name="country" size="1" disabled="disabled"  onchange="set_city_state(this,city_state)"></select>
<label for="Field0">State</label>
</span>
<span>

<select name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select>
<label for="Field1">City</label>
</span>


<div id="txtregion" ></div>
<div id="txtplacename"></div>
<div id="fieldError" >
<s:fielderror fieldName="country"/>
<s:fielderror fieldName="city_state"/>
</div>
</li>
<li>
<div id="fieldError" ><s:fielderror fieldName="cd.state"/></div>
<label class="desc" id="title16" for="Field16">
Contact Details:
</label>
<ul>
<li id="foli0" class="notranslate      ">

<span>
<s:textfield id="Field0" name="cd.contactNo"  cssClass="field text fn" value="%{id_temp.patientDetail.contactDetail.contactNo}" size="14"  />
<label for="Field0" style="font-weight: bolder">Contact No.</label>
</span>
<span>
<s:textfield id="Field1" name="cd.emailId" type="text" cssClass="field text ln" value="%{id_temp.patientDetail.contactDetail.emailId}" size="34"  />
<label for="Field1" style="font-weight: bolder">Email ID</label>
</span>
</li>
<li class="date notranslate">
<label class="desc" >
Issue Date and Time
</label>
<div class="example-container">
						
						<div>
					 		<s:textfield  name="id.issueDate" value="%{id_temp.issueDate}" id="basic_example_1"  />
						</div>	
						
						<s:fielderror fieldName="id.issueDate"/>

</li>	
<label class="desc">
Select Blood Group:
</label>
<li id="foli2" class="date notranslate">
<s:select  cssClass="field text ln"   name="id.bloodGroup" value="%{id_temp.bloodGroup}" headerKey="1"
		headerValue="-BG-" list="{'o-','o+','A-','A+','B-','B+','AB-','AB+'}"></s:select>
</li>
<label class="desc">
No. Of Bottles:
</label>
<s:textfield id="Field1" name="id.noOfBottles" cssClass="field text ln" value="%{id_temp.noOfBottles}" size="3"  />


<label class="desc">
Doctor Details:
</label>
<s:textfield id="Field1" name="pd.doctorDetails" value="%{id_temp.patientDetail.doctorDetails}"  cssClass="field text ln" size="25"  />

</li>
<label class="desc">
Hospital Details:
</label>
<s:textfield id="Field1" name="pd.hospitalDetails" value="%{id_temp.patientDetail.hospitalDetails}"  cssClass="field text ln" size="25"  />

</li>
</ul>
<s:submit value="Register" />
</s:form>
</div>
</body>
</html>
