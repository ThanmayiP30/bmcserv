package org.jsp.bookmycinema.service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.bookmycinema.dao.BMSDao;
import org.jsp.bookmycinema.dto.User;


public class BMSService {
BMSDao dao=new BMSDao();
	
	public void signup(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String mobile=req.getParameter("mobile");
		String dob=req.getParameter("dob");
		String gender=req.getParameter("gender");
		

		User user =new User();
		user.setDob(LocalDate.parse(req.getParameter("dob")));
		user.setName(req.getParameter("name"));
		user.setEmail(req.getParameter("email"));
		user.setGender(req.getParameter("gender"));
		user.setMobile(Long.parseLong(req.getParameter("mobile")));
		user.setPassword(req.getParameter("password"));
		
		
		List<User> users1=dao.findByEmail(user.getEmail());
		List<User> users2=dao.findByMobile(user.getMobile());
		if(users1.isEmpty() && users2.isEmpty()){
		dao.saveUser(user);
		req.getRequestDispatcher("index.html").include(req,resp);
		}
		else{
			if(users1.isEmpty()){
				resp.getWriter().println("<h1 style='color:red'>mobile number should be unique</h1>");
			}
			else if(users2.isEmpty()){
				resp.getWriter().println("<h1 style='color:red'>email sholud be unique</h1>");
			}
			else{
				resp.getWriter().println("<h1 style='color:red'>mobile number and email should be unique</h1>");
			}
			req.getRequestDispatcher("signup.html").include(req,resp);
		}
		
	}

	public void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String emph = req.getParameter("emph");
		String passsword = req.getParameter("password");
		List<User> list = null;
		try {
			long mobile = Long.parseLong(emph);
			list = dao.findByMobile(mobile);
			if (list.isEmpty())
				resp.getWriter().print("<h1 align='center' style='color:red'>Incorrect Mobile Number</h1>");
		} catch (NumberFormatException e) {
			String email = emph;
			list = dao.findByEmail(email);
			if (list.isEmpty())
				resp.getWriter().print("<h1 align='center' style='color:red'>Incorrect Email</h1>");
		}

		if (!list.isEmpty()) {
			User user=list.get(0);
			if (user.getPassword().equals(passsword)) {
				req.getSession().setAttribute("user",user);
			    req.getRequestDispatcher("home.jsp").include(req, resp);
				
			}
			else {
				resp.getWriter().print("<h1 align='center' style='color:red'>Incorrect Password</h1>");
				req.getRequestDispatcher("login.html").include(req, resp);
			}
		} else {
			req.getRequestDispatcher("login.html").include(req, resp);
		}
	}
}
