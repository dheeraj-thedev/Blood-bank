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
<h2 class="heading colr">About Blood</h2>
<div style="font-size:12px">
<p class="txt">
  
    
    <br/>4.5 million&nbsp;Americans will a need blood transfusion each year.<br/>
    <br/>43,000 pints: amount of donated blood used each day in the U.S. and Canada.<br/>
    <br/>Someone needs blood every two seconds.<br/>
    <br/>Only 37 percent of the U.S. population is eligible to donate blood &ndash; less than 10 percent do annually.**<br/>
    <br/>About 1 in 7 people entering a hospital need blood.<br/>
    <br/>One pint of blood can save up to three lives.<br/>
    <br/>Healthy adults who are at least 17 years old, and at least 110 pounds may donate about a pint of blood &ndash; the most common form of donation &ndash; every 56 days, or every two months. Females receive 53 percent of blood transfusions; males receive 47 percent.<br/>
    <br/>94 percent of blood donors are registered voters.<br/>
    <br/>Four main red blood cell types: A, B, AB and O. Each can be positive or negative for the Rh factor. AB is the universal recipient; O negative is the universal donor of red blood cells.<br/>
    <br/>Dr. Karl Landsteiner first identified the major human blood groups &ndash; A, B, AB and O &ndash; in 1901.<br/>
    <br/>One unit of blood can be separated into several components: red blood cells, plasma, platelets and cryoprecipitate.<br/>
    <br/>Red blood cells carry oxygen to the body's organs and tissues.<br/>
    <br/>Red blood cells live about 120 days in the circulatory system.<br/>
    <br/>Platelets promote blood clotting and give those with leukemia and other cancers a chance to live.<br/>
    <br/>Plasma is a pale yellow mixture of water, proteins and salts.<br/>
    <br/>Plasma, which is 90 percent water, makes up 55 percent of blood volume.<br/>
    <br/>Healthy bone marrow makes a constant supply of red cells, plasma and platelets.<br/>
    <br/>Blood or plasma that comes from people who have been paid for it cannot be used to human transfusion.<br/>
    <br/>Granulocytes, a type of white blood cell, roll along blood vessel walls in search of bacteria to engulf and destroy.<br/>
    <br/>White cells are the body's primary defense against infection.<br/>
    <br/>Apheresis is a special kind of blood donation that allows a donor to give specific blood components, such as platelets.<br/>
    <br/>Forty-two&nbsp;days: how long most donated red blood cells can be stored.<br/>
    <br/>Five days: how long most donated platelets can be stored.<br/>
    <br/>One year: how long frozen plasma can be stored.<br/>
    <br/>Much of today's medical care depends on a steady supply of blood from healthy donors.<br/>
    <br/>3&nbsp;pints: the average whole blood and red blood cell transfusion.*<br/>
    <br/>Children being treated for cancer, premature infants and children having heart surgery need blood and platelets from donors of all types, especially type O.<br/>
    <br/>Anemic patients need blood transfusions to increase their red blood cell levels.<br/>
    <br/>Cancer, transplant and trauma patients, and patients undergoing open-heart surgery may require platelet transfusions to survive.<br/>
    <br/>Sickle cell disease is an inherited disease that affects more than 80,000 people in the United States, 98 percent of whom are of African descent.<br/>
    <br/>Many patients with severe sickle cell disease receive blood transfusions every month.<br/>
    <br/>A patient could be forced to pass up a lifesaving organ, if compatible blood is not available to support the transplant.<br/>
    <br/>Thirteen tests (11 for infectious diseases) are performed on each unit of donated blood.<br/>
    <br/>17 percent of non-donors cite &quot;never thought about it&quot; as the main reason for not giving, while 15 percent say they're too busy.<br/>
    <br/>The #1 reason blood donors say they give is because they &quot;want to help others.&quot;<br/>
    <br/>Shortages of all blood types happen during the summer and winter holidays.<br/>
    <br/>Blood centers often run short of types O and B red blood cells.<br/>
    <br/>The rarest blood type is the one not on the shelf when it's needed by a patient.<br/>
    <br/>There is no substitute for human blood.<br/>
    <br/>If all blood donors gave three times a year, blood shortages would be a rare event (The current average is about two.).<br/>
    <br/>If only one more percent of all Americans would give blood, blood shortages would disappear for the foreseeable future.<br/>
    <br/>46.5 gallons: amount of blood you could donate if you begin at age 17 and donate every 56 days until you reach 79 years old.<br/>
    <br/>Four easy steps to donate blood: medical history, quick physical, donation and snacks.<br/>
    <br/>The actual blood donation usually takes about 10 minutes. The entire process &ndash; from the time you sign in to the time you leave &ndash; takes about an hour.<br/>
    <br/>After donating blood, you replace the fluid in hours and the red blood cells within four weeks. It takes eight weeks to restore the iron lost after donating.<br/>
    <br/>You cannot get AIDS or any other infectious disease by donating blood.<br/>
    <br/>10 pints: amount of blood in the body of an average adult.<br/>
    <br/>One unit of whole blood is roughly the equivalent of one pint.<br/>
    <br/>Blood makes up about 7 percent of your body's weight.<br/>
    <br/>A newborn baby has about one cup of blood in his body.<br/>
    <br/>Giving blood will not decrease your strength.<br/>
    <br/>Any company, community organization, place of worship or individual may contact their local community blood center to host a blood drive.<br/>
    <br/>Blood drives hosted by companies, schools, places of worship and civic organizations supply roughly half of all blood donations across the U.S.<br/>
    <br/>People who donate blood are volunteers and are not paid for their donation.<br/>
    <br/>500,000: the number of Americans who donated blood in the days following the September 11 attacks.<br/>
    <br/><strong class="highlight">Blood donation. It's about an hour of your time. </strong><span class="about">It's About</span> <span class="life">Life.</span><br/>


</p>

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