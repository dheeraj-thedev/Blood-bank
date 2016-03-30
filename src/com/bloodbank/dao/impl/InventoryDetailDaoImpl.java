package com.bloodbank.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.InventoryDetailDao;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.InventoryDetail;
import com.bloodbank.model.IssueDetail;
import com.bloodbank.util.HibernateUtil;

public class InventoryDetailDaoImpl implements InventoryDetailDao {

	@Override
	public List<InventoryDetail> getInventoryByGroup(DonorDetail dd) {
List<InventoryDetail> inventoryList=null;
		
		String query="FROM InventoryDetail id WHERE id.bloodGroup='"+dd.getBloodGroup()+"'";
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query1 = session.createQuery(query);
			inventoryList = query1.list();
			System.out.println("RECORDS FOUND==" + inventoryList);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return inventoryList;
	}
	public List<InventoryDetail> getInventoryByGroup(IssueDetail id) {
		List<InventoryDetail> inventoryList=null;
				
				String query="FROM InventoryDetail ind WHERE ind.bloodGroup='"+id.getBloodGroup()+"'";
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = null;
				try {
					tx = session.beginTransaction();
					Query query1 = session.createQuery(query);
					inventoryList = query1.list();
					System.out.println("RECORDS FOUND==" + inventoryList);
					//System.out.println(ContactList.get(0).getContactDetail());
					tx.commit();
				} catch (Exception e) {
					// TODO: handle exception
					if (tx != null) {
						tx.rollback();
					}
					e.printStackTrace();
				}
				return inventoryList;
			}
	public boolean isRecordInserted(InventoryDetail id)
	{
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			
			session.saveOrUpdate(id);
			b = true;
			tx.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return b;
	}
	public List<InventoryDetail> getInventoryDetail() {
		List<InventoryDetail> inventoryList=null;
				
				String query="FROM InventoryDetail id ";
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = null;
				try {
					tx = session.beginTransaction();
					Query query1 = session.createQuery(query);
					inventoryList = query1.list();
					System.out.println("RECORDS FOUND==" + inventoryList);
					//System.out.println(ContactList.get(0).getContactDetail());
					tx.commit();
				} catch (Exception e) {
					// TODO: handle exception
					if (tx != null) {
						tx.rollback();
					}
					e.printStackTrace();
				}
				return inventoryList;
			}

}
