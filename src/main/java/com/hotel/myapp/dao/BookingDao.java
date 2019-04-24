package com.hotel.myapp.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import com.hotel.myapp.pojo.Booking;

public class BookingDao extends DAO{
	public Booking addOrder(Booking booking) throws Exception{
		try {
			begin();
			getSession().save(booking);
			commit();
			return booking;
			
		} catch (HibernateException e) {
			// TODO: handle exception
			rollback();
		}
		return booking;
	}
	
	public List<Booking> findAllOrderByUserEmail(String userEmail) throws Exception{
		List<Booking> result = null;
		try {
			begin();
			Query query = getSession().createQuery("from Booking where curUser = :curUser");
			query.setString("curUser", userEmail);
			result = query.list();
			commit();
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return result;
	}
	
	public List<Booking> findAllOrder() throws Exception{
		List<Booking> result = null;
		try {
			begin();
			Query query = getSession().createQuery("from Booking");
			result = query.list();
			commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	
	public void deleteBookingById(String id){
		try {
			begin();
			Query query = getSession().createQuery("delete Booking where id = :id");
			query.setString("id", id);
			query.executeUpdate();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
