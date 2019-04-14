package com.bloodbank.actions;

import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.EventDetail;
import com.opensymphony.xwork2.ActionSupport;

public class EditEventAction extends ActionSupport{
	
	private EventDetail ed_temp;
	private String result;
	private String str;
	private String eveid;
	
	public String deleteevent()
	{
		System.out.println("EditEventAction.deleteevent()");
		EventDetailDao eDao=new EventDetailDaoImpl();
		System.out.println(getEveid());
		eDao.isEventDeleted(Integer.parseInt(getEveid()));
		str="event_delete";
		result=SUCCESS;
		return result;
		
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

	public String getEveid() {
		return eveid;
	}

	public void setEveid(String eveid) {
		this.eveid = eveid;
	}
	public EventDetail getEd_temp() {
		return ed_temp;
	}
	public void setEd_temp(EventDetail edTemp) {
		ed_temp = edTemp;
	}

}
