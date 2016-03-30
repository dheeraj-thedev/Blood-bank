package com.bloodbank.actions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.dao.DonorDetailDao;
import com.bloodbank.dao.InventoryDetailDao;
import com.bloodbank.dao.IssueDetailDao;

import com.bloodbank.dao.impl.ContactDetailDaoImpl;
import com.bloodbank.dao.impl.DonorDetailDaoImpl;
import com.bloodbank.dao.impl.InventoryDetailDaoImpl;
import com.bloodbank.dao.impl.IssueDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.InventoryDetail;
import com.mail.model.MailBean;
import com.mail.service.SendMailService;
import com.mail.service.impl.SendMailServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterDonorAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String ALPHA_NUM = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	private List<DonorDetail> donorlist;
	private List<InventoryDetail> inventoryList;
	private DonorDetail dd;
	private ContactDetail cd;
	private InventoryDetail id;
	private String result;
	private String str;
	private String city_state;
	private String country;

	public String checkdonor() {
		System.out.println(dd.getDonorRandomId());
		donorlist = new ArrayList<DonorDetail>();
		if (dd.getDonorRandomId().length() > 0) {
			IssueDetailDao detailDao = new IssueDetailDaoImpl();
			donorlist = detailDao.isValidUniqueId(dd);
			if (donorlist.size() == 1) {
				Iterator<DonorDetail> itr1 = donorlist.iterator();
				while (itr1.hasNext()) {
					dd = itr1.next();
				}
				str = "Donor";

			} else {
				str = "wrongId";
			}
		} else {
			str = "Donor";
		}
		result = SUCCESS;
		return result;
	}

	public String registerDonor() throws Exception {
		if (!(dd.getDonorId() == null)) {
			cd.setCity(getCity_state());
			cd.setState(getCountry());
			System.out.println(dd.getBloodGroup());
			InventoryDetailDao detailDao = new InventoryDetailDaoImpl();
			inventoryList = detailDao.getInventoryByGroup(dd);
			if (inventoryList.size() == 1) {
				Iterator<InventoryDetail> itr1 = inventoryList.iterator();
				while (itr1.hasNext()) {
					id = itr1.next();
				}
				str = "Donor";

			}
			id.setBottlesAvailable(id.getBottlesAvailable() + 1);
			dd.setDonatedTimes(dd.getDonatedTimes() + 1);
			dd.setContactDetail(cd);
			if (detailDao.isRecordInserted(id)) {
				System.out.println("INSERT");
				System.out.println("INSERT DONE");
			}

		} else {
			System.out.println("*****InsertDonoAction.register()*****");
			cd.setCity(getCity_state());
			cd.setState(getCountry());
			dd.setContactDetail(cd);
			// cd.setDonorDetail(dd);
			RegisterDonorAction grs = new RegisterDonorAction();
			String abc = grs.getAlphaNumeric(7);
			dd.setDonorRandomId(abc);
			dd.setDonatedTimes(1);
			System.out.println("Generated random String is :"
					+ grs.getAlphaNumeric(7));
			// System.out.println(grs.getAlphaNumeric(20));
			if (!(dd.getContactDetail().getEmailId() == null)) {
				MailBean bean = new MailBean();
				bean.setFrom("lifelineblood1@gmail.com");
				bean.setPassword("lifeline999");
				bean.setSubject("Password");

				bean.setCc(null);
				bean.setBcc(null);
				bean
						.setBody("Your  unique donor key is :\n"
								+ "<html><body><font color=RED size=30px><b>"
								+ abc
								+ "</b></font></body></html>"
								+ "<br/> This unique key is helpful when u will require blood:<br/>"
								+ "You will see blood report and download pdf after registering on website with the use of this key.  <br/>"
								+ "Thank you for donating blood.<br/><br/><br/>Best wishes for your happy live. ");
				List<String> to_address = new ArrayList<String>();
				to_address.add(dd.getContactDetail().getEmailId());
				bean.setTo(to_address);
				bean.setMimeType("text/html");
				SendMailService service = new SendMailServiceImpl();
				service.sendMail(bean);
			}
			InventoryDetailDao detailDao = new InventoryDetailDaoImpl();
			inventoryList = detailDao.getInventoryByGroup(dd);
			if (inventoryList.size() == 1) {
				Iterator<InventoryDetail> itr1 = inventoryList.iterator();
				while (itr1.hasNext()) {
					id = itr1.next();
				}
				str = "Donor";

			}
			id.setBottlesAvailable(id.getBottlesAvailable() + 1);
			System.out.println("contact detail");
			if (detailDao.isRecordInserted(id)) {
				System.out.println("INSERT");
				System.out.println("INSERT DONE");
			}

		}
		DonorDetailDao dd_daoImpl = new DonorDetailDaoImpl();

		if (dd_daoImpl.isDonorInserted(dd)) {
			System.out.println("INSERT");
			Map session = ActionContext.getContext().getSession();
			session.put("donorid", dd.getDonorRandomId());
			str = "donor_inserted";
			result = SUCCESS;
			System.out.println("INSERT DONE");

		} else {
			result = INPUT;
		}

		return result;

	}

	public String getAlphaNumeric(int len) {
		StringBuffer sb = new StringBuffer(len);
		for (int i = 0; i < len; i++) {
			int ndx = (int) (Math.random() * ALPHA_NUM.length());
			sb.append(ALPHA_NUM.charAt(ndx));
		}
		return sb.toString();
	}

	/*
	 * public void validate() { System.out.println("in validate");
	 * 
	 * 
	 * 
	 * }
	 */
	/*
	 * public void validate() {
	 * System.out.println("RegisterStaffAction.validate()");
	 * 
	 * System.out.println("121212"); if (cd.getFirstName().isEmpty()) {
	 * 
	 * System.out.println("15454564654"); addFieldError("cd.firstName",
	 * "***First Name is Required");
	 * 
	 * } if (cd.getMiddleName().isEmpty()) {
	 * 
	 * 
	 * 
	 * addFieldError("cd.middleName", "***Middle Name is Required"); } if
	 * (cd.getLastName().isEmpty()) {
	 * 
	 * 
	 * 
	 * addFieldError("cd.lastName", "***Last Name is Required"); }
	 * 
	 * 
	 * 
	 * if(cd.getContactNo().isEmpty()) { addFieldError("cd.contactNo",
	 * "***Contact No. is Required");
	 * 
	 * } if (cd.getBirthDate().isEmpty()) { addFieldError("cd.birthDate",
	 * "***Birthdate is Required"); } if (dd.getBloodGroup().isEmpty()) {
	 * //str="loginerror"; addFieldError("dd.bloodGroup",
	 * "***bloodgroup is Required");
	 * 
	 * } if (dd.getDonationDate().isEmpty()) { //str="loginerror";
	 * addFieldError("dd.donationDate", "***Donation Date is Required");
	 * 
	 * } if (dd.getBloodPressure().isEmpty()) {
	 * addFieldError("dd.bloodPressure", "***BloodPressure is Required"); } if
	 * (dd.getHemoglobin().isEmpty()) { addFieldError("dd.hemoglobin",
	 * "***Hemoglobin is Required"); } if (dd.getWeight()==null) {
	 * addFieldError("dd.weight", "***weight is Required"); } if
	 * (dd.getPulse()==null) { addFieldError("dd.pulse",
	 * "***pulse is Required"); } if (ad.getEmailId().isEmpty()) {
	 * addFieldError("ad.emailId", "***Email is Required"); }
	 * 
	 * 
	 * 
	 * 
	 * }
	 */

	public DonorDetail getDd() {
		return dd;
	}

	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}

	public ContactDetail getCd() {
		return cd;
	}

	public void setCd(ContactDetail cd) {
		this.cd = cd;
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

	public List<DonorDetail> getDonorlist() {
		return donorlist;
	}

	public void setDonorlist(List<DonorDetail> donorlist) {
		this.donorlist = donorlist;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public InventoryDetail getId() {
		return id;
	}

	public void setId(InventoryDetail id) {
		this.id = id;
	}

	public List<InventoryDetail> getInventoryList() {
		return inventoryList;
	}

	public void setInventoryList(List<InventoryDetail> inventoryList) {
		this.inventoryList = inventoryList;
	}

	public String getCity_state() {
		return city_state;
	}

	public void setCity_state(String cityState) {
		city_state = cityState;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
