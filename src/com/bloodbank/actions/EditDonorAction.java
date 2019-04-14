package com.bloodbank.actions;

import com.bloodbank.dao.DonorDetailDao;
import com.bloodbank.dao.impl.DonorDetailDaoImpl;
import com.bloodbank.model.DonorDetail;
import com.opensymphony.xwork2.ActionSupport;

public class EditDonorAction extends ActionSupport{
	private DonorDetail dd;
	private String result;
	private String donorid;
	private String str;
	
	
	
	public String deleteDonor()
	{
	DonorDetailDao daDetail=new DonorDetailDaoImpl();
	daDetail.isDonorDeleted(Integer.parseInt(getDonorid()));
	str="donor_delete";
	result=SUCCESS;
	return result;
	}
	public String getSingleDonor()
	{
		DonorDetail dd_temp=new DonorDetail();
		DonorDetailDao dao=new DonorDetailDaoImpl();
		dd_temp=dao.getSingleDonor(Integer.parseInt(getDonorid()));
		this.setDd(dd_temp);
		result=SUCCESS;
		return result;
	}





	public String getResult() {
		return result;
	}



	public void setResult(String result) {
		this.result = result;
	}



	public String getDonorid() {
		return donorid;
	}



	public void setDonorid(String donorid) {
		this.donorid = donorid;
	}



	public String getStr() {
		return str;
	}



	public void setStr(String str) {
		this.str = str;
	}
	public DonorDetail getDd() {
		return dd;
	}
	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}
	
}
