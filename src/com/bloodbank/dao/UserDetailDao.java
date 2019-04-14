package com.bloodbank.dao;


import java.util.List;

import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.UserDetail;

public interface UserDetailDao {
	public boolean isUserInserted(UserDetail ud);
	public List<BloodBottleDetail> getAllBottles(DonorDetail dd) ;
}
