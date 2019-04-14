package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.DonorDetail;




public interface DonorDetailDao {
	public boolean isDonorInserted(DonorDetail dd);
	public	boolean isDonorDeleted(int id);
	List<DonorDetail> getAllDonors(DonorDetail dd);
	public DonorDetail getSingleDonor(int id);
}
