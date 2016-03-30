package com.bloodbank.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.IssueDetailDao;
import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.DonorDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.HospitalDetail;
import com.bloodbank.model.IssueDetail;
import com.bloodbank.model.PatientDetail;
import com.bloodbank.util.HibernateUtil;

public class IssueDetailDaoImpl implements IssueDetailDao{
	public boolean isIssueInserted(IssueDetail id)
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

	@Override
	public List<DonorDetail> isValidUniqueId(DonorDetail dd) {
List<DonorDetail> donorlist=null;
		
		String query="FROM DonorDetail dd WHERE dd.donorRandomId='"+dd.getDonorRandomId()+"'";
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query1 = session.createQuery(query);
			donorlist = query1.list();
			System.out.println("RECORDS FOUND==" + donorlist);
			//System.out.println(ContactList.get(0).getContactDetail());
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return donorlist;
	}
	public List<IssueDetail> getAllHospitals()
	{
	List<IssueDetail> hospitalList = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM IssueDetail id where id.hospitalDetail is not null ORDER BY id.issueDate ");
			hospitalList = query.list();
			System.out.println("RECORDS FOUND==" + hospitalList);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return hospitalList;
	}
	public List<IssueDetail> getAllPatients()
	{
	List<IssueDetail> patientList = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM IssueDetail id where id.patientDetail is not null ORDER BY id.issueDate ");
			patientList = query.list();
			System.out.println("RECORDS FOUND==" + patientList);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return patientList;
	}
	public	boolean isissueDeleted(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			IssueDetail isd=(IssueDetail) session.load(IssueDetail.class, id);
			System.out.println("ContactDetailDaoImpl.isStaffDeleted()");
			session.delete(isd);
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
	public IssueDetail getSingleIssue(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		IssueDetail isd=null;
		try {
			tx = session.beginTransaction();
			isd=(IssueDetail) session.load(IssueDetail.class, id);
			System.out.println("SD=="+isd);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return isd;
	}
}
