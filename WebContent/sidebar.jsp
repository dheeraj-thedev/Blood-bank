	  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.List"%>
<%@page import="com.bloodbank.model.EventDetail"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.bloodbank.dao.EventDetailDao"%> 
<%@taglib uri="/struts-tags" prefix="k"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.bloodbank.dao.impl.EventDetailDaoImpl"%><html>
<head>
<script type="text/css">
.alert {
    background-color: #c4453c;
    color: #f6f6f6;
    display: block;
    font: bold 16px/40px sans-serif;
    height: 40px;
    position: absolute;
    text-align: center;
    text-decoration: none;
    top: -45px;
    width: 100%;
}
</script>		
		
		
</head><body>
	   <div class="col4" >
	        	<!-- Select Categories -->
            	<div class="rightnavi" style="height: 300px;">
                	<h5 class="small_head colr">Events</h5>
                    	  <div id="scroll colr">
<marquee direction="up" scrolldelay="90" scrollamount="4" behavior="scroll" loop="10"  style=width:300px;height:240px id="Marquee1" onmouseover="this.stop()" onmouseout="this.start()">

<p class="txt">
<span style="font-family:Arial;font-size:13px;">
<%
				List<EventDetail> list;
				EventDetailDao dao = new EventDetailDaoImpl();
				list = dao.getAllEventDetails();
				Iterator<EventDetail> it=list.iterator();
				while(it.hasNext())
				{
					EventDetail ed=it.next();
					%>
					<a href="#" class="alert"  onclick="return alert('<%=ed.getEventTitle() + " :-> " + ed.getEventDescription() + " , " + ed.getEventVanue()%>')"><%=ed.getEventTitle() %><br><%=ed.getEventVanue() %></a><font color="red"><%=ed.getEventDate() %></font></span><br/><img height="1px" width="100%" src="images/black.png"/>
								
							<% 
				}
			%>

<!--<k:if test="str=='eventlist'">
<k:iterator value="eventList" status="stat">
<k:url id="seeevent" action="ShowEvent">
						<k:param name="eventid" value="%{eventId}" />
					</k:url> 
					<k:a href="%{seeevent}">
					

<k:property value="eventTitle"/> <br>
<k:property value="eventDescription"/>

<font color="red"><k:property value="eventDate"/></font><br><img height="1px" width="100%" src="images/black.png"/>
</k:a>
</k:iterator>
</k:if>

--></p>
</span>
</marquee>

</div>
					<!--ul>
                    	<li><a href="#">Ut sagittis ultrices urna eget</a></li>
                        <li><a href="#">Neque porro quisquam</a></li>
                        <li><a href="#">Nam libero tempore, cunobis</a></li>
                        <li><a href="#">Magna suspendisse eleid at nulla</a></li>
                        <li><a href="#">Etiam placerat ipsum popsum</a></li>
                    </ul-->
                </div>
				<h5 class="small_head"></h5>
                <!-- Browse Archive -->
                <div class="rightnavi">
               <fb:like-box href="www.facebook.com/lifelineblood1" width="292" height="500" show_faces="true" stream="true" border_color="grey" header="true"></fb:like-box> </div>
                <h5 class="small_head"></h5>
            	<div class="rightnavi">
                	<h5 class="small_head colr">Information About Blood</h5>
                    <ul>
                    	<li><a href="availability.jsp">About Blood Types</a></li>
                    	<li><a href="donatedblood.jsps">How Donated Blood Is Used ??</a></li>
                        <li><a href="about_blood.jsp">Some Facts About Blood</a></li>
                        <li><a href="first_time_donor.jsp">First Time Donor ??</a></li>
                       <!--  <li><a href="#">Magna suspendisse eleid at nulla</a></li>
                        <li><a href="#">Etiam placerat ipsum popsum</a></li> -->
                    </ul>
                </div>
                <div class="clear"></div>
                <!-- Advertisment >
             
            </div-->
			
			</div>
			</body>