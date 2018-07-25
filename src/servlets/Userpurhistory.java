package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Userpurpojo;


public class Userpurhistory extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession sess=request.getSession();
			String name=(String)sess.getAttribute("SessName");
			Connection conn=ConnectionProvider.connect();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from user_buy_blood where username='"+name+"'");
			Userpurpojo upp=new Userpurpojo();
			while(rs.next()) {
				upp.setName(rs.getString("username"));
				upp.setBloodg(rs.getString("bloodg"));
				upp.setBags(rs.getInt("bags"));
				upp.setCost(rs.getInt("cost"));
				upp.setHosname(rs.getString("hosname"));
				sess.setAttribute("userpur",upp);
				response.sendRedirect("userpurhistory.jsp");
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
