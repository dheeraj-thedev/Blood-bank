package com.bloodbank.actions;

import com.bloodbank.dao.IssueDetailDao;
import com.bloodbank.dao.impl.IssueDetailDaoImpl;
import com.bloodbank.model.IssueDetail;
import com.opensymphony.xwork2.ActionSupport;

public class EditIssueDetail extends ActionSupport {
	
	private String result;
	private IssueDetail id_temp;
	private String issueid;
	public String editHospital()
	{
		IssueDetail isd=new IssueDetail();
		IssueDetailDao id_dao=new IssueDetailDaoImpl();
		isd=id_dao.getSingleIssue(Integer.parseInt(getIssueid()));
		this.setId_temp(isd);
		result=SUCCESS;
		return result;
		
	}
	public String editPatient()
	{
		IssueDetail isd=new IssueDetail();
		IssueDetailDao id_dao=new IssueDetailDaoImpl();
		isd=id_dao.getSingleIssue(Integer.parseInt(getIssueid()));
		this.setId_temp(isd);
		result=SUCCESS;
		return result;
	}
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public IssueDetail getId_temp() {
		return id_temp;
	}
	public void setId_temp(IssueDetail idTemp) {
		id_temp = idTemp;
	}
	public String getIssueid() {
		return issueid;
	}
	public void setIssueid(String issueid) {
		this.issueid = issueid;
	}

}
