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

       
<s:form id="form1"  theme="simple" method="post" action="reg_hos" >

<s:hidden name="id.issueId" value="%{id_temp.issueId}"/>
<s:hidden name="hd.HId" value="%{id_temp.hospitalDetail.HId}"/>
<ul>


<li id="foli16" class="complex notranslate      ">

<label class="desc" id="title16" for="Field16">
Hospital
</label>
<div>
<span class="full addr1">
<s:textfield id="Field16" name="hd.HName" value="%{id_temp.hospitalDetail.HName}" cssClass="field text addr" />
<label for="Field16">Name</label>
</span>
<s:fielderror fieldName="hd.HName"/>
<span class="full addr1">
<s:textfield id="Field16" name="hd.HAddress" value="%{id_temp.hospitalDetail.HAddress}" cssClass="field text addr"  />
<label for="Field16">Address</label>
</span>
<s:fielderror fieldName="hd.HAddress"/>


</div>
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
						<li id="foli2" class="date notranslate">
<label class="desc">
No. Of Bottles:
</label>
<s:textfield id="Field1" name="id.noOfBottles" value="%{id_temp.noOfBottles}" cssClass="field text ln" size="3"  />

</li>		
<li id="foli2" class="date notranslate">
<s:select  cssClass="field text ln"   name="id.bloodGroup" headerKey="1" value="%{id_temp.bloodGroup}"
		headerValue="-------SELECT Blood Group------" list="{'o-','o+','A-','A+','B-','B+','AB-','AB+'}"></s:select>
</li>		
<s:submit value="Register" />
</s:form>



 





</ul>

					</div>
					
</li>       
</div>
              
    
    
    
   
</body>
</html>