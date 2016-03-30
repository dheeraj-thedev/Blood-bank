package com.bloodbank.actions;

import java.util.ArrayList;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.StaffDetailDao;

import com.bloodbank.dao.impl.ContactDetailDaoImpl;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.dao.impl.StaffDetailDaoImpl;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.EventStaffDetail;
import com.bloodbank.model.EventStaffDetailId;

import com.bloodbank.model.StaffDetail;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowAllContacts extends ActionSupport  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String str;
	private String staffid;
	private String result;
	// private HttpServletRequest request;
	// private HttpServletResponse response;
	private List<AccountDetail> staffList;
	private List<EventStaffDetail> eventstaffList;
	private String My_str;
	private ContactDetail cd;
	private StaffDetail sd;
	private AccountDetail ad;
	private EventStaffDetail esd;
	private EventStaffDetailId esdid;
	private String accid;

	public String showallcontacts()throws Exception

	{

		System.out.println("*****ShowAllStudentsAction.showAllStudent()*****");
		// HttpSession httpSession = request.getSession();
		staffList=new ArrayList<AccountDetail>();
		ContactDetailDao cd_daoImpl = new ContactDetailDaoImpl();
		staffList = cd_daoImpl.getAllStaffs();
		
		if (staffList.size() > 1) {
		
			System.out.println("1212");
			str = "list";
			Map session=ActionContext.getContext().getSession();
			session.put("Staff", staffList);

		result = SUCCESS;
		}
		return result;

	}
	public String deleteSingleStaff() {
		System.out.println("ShowAllContacts.deleteSingleStaff()");
		ContactDetailDao cd_daoImpl = new ContactDetailDaoImpl();
		StaffDetailDao sd_daDao=new StaffDetailDaoImpl();
		ad=sd_daDao.getSingleStaff(Integer.parseInt(getAccid()));
		/*Integer staffID=Integer.parseInt(getStaffid());*/
		eventstaffList=new ArrayList<EventStaffDetail>();
		EventDetailDao ed_daoImpl=new EventDetailDaoImpl();
		eventstaffList=ed_daoImpl.getallstaffinevents(sd);
		
//		if (eventstaffList.size()>0) 
//		 {
//			
//			Iterator<EventStaffDetail> itr1=eventstaffList.iterator();
//			while(itr1.hasNext())
//			{
//				esd=itr1.next();
//			}
//			/*System.out.println(esd.getEventDetail());
//			System.out.println(esd.getStaffDetail());
//			System.out.println(esd.getStaffDetail().getStaffId());*/
//			ed_daoImpl.isEventStaffDeleted(esd.getId());
//		 }
		System.out.println(getAccid());
		cd_daoImpl.isStaffDeleted(Integer.parseInt(getAccid()));
		str="deleted_staff";
		result = SUCCESS;
		//my_str="data_deleted";
		/*System.out.println("DELETE DONE");
		System.out.println("MY STR=="+getMy_str());*/
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

	

	public String getMy_str() {
		return My_str;
	}

	public void setMy_str(String myStr) {
		My_str = myStr;
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

	public List<AccountDetail> getStaffList() {
		return staffList;
	}
	public void setStaffList(List<AccountDetail> staffList) {
		this.staffList = staffList;
	}

	public AccountDetail getAd() {
		return ad;
	}
	public void setAd(AccountDetail ad) {
		this.ad = ad;
	}
	public String getAccid() {
		return accid;
	}
	public void setAccid(String accid) {
		this.accid = accid;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public List<EventStaffDetail> getEventstaffList() {
		return eventstaffList;
	}
	public String getStaffid() {
		return staffid;
	}
	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}
	public EventStaffDetail getEsd() {
		return esd;
	}
	public void setEsd(EventStaffDetail esd) {
		this.esd = esd;
	}
	public void setEventstaffList(List<EventStaffDetail> eventstaffList) {
		this.eventstaffList = eventstaffList;
	}
	public EventStaffDetailId getEsdid() {
		return esdid;
	}
	public void setEsdid(EventStaffDetailId esdid) {
		this.esdid = esdid;
	}





}
