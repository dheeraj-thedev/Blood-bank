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

			         
           
         <s:url id="event" action="Listevents"/>
			         <s:url id="bootle_test" action="BottleTest"/>
			         <s:url id="editUrl" action="FillDonor_event"/>
			         <s:url id="showInventory" action="showBottles"/>
			         <s:url id="Admin_showdonor" action="showalldonor"/>
            <li><a href="addDonorDetail.jsp">Create New Donor</a></li>
            <li><a href="reportgenerate.jsp">Generate Report of Donor</a></li>
                    <li><s:a href="%{bootle_test}">Add Bottle's Test Detail</s:a></li>
            <li><a href="staff_create_issue.jsp">Create Blood Issue Detail</a></li>
            <li><s:a href="%{showInventory}">Manage Blood Stock </s:a></li>
            <li><s:a href="%{Admin_showdonor}">List of Donors</s:a></li>
            <li><s:a href="showissuedetail.jsp">List of Customers </s:a></li>
			
            <li><s:a href="%{event}">List of Events</s:a></li>
            <li><s:a href="%{editUrl}">Enter Detail of Direct Donor</s:a></li>    
          </ul>
        </div>
                   </div>
                    