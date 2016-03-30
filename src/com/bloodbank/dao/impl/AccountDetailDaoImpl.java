package com.bloodbank.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.AccountDetailDao;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.util.HibernateUtil;

public class AccountDetailDaoImpl implements AccountDetailDao{
	public boolean isAccountInserted(AccountDetail ad)
	{
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			
			session.saveOrUpdate(ad);
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
	public List<AccountDetail> isValidLogin(AccountDetail ad) {
		// TODO Auto-generated method stub
		
		List<AccountDetail> accountlist=null;
		
		String query="FROM AccountDetail ad WHERE ad.login='"+ad.getLogin()+"'";
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

}
