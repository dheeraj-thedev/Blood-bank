package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.List;


import com.bloodbank.dao.IssueDetailDao;

import com.bloodbank.dao.impl.IssueDetailDaoImpl;

import com.bloodbank.model.IssueDetail;
import com.opensymphony.xwork2.ActionSupport;

public class ShowIssueDetail extends ActionSupport {
	
	private String result;
	private String str;
	private List<IssueDetail> hospitalList;
	private List<IssueDetail> patientList;
	public String showHospital()
	{
		hospitalList=new ArrayList<IssueDetail>();
		IssueDetailDao id_dao=new IssueDetailDaoImpl();
		hospitalList=id_dao.getAllHospitals();
		if(hospitalList.size() > 0)
		{
		str="hospitalList";
		result=SUCCESS;
		}
		
		return result;
		
	}

	public String showPatients()
	{	
		patientList=new ArrayList<IssueDetail>();
		IssueDetailDao id_dao=new IssueDetailDaoImpl();
		patientList=id_dao.getAllPatients();
		if(patientList.size() > 0)
		{
		str="patientList";
		result=SUCCESS;
		}
		
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

	public List<IssueDetail> getHospitalList() {
		return hospitalList;
	}

	public void setHospitalList(List<IssueDetail> hospitalList) {
		this.hospitalList = hospitalList;
	}

	public List<IssueDetail> getPatientList() {
		return patientList;
	}

	public void setPatientList(List<IssueDetail> patientList) {
		this.patientList = patientList;
	}
}
