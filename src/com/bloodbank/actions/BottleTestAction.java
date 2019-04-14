package com.bloodbank.actions;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.print.attribute.standard.DateTimeAtCreation;

import com.bloodbank.dao.BloodBottleDetailDao;
import com.bloodbank.dao.impl.BloodBottleDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.TestDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BottleTestAction extends ActionSupport {
	private String result;
	private String str;
	private BloodBottleDetail bbd;
	private TestDetail td;
	private EventDetail ed;
	private DonorDetail dd;
	private List<BloodBottleDetail> BottleList;
	private String bottleid;
	public String TestBottle() 
	{
		BottleList=new ArrayList<BloodBottleDetail>();
		BloodBottleDetailDao bloodDao=new BloodBottleDetailDaoImpl();
		BottleList=bloodDao.findBottlesforTest(bbd);
		if(BottleList.size()>0)
		{
		str="testbottle";	
		result=SUCCESS;
		}
		return result;
	}
	public String EnterTestDetail()
	{
		
		BloodBottleDetailDao bloodDao=new BloodBottleDetailDaoImpl();
		bbd=bloodDao.getSingleBottle(Integer.parseInt(getBottleid()));
		System.out.println("BottleTestAction.EnterTestDetail()");
		Map session = ActionContext.getContext().getSession();
		session.put("Bottle_Event", bbd.getEventDetail());
		session.put("Bottle_donor", bbd.getDonorDetail());
		session.put("Bottle",bbd);
		result=SUCCESS;
		return result;
	}
	public String RegisterTestDetail()
	{
		System.out.println("212132123");		
		Date timeStamp = new Date();
		System.out.println(timeStamp.toString());
		SimpleDateFormat ft = 
		      new SimpleDateFormat ("dd.MM.yyyy");
		String abc=ft.format(timeStamp);
		
	
		Map session = ActionContext.getContext().getSession();
		ed=(EventDetail) session.get("Bottle_Event");
		dd=(DonorDetail) session.get("Bottle_donor");
		bbd=(BloodBottleDetail) session.get("Bottle");
		bbd.setDonorDetail(dd);
		bbd.setEventDetail(ed);
		td.setBloodBottleDetail(bbd);
		bbd.setTestingDate(abc);
		BloodBottleDetailDao bloodDao=new BloodBottleDetailDaoImpl();
		if(bloodDao.isTestInserted(td))
		{
			
			str="test_registered";
			result=SUCCESS;	
			
		}
		else
		{
			bbd.setTestingDate(null);
			result=ERROR;
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
	public List<BloodBottleDetail> getBottleList() {
		return BottleList;
	}
	public void setBottleList(List<BloodBottleDetail> bottleList) {
		BottleList = bottleList;
	}
	public BloodBottleDetail getBbd() {
		return bbd;
	}
	public void setBbd(BloodBottleDetail bbd) {
		this.bbd = bbd;
	}
	public TestDetail getTd() {
		return td;
	}
	public void setTd(TestDetail td) {
		this.td = td;
	}
	public String getBottleid() {
		return bottleid;
	}
	public void setBottleid(String bottleid) {
		this.bottleid = bottleid;
	}
	public EventDetail getEd() {
		return ed;
	}
	public void setEd(EventDetail ed) {
		this.ed = ed;
	}
}
