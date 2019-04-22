package com.hotel.myapp.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import com.hotel.myapp.pojo.Hotel;

public class HotelDao extends DAO {
	public Hotel addHotel(Hotel h) throws Exception {
		try {
			begin();
			getSession().save(h);
			commit();
			return h;
		} catch (HibernateException e) {
			// TODO: handle exception
			rollback();
		}
		return h;
	}

	public List<Hotel> getAllHotels() {
		List<Hotel> result = null;
		try {
			begin();
			Query query = getSession().createQuery("from Hotel");
			result = query.list();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			rollback();
		}
		return result;
	}

	public List<Hotel> getHotelByName(String searchName) {
		List<Hotel> result = null;
		try {
			begin();
			Query query = getSession().createQuery("from Hotel where hotelName = :hotelName");
			query.setString("hotelName", searchName);
			result = query.list();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			rollback();
		}
		return result;
	}

	public void updateHotelById(String id, String hotelName, String image, String location, String price,
			String description) {
		try {
			begin();
			Query query = getSession().createQuery("from Hotel where id =:id");
			query.setString("id", id);
			Hotel h = (Hotel) query.uniqueResult();
			
			if (h != null) {
				h.setHotelName(hotelName);
				h.setImage(image);
				h.setLocation(location);
				h.setPrice(price);
				h.setDescription(description);
				getSession().update(h);
				commit();
			}
		} catch (Exception e) {
			// TODO: handle exception
			rollback();
		}

	}

	public Hotel getHotelById(String id) {
		try {
			begin();
			Query query = getSession().createQuery("from Hotel where id = :id");
			query.setString("id", id);
			Hotel hotel = (Hotel) query.uniqueResult();
			return hotel;
		} catch (Exception e) {
			rollback();
			// TODO: handle exception
		}
		return null;
	}

	public void removeHotelById(String id) {
		try {
			begin();
			Query query = getSession().createQuery("delete Hotel where id = :id");
			query.setString("id", id);
			query.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
