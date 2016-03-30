package com.bloodbank.model;

// Generated Mar 16, 2013 12:03:45 PM by Hibernate Tools 3.3.0.GA

import java.util.HashSet;
import java.util.Set;

/**
 * ContactDetail generated by hbm2java
 */
public class ContactDetail implements java.io.Serializable {

	private Integer contactId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String address;
	private String city;
	private String state;
	private String pincode;
	private String birthDate;
	private String contactNo;
	private String emailId;
	private String gender;
	private Set<UserDetail> userDetails = new HashSet<UserDetail>(0);
	private Set<PatientDetail> patientDetails = new HashSet<PatientDetail>(0);
	private Set<StaffDetail> staffDetails = new HashSet<StaffDetail>(0);
	private Set<DonorDetail> donorDetails = new HashSet<DonorDetail>(0);

	public ContactDetail() {
	}

	public ContactDetail(String firstName, String middleName, String lastName,
			String address, String city, String state, String pincode,
			String birthDate, String contactNo, String emailId, String gender,
			Set<UserDetail> userDetails, Set<PatientDetail> patientDetails,
			Set<StaffDetail> staffDetails, Set<DonorDetail> donorDetails) {
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.birthDate = birthDate;
		this.contactNo = contactNo;
		this.emailId = emailId;
		this.gender = gender;
		this.userDetails = userDetails;
		this.patientDetails = patientDetails;
		this.staffDetails = staffDetails;
		this.donorDetails = donorDetails;
	}

	public Integer getContactId() {
		return this.contactId;
	}

	public void setContactId(Integer contactId) {
		this.contactId = contactId;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return this.middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return this.pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getContactNo() {
		return this.contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmailId() {
		return this.emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Set<UserDetail> getUserDetails() {
		return this.userDetails;
	}

	public void setUserDetails(Set<UserDetail> userDetails) {
		this.userDetails = userDetails;
	}

	public Set<PatientDetail> getPatientDetails() {
		return this.patientDetails;
	}

	public void setPatientDetails(Set<PatientDetail> patientDetails) {
		this.patientDetails = patientDetails;
	}

	public Set<StaffDetail> getStaffDetails() {
		return this.staffDetails;
	}

	public void setStaffDetails(Set<StaffDetail> staffDetails) {
		this.staffDetails = staffDetails;
	}

	public Set<DonorDetail> getDonorDetails() {
		return this.donorDetails;
	}

	public void setDonorDetails(Set<DonorDetail> donorDetails) {
		this.donorDetails = donorDetails;
	}

}