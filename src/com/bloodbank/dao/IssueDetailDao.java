package com.bloodbank.dao;


import java.util.List;


import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.IssueDetail;

public interface IssueDetailDao {
	public boolean isIssueInserted(IssueDetail id);
	public List<DonorDetail> isValidUniqueId(DonorDetail dd);
	public List<IssueDetail> getAllHospitals();
	public List<IssueDetail> getAllPatients();
	public	boolean isissueDeleted(int id);
	public IssueDetail getSingleIssue(int id);
}
