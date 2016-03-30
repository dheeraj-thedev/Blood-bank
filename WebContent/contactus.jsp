<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@page import="java.util.List"%>
	<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Life Line Blood Bank</title>
</head>

<body class="bgone">
<div id="wrapper_sec"><%@include file="/css_js.jsp"%>
<%@include file="/css_js.jsp"%>
<s:if test="#session.tracker == 'true'"> 
<%@include
	file="header_after_login.jsp"%>
</s:if>
<s:else>
<s:include value="header.jsp"></s:include>
</s:else> <%@include
	file="/navigation.jsp"%>
<div id="contentsec">
<div class="prod_detail">
<div class="col3">


<div class="comments">
<div style="position: relative; width: 960;">
<h2 class="heading colr">Contact US</h2>
<div style="font-size:12px">
<div id="contentsec">
    	
        <div class="contact">
        	<div class="leftsec">
            	<ul>
                	<li class="mobile">
                    	<h6 class="colr">Customer Service</h6>
                        <p>1300 924 299</p>
                        <p>Direct: +9033108891</p>
                       <p>ghatlodia, Ahmedabad. </p>
                       <p>India 382481</p>
                       <p><b>Support us On Facebook</b></p>
                        <p><a href="http://www.facebook.com/lifelineblood1/">Click here</a></p>
                    </li>
                    <li class="mobile" style="width: auto;">
                     
            	<p class="txt">
                	
                </p>
                <h5 class="colr">Send Us Message</h5>
                <div class="formsec">
                <s:form action="contactus" theme="simple">
                	<s:textfield  value="Name" id="name" name="Name" onblur="if(this.value == '') { this.value = 'Name'; }" onfocus="if(this.value == 'Name') { this.value = ''; }" cssClass="bar" />
                    
                    <s:textfield value="Email" id="email" name="Email" onblur="if(this.value == '') { this.value = 'Email'; }" onfocus="if(this.value == 'Email') { this.value = ''; }" cssClass="bar" />
                    
                    <s:textarea name="message" cols="" rows="5">Message</s:textarea>
                    <s:submit/>
                    
                    </s:form>
                    
                    <div class="clear"></div>
                    
                </div>
        
                    </li>
                  
                </ul>
            </div>
           
        </div>
    </div>
    <div class="clear"></div>

</div>
</div>
<div class="clear"></div>
</div>

</div>
<%@include file="../sidebar.jsp"%></div>
</div>

<%@include file="../footer.jsp"%></div>
</body>
</html>