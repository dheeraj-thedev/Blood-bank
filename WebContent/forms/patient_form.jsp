<s:form id="form2"  theme="simple" method="post" action="reg_patient" >
<header id="header" class="info">
<h2><font color="#900000">Personal Information</font></h2>
<div></div>
<header>
<ul>
<s:hidden name="dd.donorId" value="%{dd.donorId}"/>
<s:hidden name="dd.bloodGroup" value="%{dd.bloodGroup}"/>
<s:hidden name="dd.donatedTimes" value="%{dd.donatedTimes}"/>
<s:hidden name="dd.donationDate" value="%{dd.donationDate}"/>
<s:hidden name="dd.donorRandomId" value="%{dd.donorRandomId}"/>
<s:hidden name="cd.contactId" value="%{dd.contactDetail.contactId}"/>

<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Name
</label>
<span>
<s:textfield id="Field0" name="cd.firstName"  cssClass="field text fn" value="%{dd.contactDetail.firstName}" size="14"  />
<label for="Field0">First</label>
</span>
<span>
<s:textfield id="Field1" name="cd.middleName"  cssClass="field text ln" value="%{dd.contactDetail.middleName}" size="34"  />
<label for="Field1">Middle</label>
</span>
<span>
<s:textfield id="Field1" name="cd.lastName"  cssClass="field text ln" value="%{dd.contactDetail.lastName}" size="24"  />
<label for="Field1">Last</label>
</span>
</li>

<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">
Gender
<li>
	<s:radio   cssClass="field text ln" name="cd.gender" list="#{'Male':'Male','Female':'Female'}"
	 value="%{dd.contactDetail.gender}"></s:radio>
 </li>
</label>

</li>
<li>
<label class="desc" >
Date of Birth
</label>
<div>
<s:textfield cssClass="field text ln" id="jQueryDatePicker2" value="%{dd.contactDetail.birthDate}" name="cd.birthDate" />
</div>
</li>


<li id="foli0" class="notranslate">
<label class="desc" id="title0" for="Field0">

</label>
<span>
<select onchange="set_country(this,country,city_state)" size="1" name="region">
<option value="India" selected="selected">--SELECT COUNTRY--</option>
<option value=""></option>
<script type="text/javascript">
setRegions(this);
</script>
</select>
<label for="Field0">Country</label>
</span>
<span>

<select name="country" size="1" disabled="disabled"  onchange="set_city_state(this,city_state)"></select>
<label for="Field0">State</label>
</span>
<span>

<select name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select>
<label for="Field1">City</label>
</span>


<div id="txtregion" ></div>
<div id="txtplacename"></div>
<div id="fieldError" >
<s:fielderror fieldName="country"/>
<s:fielderror fieldName="city_state"/>
</div>
</li>
<li>
<div id="fieldError" ><s:fielderror fieldName="cd.state"/></div>
<label class="desc" id="title16" for="Field16">
Contact Details:
</label>
<ul>
<li id="foli0" class="notranslate      ">

<span>
<s:textfield id="Field0" name="cd.contactNo"  cssClass="field text fn" value="%{dd.contactDetail.contactNo}" size="14"  />
<label for="Field0" style="font-weight: bolder">Contact No.</label>
</span>
<span>
<s:textfield id="Field1" name="cd.emailId" type="text" cssClass="field text ln" value="%{dd.contactDetail.emailId}" size="34"  />
<label for="Field1" style="font-weight: bolder">Email ID</label>
</span>
</li>
<li class="date notranslate">
<label class="desc" >
Issue Date and Time
</label>
<div class="example-container">
						
						<div>
					 		<s:textfield  name="id.issueDate" id="basic_example_1"  />
						</div>	
						
						<s:fielderror fieldName="id.issueDate"/>

</li>	
<label class="desc">
Select Blood Group:
</label>
<li id="foli2" class="date notranslate">
<s:select  cssClass="field text ln"   name="id.bloodGroup" value="%{dd.bloodGroup}" headerKey="1"
		headerValue="-BG-" list="{'o-','o+','A-','A+','B-','B+','AB-','AB+'}"></s:select>
</li>
<label class="desc">
No. Of Bottles:
</label>
<s:textfield id="Field1" name="id.noOfBottles" cssClass="field text ln" value="" size="3"  />

<ul>
<li id="foli0" class="notranslate      ">
<label class="desc" id="title2" for="Field2">
Health Information:
</label>
<span>
<s:textfield id="Field0" name="dd.weight"   cssClass="field text fn" value="%{dd.weight}" size="10" />
<label for="Field0">Weight</label>
</span>
<span>
<s:textfield id="Field1" name="dd.bloodPressure" type="text" cssClass="field text ln" value="%{dd.bloodPressure}" size="14"  />
<label for="Field1">Blood Pressure</label>
</span>
<span>
<s:textfield id="Field1" name="dd.pulse" type="text" cssClass="field text ln" value="%{dd.pulse}" size="14"  />
<label for="Field1">Pulse</label>
</span>
<span>
<s:textfield id="Field1" name="dd.hemoglobin" type="text" cssClass="field text ln" value="%{dd.hemoglobin}" size="14"  />
<label for="Field1">Hemoglobin</label>
</span>
</li>
</ul>
<label class="desc">
Doctor Details:
</label>
<s:textfield id="Field1" name="pd.doctorDetails"  cssClass="field text ln" size="25"  />

</li>
<label class="desc">
Hospital Details:
</label>
<s:textfield id="Field1" name="pd.hospitalDetails"  cssClass="field text ln" size="25"  />

</li>
</ul>
<s:submit value="Register" />
</s:form>
