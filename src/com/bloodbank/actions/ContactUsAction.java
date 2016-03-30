package com.bloodbank.actions;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.MessagingException;

import com.mail.model.MailBean;
import com.mail.service.SendMailService;
import com.mail.service.impl.SendMailServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ContactUsAction extends ActionSupport{

	private String result;
	private String str;
	private String Name;
	private String Email;
	private String message;
	
	public String submitreply() throws Exception
	{
		System.out.println(getEmail());
		System.out.println(getMessage());
		//MailBean bean= new MailBean();
		String email=getEmail();
		Properties props = new Properties();
        Session session = Session.getDefaultInstance(props, null);

        //String msgBody = "...";

        try {
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(email, "Example.com Admin"));
            msg.addRecipient(Message.RecipientType.TO,
                             new InternetAddress("lifelineblood1@gmail.com", "Mr. User"));
            msg.setSubject("Your Example.com account has been activated");
            msg.setText(getMessage());
            Transport.send(msg);

        } catch (AddressException e) {
            // ...
        } catch (MessagingException e) {
            // ...
        }
		result=SUCCESS;
		return result;
	}
	
	public void validate()
	{
		
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

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
