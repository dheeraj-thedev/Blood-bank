<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Life Line Blood Bank</title>
<link rel="stylesheet" href="css/sidebar.css" type="text/css">
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
</head>

<body class="bgone" onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">

<div id="wrapper_sec">


<div id="contentsec_member">
<div class="prod_detail">
<s:if test="#session.UserType == 'Staff'"> 
<div class="col3">


                <div class="comments">
				<div style="position:relative;width:960;height=800;">
				
   
         
            	<h2 class="heading colr"><font size="1" >Welcome</font>
            	<s:property value="#session.UserName"/>
                
                    	  </div>
            <!--<div class="clear"></div>
            --></div>
    <%@include file="sidebar/staff_function_sidebar.jsp"%>        
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; float: right;margin-top: 60px;
margin-right: 10px;">
	                
         </div>

</div>
</s:if>
<s:if test="#session.UserType == 'User'">
<div class="col3">


                <div class="comments">
				<div style="position:relative;width:960;height=800;">
				
   
         
            	<h2 class="heading colr"><font size="1" >Welcome </font>, <s:property value="#session.UserName"/></h2>
                
                    	  </div>
            <!--<div class="clear"></div>
            --></div>
            <%@include file="sidebar/user_function_sidebar.jsp"%> 
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; float: right;margin-top: 60px;
margin-right: 10px;">
	                           
        
         </div>

</div>
</s:if>
<s:if test="#session.UserType == 'Admin'">
<div class="col3">


                <div class="comments">
				<div style="position:relative;width:960;height=800;">
				
   
         
            	<h2 class="heading colr"><font size="1" >Welcome </font>,
            	
            	<s:property value="#session.UserName"/>
            	</h2>
                
                    	  </div>
                    	  
                    	  
           </div>
            <%@include file="sidebar/admin_function_sidebar.jsp"%>
            
            
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; float: right;margin-top: 60px;
margin-right: 10px;"><!--
   <s:if test="str=='Staff'">
	                <%@include file="forms/staff_detail_form.jsp"%>
	                </s:if>
	                 <s:if test="str=='registered_staff'">
	                <s:label value="You Registered Staff Member Successfully "></s:label>
	                </s:if>
         --></div>

</div>
</s:if>
</div>


</div>
</body>
</html>


   <!--<s:if test="%{#session.user.userType} == 'staff'"></s:if>-->