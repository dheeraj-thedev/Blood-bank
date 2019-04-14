package com.bloodbank.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.LogInMasterDao;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.util.HibernateUtil;

public class LogInMasterDaoImpl implements LogInMasterDao{
	
	public List<AccountDetail> isValidLogin(AccountDetail ad) {
		// TODO Auto-generated method stub
		
		List<AccountDetail> accountlist=null;
		
		String query="FROM AccountDetail ad WHERE ad.login='"+ad.getLogin()+"' AND ad.password='"+ad.getPassword()+"'";
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query1 = session.createQuery(query);
			accountlist = query1.list();
			System.out.println("RECORDS FOUND==" + accountlist);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return accountlist;
	
	}
/*	public boolean isValidStaff(AccountDetail ad) {
		// TODO Auto-generated method stub
		
List<AccountDetail> list=new ArrayList<AccountDetail>();
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		String query="FROM AccountDetail ad WHERE ad.login='"+ad.getLogin()+"' AND ad.password='"+ad.getPassword()+"'";
		
		try {
			System.out.println("IN dao IMPL lm");
			tx = session.beginTransaction();
			
			Query query1=session.createQuery(query);
		
			System.out.println("LogInMasterDaoImpl.isValidUser()");
			list=query1.list();
			
			//query3.equals(1);
			
			//boolean list2 = query3.equals(1);
			System.out.println("size==>"+list);
			System.out.println(list.get(0).getUserType());
			
			if(list.size()==1 && list.get(0).getUserType().equals("Staff"))
			{
			b = true;
			}
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
	public List<AccountDetail> forgotPassword(AccountDetail ad) {
		// TODO Auto-generated method stub
		
		List<AccountDetail> accountlist=null;
		
		String query="FROM AccountDetail ad WHERE ad.login='"+ad.getLogin()+"' AND ad.emailId='"+ad.getEmailId()+"'";
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query1 = session.createQuery(query);
			accountlist = query1.list();
			System.out.println("RECORDS FOUND==" + accountlist);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return accountlist;
	
	}
@Override
public boolean isValidStaff(AccountDetail ad) {
	// TODO Auto-generated method stub
	return false;
}
	
}
