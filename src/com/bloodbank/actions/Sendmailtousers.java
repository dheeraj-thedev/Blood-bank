package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.mail.MessagingException;

import com.bloodbank.dao.AccountDetailDao;
import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.dao.EventDetailDao;
import com.bloodbank.dao.impl.AccountDetailDaoImpl;
import com.bloodbank.dao.impl.ContactDetailDaoImpl;
import com.bloodbank.dao.impl.EventDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.EventDetail;
import com.mail.model.MailBean;
import com.mail.service.SendMailService;
import com.mail.service.impl.SendMailServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class Sendmailtousers extends ActionSupport {

	private String result;
	private String str;
	private String eveid;
	private EventDetail ed;
	private AccountDetail ad;
	private List<AccountDetail> userList;
	public String SendMail() throws MessagingException
	{
		EventDetailDao ed_dao=new EventDetailDaoImpl();
		ed=ed_dao.getSingleEvent(Integer.parseInt(getEveid()));
		userList=new ArrayList<AccountDetail>();
		ContactDetailDao cd_dao=new ContactDetailDaoImpl();
		userList=cd_dao.getAllUsers();
		if (userList.size() >0) 
		 {
			List<String> to_address=new ArrayList<String>();
			Iterator<AccountDetail> itr1=userList.iterator();
			while(itr1.hasNext())
			{
				ad=itr1.next();
				System.out.println(ad.getEmailId());
				to_address.add(ad.getEmailId());
			}
			MailBean bean= new MailBean();
			bean.setFrom("lifelineblood1@gmail.com");
			bean.setPassword("lifeline999");
			bean.setSubject("Thanks");
			bean.setCc(null);
			bean.setBcc(null);
			
			bean.setBody("Dear User,\n kind attention\n" +
					"Our next Blood Donation Camp is organized at following venue & time:\n\n"+
					"Event:"+ed.getEventTitle()  +
					"\n\nDate:"+ed.getEventDate()+
					"\n\nVanue:"+ed.getEventVanue()+
					"\n\n Description:"+ ed.getEventDescription()+
					"\n\nPlease come and co-operate us ");
			
			
//			to_address.add(email);
			bean.setTo(to_address);
			bean.setMimeType("text/plain");
			SendMailService service=new SendMailServiceImpl();
			service.sendMail(bean);
//			
		 }
		System.out.println(ed.getEventTitle());
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
	public String getEveid() {
		return eveid;
	}
	public void setEveid(String eveid) {
		this.eveid = eveid;
	}
	public EventDetail getEd() {
		return ed;
	}
	public void setEd(EventDetail ed) {
		this.ed = ed;
	}
	public List<AccountDetail> getUserList() {
		return userList;
	}
	public void setUserList(List<AccountDetail> userList) {
		this.userList = userList;
	}
	public AccountDetail getAd() {
		return ad;
	}
	public void setAd(AccountDetail ad) {
		this.ad = ad;
	}
	
}
