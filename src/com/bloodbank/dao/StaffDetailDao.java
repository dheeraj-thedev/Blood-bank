package com.bloodbank.dao;


import java.util.List;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.StaffDetail;


public interface StaffDetailDao {
	
	public AccountDetail getSingleStaff(int id);
	public boolean isStaffUpdated(AccountDetail ad);
	public List<StaffDetail> getAssociatedStaffWithEvent(Integer[] ids);
	

}
