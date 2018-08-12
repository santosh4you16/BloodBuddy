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

public class Userrejectreq extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Expires", "0");
		try{
			HttpSession session=request.getSession();
			String rhid=(String)session.getAttribute("reciever");
			Connection c =ConnectionProvider.connect();
			Statement stmt=c.createStatement();
			stmt.executeUpdate("update user_request set requested=\'null\' where username='"+rhid+"'");
			ArrayList al=(ArrayList)session.getAttribute("Requests");
			al.remove(rhid);
			response.sendRedirect("userrejectsucc.jsp");
		}catch(Exception e) {
			System.out.println(e);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
