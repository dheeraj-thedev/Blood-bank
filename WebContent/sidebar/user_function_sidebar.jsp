 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>

 <div class="sidebar" >
                         <div class="gadget">


<ul class="sb_menu" style="
    width: 215px;
    padding-bottom: 15px;
    padding-top: 15px;
    padding-left: 15px;
    padding-right: 0px;">

			         
           
         
			         <s:url id="User_func" action="Userdetail"/>
			         <s:url id="Admin_showstaff" action="showstaff"/>
           <li><s:a href="%{User_func}">Edit My Detail</s:a></li>
           
                    <li><s:a href="%{Admin_func3}">View Event Summary</s:a></li>
            <li><s:a href="user_view_report.jsp">View my reports</s:a></li><!--
            <li><s:a href="%{Admin_func4}">List of Customers </s:a></li>
          --></ul>
        </div>
                   </div>