package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bloodbank.dao.BloodBottleDetailDao;
import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.impl.BloodBottleDetailDaoImpl;
import com.bloodbank.dao.impl.ContactDetailDaoImpl;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.EventDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewDonorInEventAction extends ActionSupport {
	private String str;
	private String result;
	
	private List<BloodBottleDetail> bottleList;
	private EventDetail ed;
	private String eveid;
	
	public String Viewdonor()
	{
	System.out.println("*****ShowAllStudentsAction.showAllStudent()*****");
	// HttpSession httpSession = request.getSession();
	EventDetailDao edDao=new EventDetailDaoImpl();
	ed=edDao.getSingleEvent(Integer.parseInt(getEveid()));
	
	bottleList=new ArrayList<BloodBottleDetail>();
	BloodBottleDetailDao bbd_dao=new BloodBottleDetailDaoImpl();
	bottleList=bbd_dao.findBottles(ed);
	
	if (bottleList.size() > 0) {
	
		System.out.println("1212");
		str = "bottlelist";
		Map session=ActionContext.getContext().getSession();
		session.put("Staff", bottleList);

	result = SUCCESS;
	}
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



	public EventDetail getEd() {
		return ed;
	}

	public void setEd(EventDetail ed) {
		this.ed = ed;
	}

	public List<BloodBottleDetail> getBottleList() {
		return bottleList;
	}

	public void setBottleList(List<BloodBottleDetail> bottleList) {
		this.bottleList = bottleList;
	}

	public String getEveid() {
		return eveid;
	}

	public void setEveid(String eveid) {
		this.eveid = eveid;
	}



}
