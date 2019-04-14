package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;


import com.bloodbank.dao.LogInMasterDao;
import com.bloodbank.dao.impl.LogInMasterDaoImpl;
import com.bloodbank.model.AccountDetail;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private AccountDetail ad;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	private String My_str;
	private String str;
	
	
	private List<AccountDetail> accountlist;
	
	public String login() throws Exception
	{
	
		System.out.println("LoginAction.execute()");
		//HttpSession httpSession = request.getSession();
		accountlist=new ArrayList<AccountDetail>();
		LogInMasterDao masterDao=new LogInMasterDaoImpl();
		accountlist = masterDao.isValidLogin(ad);
		if (accountlist.size() == 1) 
		 {
			
			Iterator<AccountDetail> itr1=accountlist.iterator();
			while(itr1.hasNext())
			{
				ad=itr1.next();
			}
			
			session=request.getSession();
			//session.setAttribute("userid", ad.getUserDetail().getUserId());
			session.setAttribute("UserType", ad.getUserType());
			session.setAttribute("UserName", ad.getLogin());
			session.setAttribute("Account", ad.getAccountId());
			System.out.println(session.getAttribute("UserType"));
			System.out.println(session.getAttribute("UserName"));
			session.setAttribute("tracker", "true");
			/*this.setAccList(list1);
			System.out.println(list1.get(0).getUserType());
			if(list1.get(0).getUserType().equals("User"))
			{
				str="UserPage";
				System.out.println("1");
			}
			else if(list1.get(0).getUserType().equals("Staff"))
			{
				str="StaffPage";
				System.out.println("2");
			}else
			{
				str="AdminPage";	
				System.out.println("3");
			}*/
			
			
			/*session=request.getSession();
			session.setAttribute("user",ad.getUserType());*/
			System.out.println("After");
			//httpSession.setAttribute("ContactDetail", list1);
			
			//System.out.println(list.get(0).getContactDetail());
		
	/*	if (getMy_str() != null) {
			if (getMy_str().equals("data_deleted")) {
				result_str = "data_deleted";
			}
		}
		if(getSd_temp()!=null)
		{
			if (getMy_str().equals("data_updated")) {
				result_str="data_updated";
			}
		}*/
		result = "success";
		 }
		else
		{
			str="notvalid";
			result=INPUT;
		}
		
		return result;
		
	}
	
	public String execute()
	{
		
		System.out.println("LoginAction.logInUser()");
		LogInMasterDao lm_Impl=new LogInMasterDaoImpl();
		List<AccountDetail> accountDetails= lm_Impl.isValidLogin(ad);
		if( accountDetails.size()!=0)
		{
			
			result=SUCCESS;
		}
		else if(lm_Impl.isValidStaff(ad))
		{
			result=NONE;
		}
		else
		{
			result=INPUT;
		}
		//session=request.getSession();
		//session.setAttribute("user",);
		return result;
		
			
		
	}

	public void validate()
	   {
		System.out.println("in validate");
		
	      if (ad.getLogin().isEmpty())
	      {
	         //str="loginerror";  
	    	  addFieldError("ad.login", "***Username is Required");
	    	 
	      }
	      if (ad.getPassword().isEmpty())
	      {
	    	  
	    	 
	         //str="passwordinvalid";
	    	  addFieldError("ad.password", "***Password is Required");
	      }
	      
	      /*if (ad.getPassword().isEmpty())
	      {
	         getText("Please Enter Password");
	      }*/
	   }
	



	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
		
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
		
	}

	public AccountDetail getAd() {
		return ad;
	}

	public void setAd(AccountDetail ad) {
		this.ad = ad;
	}

	public String getMy_str() {
		return My_str;
	}

	public void setMy_str(String myStr) {
		My_str = myStr;
	}

	public String getStr() {
		return str;
	}

	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}

	public void setStr(String str) {
		this.str = str;
	}



	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public List<AccountDetail> getAccountlist() {
		return accountlist;
	}

	public void setAccountlist(List<AccountDetail> accountlist) {
		this.accountlist = accountlist;
	}

}
