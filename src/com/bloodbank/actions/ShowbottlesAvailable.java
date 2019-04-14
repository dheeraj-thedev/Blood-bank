package com.bloodbank.actions;

import java.util.ArrayList;
import java.util.List;

import com.bloodbank.dao.InventoryDetailDao;
import com.bloodbank.dao.impl.InventoryDetailDaoImpl;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.InventoryDetail;
import com.opensymphony.xwork2.ActionSupport;

public class ShowbottlesAvailable extends ActionSupport {
	private InventoryDetail id;
	private String result;
	private String str;
	private List<InventoryDetail> inventoryList;
	public String checkBottles()
	{
		InventoryDetailDao dao=new InventoryDetailDaoImpl();
		inventoryList=new ArrayList<InventoryDetail>();
		System.out.println("12156454");
		inventoryList=dao.getInventoryDetail();
		if(inventoryList.size()>0)
		{
			str="Avilable_Bottles";
			result=SUCCESS;	
		}		
		return result;
	}
	public InventoryDetail getId() {
		return id;
	}
	public void setId(InventoryDetail id) {
		this.id = id;
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
	public List<InventoryDetail> getInventoryList() {
		return inventoryList;
	}
	public void setInventoryList(List<InventoryDetail> inventoryList) {
		this.inventoryList = inventoryList;
	}

}
