package com.bloodbank.model;

// Generated Mar 16, 2013 12:03:45 PM by Hibernate Tools 3.3.0.GA

import java.util.HashSet;
import java.util.Set;

/**
 * BloodBottleDetail generated by hbm2java
 */
public class BloodBottleDetail implements java.io.Serializable {

	private Integer bottleId;
	private DonorDetail donorDetail;
	private EventDetail eventDetail;
	private String testingDate;
	private Set<TestDetail> testDetails = new HashSet<TestDetail>(0);

	public BloodBottleDetail() {
	}

	public BloodBottleDetail(DonorDetail donorDetail, EventDetail eventDetail,
			String testingDate, Set<TestDetail> testDetails) {
		this.donorDetail = donorDetail;
		this.eventDetail = eventDetail;
		this.testingDate = testingDate;
		this.testDetails = testDetails;
	}

	public Integer getBottleId() {
		return this.bottleId;
	}

	public void setBottleId(Integer bottleId) {
		this.bottleId = bottleId;
	}

	public DonorDetail getDonorDetail() {
		return this.donorDetail;
	}

	public void setDonorDetail(DonorDetail donorDetail) {
		this.donorDetail = donorDetail;
	}

	public EventDetail getEventDetail() {
		return this.eventDetail;
	}

	public void setEventDetail(EventDetail eventDetail) {
		this.eventDetail = eventDetail;
	}

	public String getTestingDate() {
		return this.testingDate;
	}

	public void setTestingDate(String testingDate) {
		this.testingDate = testingDate;
	}

	public Set<TestDetail> getTestDetails() {
		return this.testDetails;
	}

	public void setTestDetails(Set<TestDetail> testDetails) {
		this.testDetails = testDetails;
	}

}
