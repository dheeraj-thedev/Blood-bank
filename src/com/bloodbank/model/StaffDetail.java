package com.bloodbank.model;

// Generated Mar 16, 2013 12:03:45 PM by Hibernate Tools 3.3.0.GA

import java.util.HashSet;
import java.util.Set;

/**
 * StaffDetail generated by hbm2java
 */
public class StaffDetail implements java.io.Serializable {

	private Integer staffId;
	private ContactDetail contactDetail;
	private String joiningDate;
	private String qualification;
	private String post;
	private Set<EventStaffDetail> eventStaffDetails = new HashSet<EventStaffDetail>(
			0);
	private Set<AccountDetail> accountDetails = new HashSet<AccountDetail>(0);

	public StaffDetail() {
	}

	public StaffDetail(ContactDetail contactDetail, String joiningDate,
			String qualification, String post,
			Set<EventStaffDetail> eventStaffDetails,
			Set<AccountDetail> accountDetails) {
		this.contactDetail = contactDetail;
		this.joiningDate = joiningDate;
		this.qualification = qualification;
		this.post = post;
		this.eventStaffDetails = eventStaffDetails;
		this.accountDetails = accountDetails;
	}

	public Integer getStaffId() {
		return this.staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public ContactDetail getContactDetail() {
		return this.contactDetail;
	}

	public void setContactDetail(ContactDetail contactDetail) {
		this.contactDetail = contactDetail;
	}

	public String getJoiningDate() {
		return this.joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	public String getQualification() {
		return this.qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getPost() {
		return this.post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public Set<EventStaffDetail> getEventStaffDetails() {
		return this.eventStaffDetails;
	}

	public void setEventStaffDetails(Set<EventStaffDetail> eventStaffDetails) {
		this.eventStaffDetails = eventStaffDetails;
	}

	public Set<AccountDetail> getAccountDetails() {
		return this.accountDetails;
	}

	public void setAccountDetails(Set<AccountDetail> accountDetails) {
		this.accountDetails = accountDetails;
	}

}
