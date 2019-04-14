package com.bloodbank.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.bloodbank.dao.StaffDetailDao;
import com.bloodbank.dao.impl.StaffDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EditMyDetailAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,SessionAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String str;
	private AccountDetail ad_temp;
	
	
	private HttpServletRequest request;
	public String editdetail()
	{
		Map session = ActionContext.getContext().getSession();
		
		Integer accid=(Integer) session.get("Account");
		System.out.println(accid);
		System.out.println("121312");
		AccountDetail ad=new AccountDetail();
		StaffDetailDao ad_daoImpl=new StaffDetailDaoImpl();
		ad = ad_daoImpl.getSingleStaff(accid);
		
		
		this.setAd_temp(ad);
		/*System.out.println(ad.getUserDetail().getCreationDate());
		System.out.println(ad.getUserDetail().getContactDetail());*/
		str="edit_user";
		return SUCCESS;
		
		
	}


	
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		
	}
	public AccountDetail getAd_temp() {
		return ad_temp;
	}
	public void setAd_temp(AccountDetail adTemp) {
		ad_temp = adTemp;
	}



	public String getStr() {
		return str;
	}



	public void setStr(String str) {
		this.str = str;
	}

}
