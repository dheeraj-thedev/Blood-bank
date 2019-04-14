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
<style type="text/css">
.style1 {
	text-align: left;
}
.style2 {
	text-align: left;
	color: #0000FF;
}
.style3 {
	color: #0000FF;
}
.style4 {
	color: #FF0000;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
//called when key is pressed in textbox
$("#inputString").keypress(function (e)
{
$("#error").hide();
$("#autoSuggestionsList").hide();
//if the letter is not digit then display error and don't type anything
if( e.which!=8 && e.which!=0 && (e.which<48 || e.which>57)&& (e.which<65 || e.which>90)&& (e.which<97 || e.which>122))
{
//display error message
$("#error").html("No Special Characters.Only number & alphabets").show();
return false;
}
});}); 
function lookup(inputString) {
if(inputString.length <5) {
$('#suggestions').show();
$('#autoSuggestionsList').hide();
} else {
$('#suggestions').hide();
$.post("CheckUsername.jsp",{user: ""+inputString+""},function(data){
$('#autoSuggestionsList').html(data).show();
});
}
}

</script>
<script>

$(document).ready(function(){
  $("input[name$='ud.isDonor']").click(function(){
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
</head>
<body id="public" >
<div id="container" class="ltr" style="width:700px; background-color:ghostWhite">


<s:form theme="simple" method="post" action="RegisterUser" >

<header id="header" class="info">
<h2><font color="#900000">Personal Information</font></h2>
<div></div>
<header>

<ul>
  <font color="red">
                         <s:if test="str=='exist_uname'">
	                <s:label id="msg"  value="*****Username already Exists..please choose another usernamU"></s:label>
	                </s:if>
	                </font>
<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Name
</label>
<span>
<s:textfield id="Field0" name="cd.firstName"  cssClass="field text fn" value="" size="14"  />
<label for="Field0">First</label>
</span>
<span>
<s:textfield id="Field1" name="cd.middleName"  cssClass="field text ln" value="" size="34"  />
<label for="Field1">Middle</label>
</span>
<span>
<s:textfield id="Field1" name="cd.lastName"  cssClass="field text ln" value="" size="24"  />
<label for="Field1">Last</label>
</span>
</li>
<div id="fieldError">
<s:fielderror fieldName="cd.firstName"/>

<s:fielderror fieldName="cd.middleName"/>

<s:fielderror fieldName="cd.lastName"/>
</div>

<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Gender
<li>
	<s:radio   cssClass="field text ln" name="cd.gender" list="#{'1':'Male','2':'Female'}"
	 value="1"></s:radio>
 </li>
</label>

</li>
<li class="date notranslate">
<label class="desc" >
Date of Birth
</label>
<div>
<s:textfield cssClass="field text ln" id="jQueryDatePicker2" name="cd.birthDate" />
</div>

</li>
<div id="fieldError" ><s:fielderror fieldName="cd.birthDate"/></div>
<li id="foli16" class="complex notranslate      ">

<label class="desc" id="title16" for="Field16">
Address
</label>
<div>
<span class="full addr1">
<s:textfield id="Field16" name="cd.address" cssClass="field text addr" value=""  />
<label for="Field16">Street Address</label>
</span>
</div>
</li>
<ul>
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
<label class="desc" id="title16" for="Field16">
Contact Details:
</label>
<ul>
<li id="foli0" class="notranslate      ">

<span>
<s:textfield id="Field0" name="cd.contactNo"  cssClass="field text fn" value="" size="14"  />
<label for="Field0" style="font-weight: bolder">Contact No.</label>
</span>

<div id="fieldError" ><s:fielderror fieldName="cd.contactNo"/></div>
<span>
<s:textfield id="Field1" name="cd.emailId" type="text" cssClass="field text ln" value="" size="34"  />
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
<s:textfield id="inputString" name="ad.login"  onkeyup="lookup(this.value);"  cssClass="field text ln" value="" size="20"  />

</li>
<div id="suggestions" style="display: none;">Value must be greater than 4 characters</div>
<font color="red">
<div style="display: none;" id="autoSuggestionsList"></div>

<div style="display: none;" id="error"></div>
</font>
<div id="fieldError" ><s:fielderror fieldName="ad.login"/></div>
<li id="foli2" class="notranslate">
<label class="desc">
Assign Password:
</label>
<s:textfield id="Field1" name="ad.password"  cssClass="field text ln" value="" size="20"  />

</li>
<div id="fieldError" ><s:fielderror fieldName="ad.password"/></div>




<header id="header" class="info">
<h2><font color="#900000">User Creation Information</font></h2>
</header>

<li id="foli2" class="date notranslate">
<label class="desc" id="title2" for="Field2">
Creation Date
</label>
<span>
<s:textfield type="text" cssClass="field text ln" id="jQueryDatePicker1" name="ud.creationDate"  />
</li>
<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Is Donor:
</label>
	    <label>
      <input type="radio" name="ud.isDonor" value="no" id="type_0" checked="checked" />
      no
      </label>
    <label>
      <input type="radio" name="ud.isDonor" value="yes" id="type_1"  />
      yes</label>
      <div id="1">
      Enter Donor Unique key
      <s:textfield id="Field1"  name="dd.donorRandomId" maxLength="7" cssClass="field text ln"  size="7"  />
      <font color="red">(Please enter 7 digit unique key which was given as a donor)</font>
      </div>
 

</li>
 

<li class="buttons ">
<div>

                    <s:submit value="Register" /></div>
                  
</li>


</s:form> 

</div>
              
    
    
    
   
</body>