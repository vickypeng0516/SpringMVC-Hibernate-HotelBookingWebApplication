package com.hotel.myapp.dao;

import org.hibernate.query.Query;

import com.hotel.myapp.pojo.User;

public class UserDao extends DAO {
	public User registerUser(User u) throws Exception{
		try {
			begin();
			getSession().save(u);
			commit();
			return u;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return u;
	}
	
	public User loginUser(String userEmail, String password, String type) {
		try {
			begin();
			Query query = getSession().createQuery("from User where userEmail = :userEmail and password = :password and type = :type");
			query.setString("userEmail", userEmail);
			query.setString("password", password);
			query.setString("type", type);
			User user = (User) query.uniqueResult();
			return user;
		} catch (Exception e) {
			// TODO: handle exception
			rollback();
		}
		return null;
	}
}
