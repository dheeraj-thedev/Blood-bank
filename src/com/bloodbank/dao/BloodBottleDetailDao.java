package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.TestDetail;

public interface BloodBottleDetailDao {
	public boolean isBloodBottleInserted(BloodBottleDetail bbd);
	public boolean isTestInserted(TestDetail td);
	public List<BloodBottleDetail> findBottles(EventDetail ed);
	public BloodBottleDetail getSingleBottle(int id);
	public List<BloodBottleDetail> findBottlesforTest(BloodBottleDetail bbd);
}
