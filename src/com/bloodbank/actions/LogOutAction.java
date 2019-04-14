package com.bloodbank.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogOutAction extends ActionSupport implements ServletRequestAware,
ServletResponseAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	public String LogOutUser() {

		// Map session = ActionContext.getContext().getSession();
		session = request.getSession(false);
		try {
			System.out.println("tututut.....");
			session.removeAttribute("UserType");
			session.removeAttribute("UserName");
			session.removeAttribute("tracker");
			session.invalidate();
			
			result =SUCCESS;

		} catch (Exception e) {
			result = INPUT;
			// TODO: handle exception
		}

		return result;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	public HttpSession getSession() {
		return session;
	}
	public void setSession(HttpSession session) {
		this.session = session;
	}
	
	
}
