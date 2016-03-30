package com.bloodbank.actions;

import java.util.ArrayList;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;


import com.bloodbank.dao.AccountDetailDao;

import com.bloodbank.dao.IssueDetailDao;


import com.bloodbank.dao.impl.AccountDetailDaoImpl;

import com.bloodbank.dao.impl.IssueDetailDaoImpl;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.DonorDetail;

import com.bloodbank.model.UserDetail;
import com.mail.model.MailBean;
import com.mail.service.SendMailService;
import com.mail.service.impl.SendMailServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterUserAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDetail ud;
	private ContactDetail cd;
	private AccountDetail ad;
	private DonorDetail dd;
	private String result;
	private String str;
	private String city_state;
	private String country;
	private List<AccountDetail> accountlist;
	public String registerUser() throws Exception{
		System.out.println("RegisterStaffAction.registerStaff()");
	
		accountlist=new ArrayList<AccountDetail>();
		AccountDetailDao ad_daoImpl=new AccountDetailDaoImpl();
		accountlist=ad_daoImpl.isValidLogin(ad);
		if(accountlist.size()==0)
		{
			System.out.println("!@#23#!@#");
		
		
			
			
			cd.setCity(getCity_state());
			cd.setState(getCountry());
		ud.setContactDetail(cd);
		ad.setUserDetail(ud);
		ad.setUserType("User");
		String email = ad.getEmailId();
		if(!(cd.getEmailId()==null))
		{
		MailBean bean= new MailBean();
		bean.setFrom("lifelineblood1@gmail.com");
		bean.setPassword("lifeline999");
		bean.setSubject("Thanks");
		bean.setCc(null);
		bean.setBcc(null);
		
		bean.setBody("Thank For Your Registration:\n" +
				"Your Username is:" + ad.getLogin() +
				"\n Your Password Is:"+ ad.getPassword());
		List<String> to_address=new ArrayList<String>();
		to_address.add(email);
		bean.setTo(to_address);
		bean.setMimeType("text/plain");
		SendMailService service=new SendMailServiceImpl();
		service.sendMail(bean);
		}
		System.out.println("INSERT");
		System.out.println("contact detail");
		
				ad.setEmailId(cd.getEmailId());
				if(ad_daoImpl.isAccountInserted(ad)){
					System.out.println(ad.getEmailId());
					
			
			IssueDetailDao detailDao=new IssueDetailDaoImpl();
			System.out.println(dd.getDonorRandomId());
			if(dd.getDonorRandomId().length()>0)
			{
				List<DonorDetail> list1=new ArrayList<DonorDetail>();
				list1=detailDao.isValidUniqueId(dd);
				if (list1.size() == 1) 
				 {
					ud.setIsDonor("true");
				
				 }
				else
				{
					ud.setIsDonor("false");
				}
			}
			result = SUCCESS;
			System.out.println("INSERT DONE");
			str="Registered";
			}
		}
		
		else{
			System.out.println("Already Exist");
			str="loginname";
			result= INPUT;
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
	     
	   
	    
	     
	}
	public UserDetail getUd() {
		return ud;
	}



	public void setUd(UserDetail ud) {
		this.ud = ud;
	}



	public ContactDetail getCd() {
		return cd;
	}



	public void setCd(ContactDetail cd) {
		this.cd = cd;
	}



	public AccountDetail getAd() {
		return ad;
	}



	public void setAd(AccountDetail ad) {
		this.ad = ad;
	}



	public String getResult() {
		return result;
	}



	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		
	}
	public DonorDetail getDd() {
		return dd;
	}
	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public List<AccountDetail> getAccountlist() {
		return accountlist;
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

	public void setAccountlist(List<AccountDetail> accountlist) {
		this.accountlist = accountlist;
	}

}
