package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Hospasschange extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			String hid=(String)session.getAttribute("SessName");
			String pass=(String)request.getParameter("pwd");
			Connection conn=ConnectionProvider.connect();
			PreparedStatement stm=conn.prepareStatement("update hospital set password=? where hospital_id=?");
			stm.setString(1, pass);
			stm.setString(2,hid);
			stm.execute();
			response.sendRedirect("hupdatesuccess.jsp");
		}catch(Exception e) {
			System.out.println(e);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
