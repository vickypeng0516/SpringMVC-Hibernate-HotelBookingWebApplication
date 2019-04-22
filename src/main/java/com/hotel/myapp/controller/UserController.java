package com.hotel.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.myapp.dao.UserDao;
import com.hotel.myapp.pojo.User;

@Controller
public class UserController {
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String toRegisterView()
	{
		return "register";
	}
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerUser(UserDao userDao, HttpServletRequest request) throws IllegalStateException{
		String userEmail = request.getParameter("userEmail");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		
		User user = new User();
		user.setUserEmail(userEmail);
		user.setPassword(password);
		user.setType(type);
		try {
			User u = userDao.registerUser(user);
			if(u == null) {
				request.setAttribute("getAlert", "yes");
			}
			else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String toLoginView() {
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String loginUser(UserDao userDao, HttpServletRequest request) throws IllegalStateException{
		String userEmail = request.getParameter("userEmail");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		
		try {
			User user = userDao.loginUser(userEmail, password, type);
			if(user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("curUser", user);
				return "redirect:/hotels";
			}else {
				request.setAttribute("getAlert", "yes");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutUser(HttpServletRequest request) throws IllegalStateException{
		HttpSession session = request.getSession(false);
		session.removeAttribute("curUser");
		return "redirect:/hotels";
		
	}
}
