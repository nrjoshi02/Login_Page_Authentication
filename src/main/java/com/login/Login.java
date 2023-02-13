package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;
import com.login.connection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		String sql = "select * from login where uname = ? and pass = ?";
		int flag = 0;
		
		connection con = new connection();
		
		Connection DB = con.connectDB();
		
		try {
			PreparedStatement st = DB.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				flag = 1;
			}
			
		}
		catch(Exception e) {
			
		}
		
		if(flag == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			
			response.sendRedirect("welcome.jsp");
		}
		
		else {
			
			response.sendRedirect("login.jsp");
		}
	}

	
}
