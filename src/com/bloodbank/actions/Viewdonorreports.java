package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.bloodbank.dao.IssueDetailDao;
import com.bloodbank.dao.UserDetailDao;
import com.bloodbank.dao.impl.IssueDetailDaoImpl;
import com.bloodbank.dao.impl.UserDetailDaoImpl;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.DonorDetail;
import com.opensymphony.xwork2.ActionSupport;

public class Viewdonorreports extends ActionSupport{
	private String result;
	private List<DonorDetail> donorlist;
	private List<BloodBottleDetail> bottleList;
	private DonorDetail dd;
	private String str;
	public String viewmyreportpdf()
	{
		System.out.println(dd.getDonorRandomId());
		donorlist=new ArrayList<DonorDetail>();
		bottleList=new ArrayList<BloodBottleDetail>();
		if(dd.getDonorRandomId().length()>0)
		{
		IssueDetailDao detailDao=new IssueDetailDaoImpl();
		UserDetailDao ud_dao=new UserDetailDaoImpl();
		donorlist=detailDao.isValidUniqueId(dd);
			if (donorlist.size() == 1) 
			 {
					Iterator<DonorDetail> itr1=donorlist.iterator();
					while(itr1.hasNext())
					{
						dd=itr1.next();
						System.out.println(dd);
						
					}	
					bottleList=ud_dao.getAllBottles(dd);
					str="bottleList";
					
					System.out.println(dd.getContactDetail());
				 
			}
			else
			{
				str="wrongId";
			}
		}
		else
		{
			str="Donor";
		}
	
		result=SUCCESS;
		return result;	
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public List<DonorDetail> getDonorlist() {
		return donorlist;
	}
	public void setDonorlist(List<DonorDetail> donorlist) {
		this.donorlist = donorlist;
	}
	public DonorDetail getDd() {
		return dd;
	}
	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public List<BloodBottleDetail> getBottleList() {
		return bottleList;
	}
	public void setBottleList(List<BloodBottleDetail> bottleList) {
		this.bottleList = bottleList;
	}

}
