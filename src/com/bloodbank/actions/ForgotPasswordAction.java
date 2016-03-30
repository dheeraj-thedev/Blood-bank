package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.mail.MessagingException;


import com.bloodbank.dao.LogInMasterDao;
import com.bloodbank.dao.impl.LogInMasterDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.mail.model.MailBean;
import com.mail.service.SendMailService;
import com.mail.service.impl.SendMailServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ForgotPasswordAction extends ActionSupport{

	
	private static final long serialVersionUID = 1L;
	private String result;
	private AccountDetail ad;
	private List<AccountDetail> AccList;
	public String forgotpwd() throws MessagingException
	
	
		
		{
			
			System.out.println("*****ShowAllStudentsAction.showAllStudent()*****");
			//HttpSession httpSession = request.getSession();
			List<AccountDetail> list1=new ArrayList<AccountDetail>();
			LogInMasterDao masterDao=new LogInMasterDaoImpl();
			list1 = masterDao.forgotPassword(ad);
			if (list1.size() == 1) {
				Iterator<AccountDetail> it=list1.iterator();
				while(it.hasNext())
				{
					ad=it.next();
				}
				System.out.println(ad.getEmailId());
				String email = ad.getEmailId();
				MailBean bean= new MailBean();
				bean.setFrom("lifelineblood1@gmail.com");
				bean.setPassword("lifeline999");
				bean.setSubject("Password");
				
				bean.setCc(null);
				bean.setBcc(null);
				bean.setBody("Your Password Remainder:<br/>" +
						"Your Username is:" + ad.getLogin() +
						"<br/> Your Password Is:"+"<html><body><font color=RED size=30px><b>"+ ad.getPassword()+"</b></font></body></html>");
				List<String> to_address=new ArrayList<String>();
				to_address.add(email);
				bean.setTo(to_address);
				bean.setMimeType("text/html");
				SendMailService service=new SendMailServiceImpl();
				service.sendMail(bean);
				result=SUCCESS;
				
			}
			return result;
	}
	public List<AccountDetail> getAccList() {
		return AccList;
	}
	public void setAccList(List<AccountDetail> accList) {
		AccList = accList;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public AccountDetail getAd() {
		return ad;
	}
	public void setAd(AccountDetail ad) {
		this.ad = ad;
	}
}
