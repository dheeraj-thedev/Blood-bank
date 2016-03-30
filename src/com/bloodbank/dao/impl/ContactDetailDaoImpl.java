package com.bloodbank.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.ContactDetailDao;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.ContactDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.StaffDetail;
import com.bloodbank.util.HibernateUtil;


public class ContactDetailDaoImpl implements ContactDetailDao {
	public boolean isContactInserted(ContactDetail cd) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			
			session.saveOrUpdate(cd);
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
	public List<DonorDetail> getAllContacts() {
		// TODO Auto-generated method stub
		List<DonorDetail> donorList = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM DonorDetail d join fetch d.contactDetail");
			donorList = query.list();
			System.out.println("RECORDS FOUND==" + donorList);
			
			
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return donorList;
	
	}
	public List<AccountDetail> getAllStaffs() {
		// TODO Auto-generated method stub
		List<AccountDetail> staffList = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM AccountDetail ad WHERE ad.userType='Staff'");
			staffList = query.list();
			System.out.println("RECORDS FOUND==" + staffList);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return staffList;
	
	}
	public List<AccountDetail> getAllStaffsNames() {
		// TODO Auto-generated method stub
		List<AccountDetail> staffList = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("Select cd.firstName FROM AccountDetail ad,ContactDetail cd,StaffDetail sd WHERE ad.userType='Staff'");
			staffList = query.list();
			System.out.println("RECORDS FOUND==" + staffList);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return staffList;
	
	}
	@Override
	public	boolean isStaffDeleted(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			AccountDetail ad=(AccountDetail) session.load(AccountDetail.class, id);
			System.out.println("ContactDetailDaoImpl.isStaffDeleted()");
			session.delete(ad);
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
	public List<AccountDetail> getAllUsers() {
		// TODO Auto-generated method stub
		List<AccountDetail> userList = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM AccountDetail ad WHERE ad.userType='User'");
			userList = query.list();
			System.out.println("RECORDS FOUND==" + userList);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return userList;
	
	}
}
