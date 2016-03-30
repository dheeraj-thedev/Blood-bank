package com.bloodbank.actions;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.bloodbank.dao.AccountDetailDao;



import com.bloodbank.dao.impl.AccountDetailDaoImpl;



import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;

import com.bloodbank.model.StaffDetail;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterStaffAction extends ActionSupport {

	private StaffDetail sd;
	private ContactDetail cd;
	private String result;
	private String str;
	private AccountDetail ad;
	private String city_state;
	private String country;
	private List<AccountDetail> accountlist;
	
	

	public String registerStaff(){
		
		System.out.println("RegisterStaffAction.registerStaff()");
		accountlist=new ArrayList<AccountDetail>();
		AccountDetailDao ad_daoImpl=new AccountDetailDaoImpl();
		accountlist=ad_daoImpl.isValidLogin(ad);
		if(accountlist.size()==0)
		{	
	
		ad.setUserType("Staff");
		System.out.println("contact detail");
		cd.setCity(getCity_state());
		cd.setState(getCountry());
		ad.setEmailId(cd.getEmailId());
		sd.setContactDetail(cd);
		ad.setStaffDetail(sd);
		
		if(ad_daoImpl.isAccountInserted(ad))
		{
			System.out.println("DONE");
			result = SUCCESS;
			str="registered_staff";
		}
		}
		else
		{	
			str="exist_uname";
		result = INPUT;
			
			}
	
		return result;
		
	}
	
	public void validate()
	{ 
		System.out.println("RegisterStaffAction.validate()");
		
		System.out.println("121212");
		if (cd.getFirstName().isEmpty())
	      {
	         
			System.out.println("15454564654");
	    	  addFieldError("cd.firstName", "***First Name is Required");
	    	 
	      }
	      if (cd.getMiddleName().isEmpty())
	      {
	    	  
	    	 
	        
	    	  addFieldError("cd.middleName", "***Middle Name is Required");
	      }
	      if (cd.getLastName().isEmpty())
	      {
	    	  
	    	 
	        
	    	  addFieldError("cd.lastName", "***Last Name is Required");
	      }
	      
	      
	   /* if(getCity_state().isEmpty())
	      {
	    	  addFieldError("city_state", "City is Required");
	    	 
	      }
	      if(getCountry().isEmpty())
	      {
	    	  addFieldError("country", "State is Required");
	    	 
	      }*/
	      if(cd.getContactNo().isEmpty())
	      {
	    	  addFieldError("cd.contactNo", "***Contact No. is Required");
	    	 
	      }/*
	      if (cd.getGender().isEmpty())
		     {  	  
		    	 addFieldError("cd.gender", "***Gender is Required");
		     }*/
	      if (cd.getBirthDate().isEmpty())
		     {  	  
		    	 addFieldError("cd.birthDate", "***Birthdate is Required");
		     }
	  	if (ad.getLogin().isEmpty())
	    {
	        //str="loginerror";  
	   	  addFieldError("ad.login", "***Username is Required");
	   	 
	     }
	     if (ad.getPassword().isEmpty())
	     {  	  
	    	 addFieldError("ad.password", "***Password is Required");
	     }
/*	     if (ad.getEmailId().isEmpty())
	     {  	  
	    	 addFieldError("ad.emailId", "***Email is Required");
	     }*/
	     
	     if (sd.getJoiningDate().isEmpty())
	     {  	  
	    	 addFieldError("sd.joiningDate", "***Password is Required");
	     }
	    
	     
	}
	public StaffDetail getSd() {
		return sd;
	}


	public void setSd(StaffDetail sd) {
		this.sd = sd;
	}


	public ContactDetail getCd() {
		return cd;
	}


	public void setCd(ContactDetail cd) {
		this.cd = cd;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}
	public AccountDetail getAd() {
		return ad;
	}
	public void setAd(AccountDetail ad) {
		this.ad = ad;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}




	public String getCity_state() {
		return city_state;
	}

	public void setCity_state(String cityState) {
		city_state = cityState;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public List<AccountDetail> getAccountlist() {
		return accountlist;
	}

	public void setAccountlist(List<AccountDetail> accountlist) {
		this.accountlist = accountlist;
	}
	
}
