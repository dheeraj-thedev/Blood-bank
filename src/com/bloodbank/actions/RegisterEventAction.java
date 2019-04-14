package com.bloodbank.actions;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.StaffDetailDao;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.dao.impl.StaffDetailDaoImpl;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.StaffDetail;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterEventAction extends ActionSupport implements ServletRequestAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private EventDetail ed;
	private StaffDetail sd;
	private HttpServletRequest httpServletRequest;
	private StaffDetailDao detailDao;
	private Set<StaffDetail> eventStaffSet;
	
	public String registerevent() throws ClassNotFoundException, InstantiationException, IllegalAccessException
	{
		String[] userids = httpServletRequest.getParameterValues("sel1");
		detailDao = new StaffDetailDaoImpl();
		
		List<StaffDetail> staffDetails = detailDao.getAssociatedStaffWithEvent(convertStringListToInteger(userids));
		System.out.println(staffDetails.size());
		
		eventStaffSet = new HashSet<StaffDetail>();
		for(StaffDetail staffDetail : staffDetails)
		{
			eventStaffSet.add(staffDetail);
		}
		
		ed.setEventStaffDetails(eventStaffSet);
		EventDetailDao eventDetailDao=new EventDetailDaoImpl();
		if(eventDetailDao.isEventInserted(ed))
		{
			result=SUCCESS;
		}
		else
		{
			result=INPUT;
		}		
		return result ;
		
	}
	
	public Integer[] convertStringListToInteger(String[] ids)
	{
		Integer[] userIds = new Integer[ids.length];
		for (int i = 0; i < ids.length; i++) {
			userIds[i] = Integer.valueOf(ids[i]);
		}
		System.out.println("Size of Integer List==="+userIds.length);
		return userIds;
	}
	public void validate()
	{
		if(ed.getEventTitle().isEmpty())
		{
			addFieldError("ed.eventTitle", "****Title is Required");
		}
		if(ed.getEventVanue().isEmpty())
		{
			addFieldError("ed.eventVanue", "****Event Vanue is required");
		}
		if(ed.getEventDate().isEmpty())
		{
			addFieldError("ed.eventDate", "***Date is Required");
		}
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest httpServletRequest) {
		// TODO Auto-generated method stub
		this.httpServletRequest = httpServletRequest;
	}

	public StaffDetail getSd() {
		return sd;
	}
	public void setSd(StaffDetail sd) {
		this.sd = sd;
	}
}
