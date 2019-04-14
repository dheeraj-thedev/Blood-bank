<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Life Line Blood Bank</title>
<link rel="stylesheet" href="css/sidebar.css" type="text/css">
<script type="text/javascript" >
function blink(selector){
$(selector).fadeOut('slow', function(){
$(this).fadeIn('slow', function(){
blink(this);
});
});
}

blink('#msg');
</script>
<style type="text/css">
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
</style>
</head>

<body class="bgone">
<div id="wrapper_sec">
<%@include file="/css_js.jsp"%>
<%@include file="/header_after_login.jsp"%>
<%@include file="/navigation.jsp"%>
<div id="contentsec_member">
<div class="prod_detail">
<div class="col3">


                <div class="comments">
				<div style="position:relative;width:960;height=800;">
				
   
         
            	<h2 class="heading colr"><font size="1" >Welcome </font>,
            	
            	<s:property value="#session.UserName"/>
            	</h2>
                
                    	  </div>
                    	  
                    	  
           </div>
            <%@include file="/sidebar/staff_function_sidebar.jsp"%>
            
            
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; padding-left:30%; margin-top: 60px;
">

<font color="red">
     <s:if test="str=='updated_staff'">
	                <s:label id="msg"  value="You Updated Issue Detail Successfully "></s:label>
	                </s:if>
	         <s:if test="str=='hospital_registered'">
	                <s:label value="You Registered Issue Detail  for Hospital Successfully "></s:label>
	                </s:if>
	                 <s:if test="str=='patient_registered'">
	             <s:label value="You Registered Issue Detail  for Patient Successfully "></s:label>
	                </s:if>
	                 <s:if test="str=='donor_inserted'">
	             <s:label value="You Inserted Donor Detail Successfully "></s:label><br/>
	             Random key of this Donor:
	             <font size="15"><s:property value="#session.donorid"/></font>
	                </s:if>
	                    <s:if test="str=='donor_delete'">
	             <s:label value="You Deleted Donor Detail Successfully "></s:label>
	                </s:if>
	                <s:if test="str=='issue_deleted'">
	             <s:label value="You Deleted Issue Detail Successfully "></s:label>
	                </s:if>
	                
	                <s:if test="str=='event_donor_registered'">
	                <s:label value="You Registered Donor Detail in Event  Successfully "></s:label>
	                <br/>
	                <s:a href="event_donor.jsp">Enter Another Donor</s:a>
	                <br/>
	                <s:a href="Listevents.action">Enter in Another Event</s:a>
	                </s:if>
	                
	                  <s:if test="str=='test_registered'">
	             <s:label value="You Inserted Test Detail Successfully "></s:label>
	             <br/>
	                <s:a href="blood_bottle_test.jsp">Enter Another Test Detail</s:a>
	                <br/>
	           
	             
	                </s:if>
	                
	                </font>
	                
	              
	               
         </div>

</div>

</div>

<%@include file="/footer.jsp"%>

</div>
</body>
</html>