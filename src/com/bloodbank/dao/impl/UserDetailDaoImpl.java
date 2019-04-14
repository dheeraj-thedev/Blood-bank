package com.bloodbank.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.UserDetailDao;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.UserDetail;
import com.bloodbank.util.HibernateUtil;

public class UserDetailDaoImpl implements UserDetailDao{
	// TODO Auto-generated method stub
	public boolean isUserInserted(UserDetail ud){
	System.out.println("UserDetailDaoImpl.isStaffInserted()");
	Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	Transaction tx = null;
	boolean b = false;
	try {
		
		tx = session.beginTransaction();
		session.saveOrUpdate(ud);
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
	public List<BloodBottleDetail> getAllBottles(DonorDetail dd) {
		// TODO Auto-generated method stub
		List<BloodBottleDetail> bottleList = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM BloodBottleDetail bbd WHERE bbd.donorDetail.donorId='"+dd.getDonorId()+"'");
			bottleList = query.list();
			System.out.println("RECORDS FOUND==" + bottleList);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return 	bottleList;
	
	}
}
