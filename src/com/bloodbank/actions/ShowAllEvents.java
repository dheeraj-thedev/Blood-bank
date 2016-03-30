package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.List;

import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.model.EventDetail;
import com.opensymphony.xwork2.ActionSupport;

public class ShowAllEvents extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private EventDetail ed;
	private String str;
	private List<EventDetail> eventList;
	public String showevents()
	{
		System.out.println("ShowAllEvents.showevents()");
		eventList=new ArrayList<EventDetail>();
		EventDetailDao ed_dao=new EventDetailDaoImpl();
		eventList=ed_dao.getAllEventDetails();
		if(eventList.size() > 0)
		{
		str="eventlist";
		result=SUCCESS;
		}
		else
		{
			result=ERROR;
		}
		return result;
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
	public List<EventDetail> getEventList() {
		return eventList;
	}
	public void setEventList(List<EventDetail> eventList) {
		this.eventList = eventList;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
