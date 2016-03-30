var countries = Object();

countries['Africa'] = '|Algeria|Angola|Benin|Botswana|Burkina Faso|Burundi|Cameroon|Cape Verde|Central African Republic|Chad|Comoros|Congo, Dem.|Congo, Rep.|Djibouti|Egypt|Equatorial Guinea|Eritrea|Ethiopia|Gabon|Gambia|Ghana|Guinea|Guinea-Bissau|Kenya|Lesotho|Liberia|Libya|Madagascar|Malawi|Mali|Mauritania|Mauritius|Morocco|Mozambique|Namibia|Niger|Nigeria|Rwanda|Sao Tome/Principe|Senegal|Seychelles|Sierra Leone|Somalia|South Africa|Sudan|Swaziland|Tanzania|Togo|Tunisia|Uganda|Zambia|Zimbabwe';
countries['Antarctica'] = '|Amundsen-Scott';
countries['India'] = 'AndhraPradesh|Assam|Bihar|Chandigarh|Chhattisgarh|Delhi|Gujarat|Haryana|Jammu/Kashmir|Jharkhand|Karnataka|Kerala|MadhyaPradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Orissa|Pondicherry|Punjab|Rajasthan|Sikkim|TamilNadu|Tripura|Uttaranchal|UttarPradesh|West Bengal';
countries['Australia/Oceania'] = '|Australia|Fiji|Kiribati|Micronesia|Nauru|New Zealand|Palau|Papua New Guinea|Samoa|Tonga|Tuvalu|Vanuatu';
countries['Caribbean'] = '|Anguilla|Antigua/Barbuda|Aruba|Bahamas|Barbados|Cozumel|Cuba|Dominica|Dominican Republic|Grenada|Guadeloupe|Haiti|Jamaica|Martinique|Montserrat|Netherlands Antilles|Puerto Rico|St. Barts|St. Kitts/Nevis|St. Lucia|St. Martin/Sint Maarten|St Vincent/Grenadines|San Andres|Trinidad/Tobago|Turks/Caicos';
countries['Central America'] = '|Belize|Costa Rica|El Salvador|Guatemala|Honduras|Nicaragua|Panama';
countries['Europe'] = '|Albania|Andorra|Austria|Belarus|Belgium|Bosnia-Herzegovina|Bulgaria|Croatia|Czech Republic|Denmark|Estonia|Finland|France|Georgia|Germany|Greece|Hungary|Iceland|Ireland|Italy|Latvia|Liechtenstein|Lithuania|Luxembourg|Macedonia|Malta|Moldova|Monaco|Netherlands|Norway|Poland|Portugal|Romania|San Marino|Serbia/Montenegro (Yugoslavia)|Slovakia|Slovenia|Spain|Sweden|Switzerland|Ukraine|United Kingdom|Vatican City';
countries['Islands'] = '|Arctic Ocean|Atlantic Ocean (North)|Atlantic Ocean (South)|Assorted|Caribbean Sea|Greek Isles|Indian Ocean|Mediterranean Sea|Oceania|Pacific Ocean (North)|Pacific Ocean (South)';
countries['Middle East'] = '|Afghanistan|Armenia|Azerbaijan|Bahrain|Cyprus|Iran|Iraq|Israel|Jordan|Kuwait|Kyrgyzstan|Lebanon|Oman|Pakistan|Qatar|Saudi Arabia|Syria|Tajikistan|Turkey|Turkmenistan|United Arab Emirates|Uzbekistan|Yemen';
countries['North America'] = '|Bermuda|Canada|Greenland|Mexico|United States';
countries['South America'] = '|Argentina|Bolivia|Brazil|Chile|Colombia|Ecuador|Guyana|Paraguay|Peru|Suriname|Uruguay|Venezuela';

////////////////////////////////////////////////////////////////////////////

var city_states = Object();

//Africa
city_states['Gujarat'] = 'Ahmedabad||Surat|Vadodara|Rajkot|Bhavnagar|Jamnagar|Junagarh|Nadiad|Gandhinagar|Morvi|Bharuch|Navsari|Porbandar|Veraval|Surendranagar|Anand|Gandhidham|Mehsana|Bhuj|Godhara|Palanpur|Vejalpur|Patan||Population||Population|Kalol|Ghatlodiya|Jetpur-||I|Botad|Valsad|Gondal|Ankleshwar||III|Dahod|Amreli|Khambhat|Ranip|Deesa|Dhoraji|Mahuva|Savurkundla|Visnagar|Vapi|Dhrangadhra|Chandlodiya|Anjar|Wadhwan|Keshod|Dholka|Kadi|Sidhpur|Bilimora|Borsad|||Population||Population|Himatnagar|Mangrol|Chandkheda|Upleta|Dabhoi|Modasa|Vijalpur|Unjha||III|iramgam||III|Bardoli|Palitana|Una|Petlad|Sihor|Halol|Jodhpur|Kapadvanj|Thaltej|Mandvi|Vastral|Wankaner|Limbdi';
city_states['AndhraPradesh']='Anantapur|Guntur|Hyderabad|Kadapa|Kakinada|Karimnagar|Kurnool|Nellore|Nizamabad|Rajahmundry|Ramagundam|Tirupati|Vijayawada|Visakhapatnam|Vizianagaram|Warangal';
city_states['Assam']='Guwahati';
city_states['Bihar']='Arrah||Begusarai|Bhagalpur|Bihar Sharif|Darbhanga|Gaya|Katihar|Muzaffarpur|Patna|Purnia';
city_states['Chandigarh']='Chandigarh';
city_states['Chhattisgarh']='Bhilai|Bilaspur|Durg|Korba|Raipur';
city_states['Delhi']='Delhi|Karawal Nagar|Kirari Suleman Nagar|New Delhi';
city_states['Haryana']='Faridabad|Gurgaon|Hisar|Karnal|Panipat|Rohtak|Sonipat';
city_states['Jammu/Kashmir']='Jammu|Srinagar';
city_states['Jharkhand']='Bokaro|Dhanbad|Jamshedpur|Mango|Ranchi';
city_states['Karnataka']='Bangalore|Belgaum|Bellary|Bijapur|Davanagere|Gulbarga|Hubballi-Dharwad|Mangalore|Mysore|Raichur|Shivamogga (Shimoga)|Tumkur';
city_states['Kerala']='Kochi (Cochin)|Kollam (Quilon)|Kozhikode (Calicut)|Thiruvananthapuram|Thrissur';
city_states['MadhyaPradesh']='Bhopal|Dewas|Gwalior|Indore|Jabalpur|Ratlam|Rewa|Sagar|Satna|Ujjain';
city_states['Maharashtra']='Ahmednagar|Akola|Ambernath|Amravati|Aurangabad|Bhiwandi|Chandrapur|Dhule|Ichalkaranji|Jalgaon|Jalna|Kalyan-Dombivali|Kolhapur|Latur|Malegaon|Mira-Bhayandar|Mumbai|Nagpur|Nanded|Nashik|Navi Mumbai|Parbhani|Pimpri-Chinchwad|Pune|Sangli-Miraj & Kupwad|Solapur|Thane|Ulhasnagar|Vasai-Virar';
city_states['Manipur']='Imphal';
city_states['Mizoram']='Aizawl';
city_states['Orissa']='Bhubaneswar|Brahmapur|Cuttack|Rourkela';
city_states['Pondicherry']='Ozhukarai|Puducherry';
city_states['Punjab']='Amritsar|Bathinda|Jalandhar|Ludhiana|Patiala';
city_states['Rajasthan']='Ajmer|Alwar|Bharatpur|Bhilwara|Bikaner|Jaipur|Jodhpur|Kota|Pali|Sikar|Sri Ganganagar|Udaipur';

city_states['TamilNadu']='Ambattur|Avadi|Chennai|Coimbatore|Madurai|Nagercoil|Salem|Thanjavur|Thoothukudi|Tiruchirappalli|Tirunelveli|Tirupur|Tiruvottiyur';
city_states['Tripura']='Agartala';
city_states['UttarPradesh']='Agra|Aligarh|Allahabad|Bareilly|Bulandshahr|Etawah|Farrukhabad|Firozabad|Ghaziabad|Gorakhpur|Hapur|Jhansi|Kanpur|Loni|Lucknow|Mathura|Mau|Meerut|Mirzapur|Moradabad|Muzaffarnagar|Noida|Rampur|Saharanpur|Shahjahanpur|Varanasi|Dehradun|Haridwar';
city_states['Uttaranchal']='Dehradun|Haridwar';
city_states['West Bengal']='Asansol|Bally|Baranagar|Barasat|Bardhaman|Bhatpara|Durgapur|Gopalpur|Howrah|Kamarhati|Kolkata|Kulti|Maheshtala|North Dumdum|Panihati|Rajpur Sonarpur|Siliguri|South Dumdum';


            
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

function setRegions()
{
	for (region in countries)
		document.write('<option value="' + region + '">' + region + '</option>');
}

function set_country(oRegionSel, oCountrySel, oCity_StateSel)
{
	var countryArr;
	oCountrySel.length = 0;
	oCity_StateSel.length = 0;
	var region = oRegionSel.options[oRegionSel.selectedIndex].text;
	if (countries[region])
	{
		oCountrySel.disabled = false;
		oCity_StateSel.disabled = true;
		oCountrySel.options[0] = new Option('SELECT State','');
		countryArr = countries[region].split('|');
		for (var i = 0; i < countryArr.length; i++)
			oCountrySel.options[i + 1] = new Option(countryArr[i], countryArr[i]);
		document.getElementById('txtregion').innerHTML = region;
		document.getElementById('txtplacename').innerHTML = '';
	}
	else oCountrySel.disabled = true;
}

function set_city_state(oCountrySel, oCity_StateSel)
{
	var city_stateArr;
	oCity_StateSel.length = 0;
	var country = oCountrySel.options[oCountrySel.selectedIndex].text;
	if (city_states[country])
	{
		oCity_StateSel.disabled = false;
		oCity_StateSel.options[0] = new Option('SELECT CITY','');
		city_stateArr = city_states[country].split('|');
		for (var i = 0; i < city_stateArr.length; i++)
			oCity_StateSel.options[i+1] = new Option(city_stateArr[i],city_stateArr[i]);
		document.getElementById('txtplacename').innerHTML = country;
	}
	else oCity_StateSel.disabled = true;
}

function print_city_state(oCountrySel, oCity_StateSel)
{
	var country = oCountrySel.options[oCountrySel.selectedIndex].text;
	var city_state = oCity_StateSel.options[oCity_StateSel.selectedIndex].text;
	if (city_state && city_states[country].indexOf(city_state) != -1)
		document.getElementById('txtplacename').innerHTML = city_state + ', ' + country;
	else document.getElementById('txtplacename').innerHTML = country;
}