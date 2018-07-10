package controllers;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Gethospitals extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			ArrayList<String> al=new ArrayList<>();
			String state=request.getParameter("state");
			Connection c =ConnectionProvider.connect();
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery("select hos_name from hospital where state='"+state+"'");
			while(rs.next()) {
				
				String hsnm=rs.getString("hos_name");
				al.add(hsnm);
			}
			
			session.setAttribute("hslist",al);
			session.setAttribute("city",state);
			response.sendRedirect("userhoslist.jsp");
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
