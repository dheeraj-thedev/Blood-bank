package com.bloodbank.dao.impl;

import java.io.Serializable;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bloodbank.dao.EventDetailDao;

import com.bloodbank.model.AccountDetail;
import com.bloodbank.model.EventDetail;
import com.bloodbank.model.EventStaffDetail;
import com.bloodbank.model.EventStaffDetailId;
import com.bloodbank.model.StaffDetail;
import com.bloodbank.util.HibernateUtil;

public class EventDetailDaoImpl implements EventDetailDao{
	public boolean isEventInserted(EventDetail ed)
	{	// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			
			session.save(ed);
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
	public EventDetail getSingleEvent(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		EventDetail ed=null;
		try {
			tx = session.beginTransaction();
			ed=(EventDetail) session.load(EventDetail.class, id);
			System.out.println("ED=="+ed);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return ed;
	}
	public	boolean isEventDeleted(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			EventDetail ed=(EventDetail) session.load(EventDetail.class, id);
			System.out.println("ContactDetailDaoImpl.isStaffDeleted()");
			session.delete(ed);
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
	public List<EventDetail> getAllEventDetails()
	{
	List<EventDetail> eventList = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM EventDetail e ORDER BY e.eventDate");
			eventList = query.list();
			System.out.println("RECORDS FOUND==" + eventList);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return eventList;
	}
	public List<EventStaffDetail> getAllEventandStaffDetails()
	{
List<EventStaffDetail> eventStaffList = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM EventStaffDetail esd ORDER BY esd.eventDetail.eventDate");
			eventStaffList = query.list();
			System.out.println("RECORDS FOUND==" + eventStaffList);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return eventStaffList;
		
	}
	@Override
	public List<EventStaffDetail> getallstaffinevents(StaffDetail sd) {
		// TODO Auto-generated method stub
List<EventStaffDetail> eventstaffList = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM EventStaffDetail esd where esd.staffDetail.staffId='"+sd.getStaffId()+"'");
			eventstaffList = query.list();
			System.out.println("RECORDS FOUND==!!!!----" + eventstaffList);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return eventstaffList;
	}
	public	boolean isEventStaffDeleted(EventStaffDetailId eventStaffDetailId){
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		boolean b = false;
		try {
			tx = session.beginTransaction();
			//EventStaffDetailId eventStaffDetailId1;
			EventStaffDetailId esd=(EventStaffDetailId) session.load(EventStaffDetailId.class,eventStaffDetailId );
			System.out.println("ContactDetailDaoImpl.isStaffDeleted()");
			session.delete(esd);
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

}
