package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Userbloodrequpdate extends HttpServlet {

  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String bg="";
			ArrayList<String> al=new ArrayList<>();
	   		Connection c=ConnectionProvider.connect();
	   		Statement stmt=c.createStatement();
	   		HttpSession session=request.getSession();
				String unm=(String)session.getAttribute("SessName");
				ResultSet rs=stmt.executeQuery("select bloodg from users where name='"+unm+"'");
				while(rs.next()) {
					bg=rs.getString("bloodg");
				}
				ResultSet rs1=stmt.executeQuery("select * from user_request where requested=\'req\' AND bloodg='"+bg+"'");
				while(rs1.next()) {
					String uname=rs1.getString("username");
					al.add(uname);
					session.setAttribute("Requests",al);
				}
				response.sendRedirect("userprofile.jsp");
		}catch(Exception e) {
			System.out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
