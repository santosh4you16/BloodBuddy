package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Hoslogin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("hid");
	   	String pwd=request.getParameter("pwd");
	   	try {
	   		int f=0;
	   		Connection c=ConnectionProvider.connect();
	   		Statement stmt=c.createStatement();
	   		ResultSet rs=stmt.executeQuery("select Hospital_id,password from Hospital");
	   		while(rs.next()) {
	   			String un=rs.getString("hospital_id");
	   			String pd=rs.getString("password");
	   			if(un.equals(name)&&pd.equals(pwd)) {
	   				f=1;
	   				HttpSession session=request.getSession();
	   				
	   				session.setAttribute("SessName",name);
	   				response.sendRedirect("hosprofile.jsp");
	   			}
	   			
	   		}
	   		if(f==0) {
   				response.sendRedirect("loginfail.jsp");
	   		}
	   	}catch(Exception e)
	   	{
	   	 System.out.println(e);	
	   	}
	   	
		
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
