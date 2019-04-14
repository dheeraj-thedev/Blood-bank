package com.bloodbank.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.BloodBottleDetailDao;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.BloodBottleDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.TestDetail;

import com.bloodbank.util.HibernateUtil;

public class BloodBottleDetailDaoImpl implements BloodBottleDetailDao {
	public boolean isBloodBottleInserted(BloodBottleDetail bbd) {
		// TODO Auto-generated method stub
		System.out.println("BloodBottleDetailDaoImpl.isBloodBottleInserted()");
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate(bbd);
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
	public List<BloodBottleDetail> findBottles(EventDetail ed) {
		// TODO Auto-generated method stub
		
		List<BloodBottleDetail> bottleList=null;
		System.out.println("BloodBottleDetailDaoImpl.findBottles()");
		String query="FROM BloodBottleDetail bbd WHERE bbd.eventDetail.eventId='"+ed.getEventId()+"'";
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query1 = session.createQuery(query);
			bottleList = query1.list();
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
		return bottleList;
	
	}
	@Override
	public List<BloodBottleDetail> findBottlesforTest(BloodBottleDetail bbd) {
		// TODO Auto-generated method stub
		List<BloodBottleDetail> BottleList=null;
		System.out.println("BloodBottleDetailDaoImpl.findBottles()");
		String query="FROM BloodBottleDetail bbd WHERE bbd.testingDate Is null";
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query1 = session.createQuery(query);
			BottleList = query1.list();
			System.out.println("RECORDS FOUND==" + BottleList);
			
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return BottleList;
	}
	@Override
	public boolean isTestInserted(TestDetail td) {
		System.out.println("BloodBottleDetailDaoImpl.isBloodBottleInserted()");
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate(td);
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
	@Override
	public BloodBottleDetail getSingleBottle(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		BloodBottleDetail bbd=null;
		try {
			tx = session.beginTransaction();
			bbd=(BloodBottleDetail) session.load(BloodBottleDetail.class, id);
			System.out.println("SD=="+bbd);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return bbd;
	}

}
