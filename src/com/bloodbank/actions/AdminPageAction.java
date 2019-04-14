package com.bloodbank.actions;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class AdminPageAction extends ActionSupport {
	private String str;
	private String result;
	public String generatepage()
	{
		System.out.println("AdminPageAction.generatepage()");
	
		HttpServletRequest request = ServletActionContext.getRequest();
		String url = request.getRequestURI();
		
		
		System.out.println(url);
		str="Staff";
		result=SUCCESS;
		return result;
	}
	public String getResult() {
		return result;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public void setResult(String result) {
		this.result = result;
	}

}
