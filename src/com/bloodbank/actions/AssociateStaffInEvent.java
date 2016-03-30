package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.dao.impl.ContactDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.StaffDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AssociateStaffInEvent extends ActionSupport{

	private ContactDetail cd;
	private StaffDetail sd;
	private AccountDetail ad;
	private String result;
	private List<AccountDetail> staffList;
	public String showallStaff()
	{

	System.out.println("*****ShowAllStudentsAction.showAllStudent()*****");
	// HttpSession httpSession = request.getSession();
	staffList=new ArrayList<AccountDetail>();
	ContactDetailDao cd_daoImpl = new ContactDetailDaoImpl();
	staffList = cd_daoImpl.getAllStaffs();
	
	
	if (staffList.size() > 1) {
		
		System.out.println("1212");
		
	result = SUCCESS;
	}
	return result;


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
	public List<AccountDetail> getStaffList() {
		return staffList;
	}
	public void setStaffList(List<AccountDetail> staffList) {
		this.staffList = staffList;
	}
}
