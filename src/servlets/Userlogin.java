package servlets;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Userlogin extends HttpServlet {
	
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
   	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
	   	String pwd=request.getParameter("pwd");
	   	try {
	   		int f=0;
	   		ArrayList<String> al=new ArrayList<>();
	   		Connection c=ConnectionProvider.connect();
	   		Statement stmt=c.createStatement();
	   		ResultSet rs=stmt.executeQuery("select name,password,bloodg from users");
	   		while(rs.next()) {
	   			String un=rs.getString("name");
	   			String pd=rs.getString("password");
	   			String bg=rs.getString("bloodg");
	   			if(un.equals(name)&&pd.equals(pwd)) {
	   				f=1;
	   				HttpSession session=request.getSession();
	   				session.setAttribute("SessName",name);
	   				ResultSet rs1=stmt.executeQuery("select * from user_request where requested=\'req\' AND bloodg='"+bg+"'");
	   				while(rs1.next()) {
	   					String uname=rs1.getString("username");
	   					al.add(uname);
	   					session.setAttribute("Requests",al);
	   				}
	   				response.sendRedirect("userprofile.jsp");
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

}
