package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.List;

import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.dao.DonorDetailDao;
import com.bloodbank.dao.impl.ContactDetailDaoImpl;
import com.bloodbank.dao.impl.DonorDetailDaoImpl;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.DonorDetail;
import com.opensymphony.xwork2.ActionSupport;

public class ShowAllDonors extends ActionSupport {
	private String str;
	private String result;
	private List<DonorDetail> DonorList;

	private String My_str;
	private ContactDetail cd;
	private DonorDetail dd;
	public ContactDetail getCd() {
		return cd;
	}
	public void setCd(ContactDetail cd) {
		this.cd = cd;
	}
	public DonorDetail getDd() {
		return dd;
	}
	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}
	public String showAllDonors()
	
	{
	
		System.out.println("*****ShowAllStudentsAction.showAllStudent()*****");
		DonorList = new ArrayList<DonorDetail>();
		
		DonorDetailDao dd_daoImpl=new DonorDetailDaoImpl();
		
		DonorList = dd_daoImpl.getAllDonors(dd);
		//dd.setContactDetail(cd);
		//list1=cd_daoImpl.getAllContacts(ContactDetail cd);
		//System.out.println(list.get(0).getContactDetail());
		
		
			str = "donor_found";
		

		result = SUCCESS;
		return result;
		
		
	}
	public String getStr() {
		return str;
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
	public List<DonorDetail> getDonorList() {
		return DonorList;
	}
	public void setDonorList(List<DonorDetail> donorList) {
		DonorList = donorList;
	}
	public String getMy_str() {
		return My_str;
	}
	public void setMy_str(String myStr) {
		My_str = myStr;
	}


}
