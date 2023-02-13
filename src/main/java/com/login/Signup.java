package com.login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Signup")

public class Signup extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
        connection con = new connection();
		
		Connection DB = con.connectDB();
		
		String q1 = "insert into login(uname,pass) values (?,?)";
		try {
			PreparedStatement pstm = DB.prepareStatement(q1);
			
			pstm.setString(1,uname);
			pstm.setString(2,pass);
			
			pstm.executeUpdate();
			
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			
			DB.close();
			response.sendRedirect("welcome.jsp");
		}
		catch(Exception e) {
			
			
		}

		
		
		
		
		
	}
	
	
	
	

}
