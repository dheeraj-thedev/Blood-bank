package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.StaffDetail;

public interface ContactDetailDao {
	public boolean isContactInserted(ContactDetail cd);
	public List<DonorDetail> getAllContacts();
	public List<AccountDetail> getAllStaffsNames();
	public List<AccountDetail> getAllStaffs();
	public boolean isStaffDeleted(int id);
	public List<AccountDetail> getAllUsers();
	 
}
