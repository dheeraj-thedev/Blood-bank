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

			         
           
         
			         <s:url id="Admin_func" action="adminwork"/>
			          <s:url id="cre_eve" action="createevent_admin"/>
			         <s:url id="Admin_showstaff" action="showstaff"/>
			         <s:url id="Admin_showdonor" action="showalldonor"/>
			         <s:url id="event" action="Showevents"/>
           <li><s:a href="%{Admin_func}">Create New staff member</s:a></li>
            <li><s:a href="%{Admin_showstaff}">List of all staff </s:a></li>
                    <li><s:a href="%{cre_eve}">Create New Event</s:a></li>
            <li><s:a href="%{event}">List of Events</s:a></li>
                        
          </ul>
        </div>
                   </div>
