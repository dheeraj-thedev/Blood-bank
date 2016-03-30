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
<%@include file="css_js.jsp"%>
<%@include file="header_after_login.jsp"%>
<%@include file="navigation.jsp"%>
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
            <%@include file="sidebar/user_function_sidebar.jsp"%>
            
            
                   <div class="clear"></div>
                    <br/><br/><br/><br/>
         
             </div>
   	<div style="font-size: 15px; float: right;margin-top: 60px;
margin-right: 10px;">

	                <%@include file="forms/user_detail_form_edit.jsp"%>
	                
	               
         </div>

</div>

</div>

<%@include file="footer.jsp"%>

</div>
</body>
</html>


   <!--<s:if test="%{#session.user.userType} == 'staff'"></s:if>-->