package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.InventoryDetail;
import com.bloodbank.model.IssueDetail;

public interface InventoryDetailDao {
	public boolean isRecordInserted(InventoryDetail id);
	public List<InventoryDetail> getInventoryDetail();
	public List<InventoryDetail> getInventoryByGroup(DonorDetail dd);
	public List<InventoryDetail> getInventoryByGroup(IssueDetail id);
}
