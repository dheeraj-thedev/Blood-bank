package com.bloodbank.dao.impl;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


import com.bloodbank.dao.StaffDetailDao;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.StaffDetail;
import com.bloodbank.util.HibernateUtil;


public class StaffDetailDaoImpl implements StaffDetailDao {
	private List<StaffDetail> staffDetails;
	/*public boolean isStaffInserted(StaffDetail sd) {
		// TODO Auto-generated method stub
		System.out.println("StaffDetailDaoImpl.isStaffInserted()");
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			System.out.println("StaffDetailDaoImpl.isStaffInserted()");
			tx = session.beginTransaction();
			session.saveOrUpdate(sd);
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
	}*/
	public AccountDetail getSingleStaff(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		AccountDetail ad=null;
		try {
			tx = session.beginTransaction();
			ad=(AccountDetail) session.load(AccountDetail.class, id);
			System.out.println("SD=="+ad);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return ad;
	}
	public boolean isStaffUpdated(AccountDetail ad) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			session.update(ad);
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
	
	public List<StaffDetail> getAssociatedStaffWithEvent(Integer[] ids)
	{
		staffDetails = new ArrayList<StaffDetail>();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM StaffDetail sd WHERE sd.staffId IN (:IdList)").setParameterList("IdList", ids);
			staffDetails = query.list();
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		
		return staffDetails;
	}
	

}
