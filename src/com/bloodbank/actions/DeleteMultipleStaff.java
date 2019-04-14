package com.bloodbank.actions;



import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bloodbank.model.AccountDetail;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteMultipleStaff extends ActionSupport  implements ServletRequestAware {
	private AccountDetail ad;
	private String result;
	private String[] accid;

	
	
	public String multipledelete() throws Exception
	
	{
			
			String[] ids=getAccid();
			for(String abc: ids)
			{
			System.out.println(abc);
			}
		
		result=SUCCESS;
		return result;
	
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
	public String[] getAccid() {
		return accid;
	}
	public void setAccid(String[] accid) {
		this.accid = accid;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		
	}
	


	


}
