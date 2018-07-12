package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utility.SendMail;

public class Useracceptreq extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String smail="";
			String rmail="";
			String phn="";
			HttpSession session=request.getSession();
			String shid=(String)session.getAttribute("SessName");
			String rhid=(String)session.getAttribute("reciever");
			Connection c =ConnectionProvider.connect();
			Statement stmt=c.createStatement();
			ResultSet rs=stmt.executeQuery("select email,phno from users where name='"+shid+"'");
			while(rs.next()) {
				 smail=rs.getString("email");
				 phn=rs.getString("phno");
				
			}
			ResultSet rs1=stmt.executeQuery("select email from users where name='"+rhid+"'");
			while(rs1.next()) {
				 rmail=rs1.getString("email");
			}
			SendMail.send(smail,rmail,phn);
			stmt.executeUpdate("update user_request set got_req=\'null\' where username='"+rhid+"'");
			ArrayList al=(ArrayList)session.getAttribute("Requests");
			
				al.remove(rhid);
			
			
			response.sendRedirect("useracceptsucc.jsp");
		}catch(Exception e) {
			System.out.println(e);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
