package com.bloodbank.dao.impl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.bloodbank.dao.DonorDetailDao;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.util.HibernateUtil;


public class DonorDetailDaoImpl implements DonorDetailDao{
	
	
	public boolean isDonorInserted(DonorDetail dd) {
		// TODO Auto-generated method stub
		System.out.println("DonorDetailDaoImpl.isDonorInserted()");
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate(dd);
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
	public List<DonorDetail> getAllDonors(DonorDetail dd) {
		// TODO Auto-generated method stub
		List<DonorDetail> DonorList = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM DonorDetail");
			DonorList = query.list();
			System.out.println("RECORDS FOUND==" + DonorList);
			System.out.println(DonorList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return DonorList;
	
	}

	public	boolean isDonorDeleted(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			DonorDetail dd=(DonorDetail) session.load(DonorDetail.class, id);
			System.out.println("ContactDetailDaoImpl.isStaffDeleted()");
			session.delete(dd);
			System.out.println("ContactDetailDaoImpl.isStaffDeleted()");
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
	public DonorDetail getSingleDonor(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		DonorDetail dd=null;
		try {
			tx = session.beginTransaction();
			dd=(DonorDetail) session.load(DonorDetail.class, id);
			System.out.println("SD=="+dd);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return dd;
	}

}
