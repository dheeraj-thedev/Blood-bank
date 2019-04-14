package com.bloodbank.actions;

import com.bloodbank.dao.StaffDetailDao;
import com.bloodbank.dao.impl.StaffDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.StaffDetail;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateStaffAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AccountDetail ad;
	private ContactDetail cd;
	private StaffDetail sd;
	private String result;
	private String str;
	
	public String updateStaffDetail() {
		System.out.println("EditStaffAction.updateStudentDetail()");
		
		
		StaffDetailDao ad_daoImpl=new StaffDetailDaoImpl();
		System.out.println("23");
		
		ad.setUserType("Staff");
		sd.setContactDetail(cd);
		ad.setStaffDetail(sd);
	
	
				
				if(ad_daoImpl.isStaffUpdated(ad))
				{
					str="updated_staff";
					result=SUCCESS;
				}
		
			
				
				
					
			
			
		
		else
		{
			result=INPUT;
		}
		return result;
		/*ad.setStaffDetail(sd);
		sd.setContactDetail(cd);
		ad_daoImpl.isStaffUpdated(ad);
		
		str="updated_staff";
		result = SUCCESS;
		return result;*/
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

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public ContactDetail getCd() {
		return cd;
	}

	public void setCd(ContactDetail cd) {
		this.cd = cd;
	}

	public StaffDetail getSd() {
		return sd;
	}

	public void setSd(StaffDetail sd) {
		this.sd = sd;
	}
}
