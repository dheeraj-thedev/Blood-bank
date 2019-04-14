<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="java.util.List"%>
<%@page import="com.bloodbank.model.AccountDetail"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.bloodbank.dao.ContactDetailDao"%> 
<%@page import="com.bloodbank.dao.impl.ContactDetailDaoImpl"%>
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


<s:form theme="simple" method="post" action="RegisterEvent" >

<header id="header" class="info">
<h2><font color="#900000">Event Information</font></h2>
<div></div>
<header>

<ul>
<s:hidden name="ed.eventId"/>

<li id="foli16" class="complex notranslate      ">

<label class="desc" id="title16" for="Field16">
Event
</label>
<div>
<span class="full addr1">
<s:textfield id="Field16" name="ed.eventTitle" cssClass="field text addr" />
<label for="Field16">Title</label>
</span>
<s:fielderror fieldName="ed.eventTitle"/>
<span class="full addr1">
<s:textfield id="Field16" name="ed.eventDescription" cssClass="field text addr"  />
<label for="Field16">Description</label>
</span>
<s:fielderror fieldName="ed.eventDescription"/>
<span class="full addr1">
<s:textfield id="Field16" name="ed.eventVanue" cssClass="field text addr" />
<label for="Field16">Venue</label>
</span>
<s:fielderror fieldName="ed.eventVanue"/>
</div>
</li>

<li class="date notranslate">
<label class="desc" >
Event Date and Time
</label>

						
						<div>
					 		<s:textfield  name="ed.eventDate" value="%{ed_temp.eventDate}" id="basic_example_1"  />
						</div>	
						
						<s:fielderror fieldName="ed.eventDate"/>
						<li class="date notranslate">
<label class="desc" >
Select Staff
</label>			

<select name="sel1" size="10" multiple="multiple" style=" width: 150px; height: 200px; ">
		<% 
				List<AccountDetail> staffList;
				ContactDetailDao dao = new ContactDetailDaoImpl();
				staffList = dao.getAllStaffs();
				Iterator<AccountDetail> it=staffList.iterator();
				while(it.hasNext())
				{
					AccountDetail ad=it.next();
					%>
			
			<option value="<%=ad.getStaffDetail().getStaffId()%>"><%=ad.getStaffDetail().getContactDetail().getFirstName()%>  
			<%=ad.getStaffDetail().getContactDetail().getLastName()%></option>
			<%
				}
				%>
				
				</select>
<button>
                    <s:submit value="  Register  " />
</button>

					
					
</li>


</s:form> 

</div>
              
    
    
    
   
</body>