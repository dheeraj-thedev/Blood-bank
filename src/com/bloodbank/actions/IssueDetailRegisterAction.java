package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.bloodbank.dao.InventoryDetailDao;
import com.bloodbank.dao.IssueDetailDao;
import com.bloodbank.dao.impl.InventoryDetailDaoImpl;
import com.bloodbank.dao.impl.IssueDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.HospitalDetail;
import com.bloodbank.model.InventoryDetail;
import com.bloodbank.model.IssueDetail;
import com.bloodbank.model.PatientDetail;

import com.opensymphony.xwork2.ActionSupport;

public class IssueDetailRegisterAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1817894082826359861L;
	private String type;
	private String str;
	private String result; 
	private IssueDetail id;
	private String city_state;
	private String country;
	private List<InventoryDetail> inventoryList;
	private InventoryDetail ind;
	private HospitalDetail hd;
	private PatientDetail pd;
	private ContactDetail cd;
	private DonorDetail dd;

	public String checkcustomertype()
	{
		if(getType().equals("1"))
		{
			System.out.println(getType());
			str="Hospital";
			System.out.println("IssueDetailRegisterAction.checkcustomertype()");
		}else
		{
			str="Patient";
		}
		result=SUCCESS;
		return result;
	}
	public String checkpatientdonor()
	{
		System.out.println(dd.getDonorRandomId());
		IssueDetailDao detailDao=new IssueDetailDaoImpl();
		
		if(dd.getDonorRandomId().length()>0)
		{
			List<DonorDetail> list1=new ArrayList<DonorDetail>();
			list1=detailDao.isValidUniqueId(dd);
			if (list1.size() == 1) 
			 {
				
				Iterator<DonorDetail> itr1=list1.iterator();
				while(itr1.hasNext())
				{
					dd=itr1.next();
				}	
				str="PatientisDonor";
				
				System.out.println(dd.getContactDetail());
				
			 }
			else
			{
				str="wrongId";
			}
			
			
			
		}
		else
		{
		str="normalPatient";
		}
		result=SUCCESS;
		return result;
		
	}
	public String registerHospital()
	{
		IssueDetailDao detailDao=new IssueDetailDaoImpl();

		InventoryDetailDao detailDao2=new InventoryDetailDaoImpl();
		inventoryList=detailDao2.getInventoryByGroup(id);
		Iterator<InventoryDetail> itr1=inventoryList.iterator();
		while(itr1.hasNext())
		{
			ind=itr1.next();
		}
		if(ind.getBottlesAvailable()>id.getNoOfBottles())
		{
		System.out.println("available");
		ind.setBottlesAvailable(ind.getBottlesAvailable()-id.getNoOfBottles());
		}
		
		else
		{
			result=NONE;
			str="notavail";
		}
		id.setHospitalDetail(hd);
		if(detailDao2.isRecordInserted(ind)){
			System.out.println("INSERT");
			System.out.println("INSERT DONE");
		}
		if(detailDao.isIssueInserted(id))
		{
			str="hospital_registered";	
		result=SUCCESS;
		
		}
		return result;
	}
	public String registerPatient()
	{
		IssueDetailDao detailDao=new IssueDetailDaoImpl();
		//System.out.println(dd.getDonorId());
		InventoryDetailDao detailDao2=new InventoryDetailDaoImpl();
		inventoryList=detailDao2.getInventoryByGroup(id);
		Iterator<InventoryDetail> itr1=inventoryList.iterator();
		while(itr1.hasNext())
		{
			ind=itr1.next();
		}	
		if(ind.getBottlesAvailable()>id.getNoOfBottles())
		{
		System.out.println("available");
		ind.setBottlesAvailable(ind.getBottlesAvailable()-id.getNoOfBottles());
		}
		else
		{
			result=NONE;
			str="notavail";
		}
		
		if(!(dd.getDonorId()==null))
		{
		dd.setContactDetail(cd);
		pd.setDonorDetail(dd);
		dd.setContactDetail(cd);
		}
		cd.setCity(getCity_state());
		cd.setState(getCountry());
		pd.setContactDetail(cd);
		id.setPatientDetail(pd);
		pd.setPurchaseDate(id.getIssueDate());
		
	
	
		if(detailDao2.isRecordInserted(ind)){
			System.out.println("INSERT");
			System.out.println("INSERT DONE");
		}
		if(detailDao.isIssueInserted(id))
		{
		str="patient_registered";	
		result=SUCCESS;
		}
		return result;
	}
	public String editPatientDetail()
	{
		IssueDetailDao detailDao=new IssueDetailDaoImpl();
		//System.out.println(dd.getDonorId());
//		if(!(dd.getDonorId()==null))
//		{
//		dd.setContactDetail(cd);
//		pd.setDonorDetail(dd);
//		dd.setContactDetail(cd);
//		}
		cd.setCity(getCity_state());
		cd.setState(getCountry());
		pd.setContactDetail(cd);
		id.setPatientDetail(pd);
		pd.setPurchaseDate(id.getIssueDate());
		
	
	
	
		if(detailDao.isIssueInserted(id))
		{
		str="patient_registered";	
		result=SUCCESS;
		}
		return result;
	}
	public void validate()
	{
		
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public IssueDetail getId() {
		return id;
	}
	public void setId(IssueDetail id) {
		this.id = id;
	}
	public HospitalDetail getHd() {
		return hd;
	}
	public void setHd(HospitalDetail hd) {
		this.hd = hd;
	}
	public PatientDetail getPd() {
		return pd;
	}
	public void setPd(PatientDetail pd) {
		this.pd = pd;
	}
	public ContactDetail getCd() {
		return cd;
	}
	public void setCd(ContactDetail cd) {
		this.cd = cd;
	}
	public DonorDetail getDd() {
		return dd;
	}
	public void setDd(DonorDetail dd) {
		this.dd = dd;
	}
	public List<InventoryDetail> getInventoryList() {
		return inventoryList;
	}
	public void setInventoryList(List<InventoryDetail> inventoryList) {
		this.inventoryList = inventoryList;
	}
	public InventoryDetail getInd() {
		return ind;
	}
	public void setInd(InventoryDetail ind) {
		this.ind = ind;
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
