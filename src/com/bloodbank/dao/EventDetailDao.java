package com.bloodbank.dao;


import java.util.List;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.EventStaffDetail;
import com.bloodbank.model.EventStaffDetailId;
import com.bloodbank.model.StaffDetail;



public interface EventDetailDao {
	public boolean isEventInserted(EventDetail dd);
	public List<EventDetail> getAllEventDetails();
	public List<EventStaffDetail> getAllEventandStaffDetails();
	public EventDetail getSingleEvent(int id);
	public	boolean isEventDeleted(int id);

	public	boolean isEventStaffDeleted(EventStaffDetailId eventStaffDetailId);
	//public boolean isEventStaffInserted(EventStaffDetail esd);
	public List<EventStaffDetail> getallstaffinevents(StaffDetail sd);

}
