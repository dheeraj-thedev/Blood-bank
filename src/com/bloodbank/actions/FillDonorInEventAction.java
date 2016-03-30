package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.bloodbank.dao.BloodBottleDetailDao;
import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.IssueDetailDao;
import com.bloodbank.dao.impl.BloodBottleDetailDaoImpl;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.dao.impl.IssueDetailDaoImpl;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.EventDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FillDonorInEventAction extends ActionSupport{
	private String str;
	private String eveid;
	private EventDetail ed;
	private DonorDetail dd;
	private String result;
	private BloodBottleDetail bbd;
	public String filldonor()
	{
		EventDetailDao ed_Dao=new EventDetailDaoImpl();
		System.out.println(getEveid());
		if(!(getEveid()==null))
		{
		ed=ed_Dao.getSingleEvent(Integer.parseInt(getEveid()));
		System.out.println(ed);
		Map session = ActionContext.getContext().getSession();
		session.put("Eventdetail", ed);
		}
		else
		{
				System.out.println("121332");
		
		}
		result=SUCCESS;
		
		return result;	
		
	}
	public String CheckFillDonor()
	{
		System.out.println("121212");
		IssueDetailDao issueDetailDao=new IssueDetailDaoImpl();
		List<DonorDetail> list1=new ArrayList<DonorDetail>();
		list1=issueDetailDao.isValidUniqueId(dd);
		if(list1.size()==1)
		{
			System.out.println("Valid Unique Id");
			System.out.println(dd);
			Iterator<DonorDetail> itr1=list1.iterator();
			while(itr1.hasNext())
			{
				dd=itr1.next();
			}	
			Map session = ActionContext.getContext().getSession();
			ed=(EventDetail) session.get("Eventdetail");
			Date date=new Date();
			System.out.println(date.getDate());
			bbd.setDonorDetail(dd);
			bbd.setEventDetail(ed);
			BloodBottleDetailDao bbdao=new BloodBottleDetailDaoImpl();
			if(bbdao.isBloodBottleInserted(bbd))
			{
			str="event_donor_registered";
			result=SUCCESS;
			session.remove("Eventdetail");
			}
		}
		return result;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public EventDetail getEd() {
		return ed;
	}
	public void setEd(EventDetail ed) {
		this.ed = ed;
	}
	public String getEveid() {
		return eveid;
	}
	public void setEveid(String eveid) {
		this.eveid = eveid;
	}
	public DonorDetail getDd() {
		return dd;
	}
	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}
	public BloodBottleDetail getBbd() {
		return bbd;
	}
	public void setBbd(BloodBottleDetail bbd) {
		this.bbd = bbd;
	}

}
