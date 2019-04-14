package com.bloodbank.actions;

import com.bloodbank.dao.IssueDetailDao;
import com.bloodbank.dao.impl.IssueDetailDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteIssueDetail extends ActionSupport{
	
	private String result;
	private String str;
	private String issueid;
	public String deleteHospital()
	{
		IssueDetailDao id_daoImpl=new IssueDetailDaoImpl();
		id_daoImpl.isissueDeleted(Integer.parseInt(getIssueid()));
		str="issue_deleted";
		result=SUCCESS;
		return result;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public String getIssueid() {
		return issueid;
	}
	public void setIssueid(String issueid) {
		this.issueid = issueid;
	}
	

}
