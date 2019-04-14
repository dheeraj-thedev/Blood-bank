package com.bloodbank.actions;

import com.bloodbank.dao.StaffDetailDao;
import com.bloodbank.dao.impl.StaffDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.StaffDetail;



import com.opensymphony.xwork2.ActionSupport;

public class EditStaffAction extends ActionSupport{
	private String accid;
	private AccountDetail ad_temp;
	
	private String result;
	public String getSingleStaff() {
		System.out.println("EditStaffAction.getSingleStaff()");
		AccountDetail ad=new AccountDetail();
		
		
		
		
		StaffDetailDao ad_daoImpl=new StaffDetailDaoImpl();
		ad = ad_daoImpl.getSingleStaff(Integer.parseInt(getAccid()));
		System.out.println(ad.getStaffDetail());
		System.out.println(ad.getStaffDetail().getContactDetail());
		System.out.println(ad.getStaffDetail().getStaffId());
		System.out.println(ad.getStaffDetail().getContactDetail().getContactId());
		this.setAd_temp(ad);
	
		
		System.out.println(ad_temp.getAccountId());
		System.out.println(ad_temp.getStaffDetail().getStaffId());
		System.out.println(ad_temp.getStaffDetail().getContactDetail().getContactId());
		System.out.println(ad_temp.getStaffDetail());
		System.out.println(ad_temp.getStaffDetail().getContactDetail());
		result = SUCCESS;
		return result;
	}
	
	public String getAccid() {
		return accid;
	}
	public void setAccid(String accid) {
		this.accid = accid;
	}
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public AccountDetail getAd_temp() {
		return ad_temp;
	}
	public void setAd_temp(AccountDetail adTemp) {
		ad_temp = adTemp;
	}


}
