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


public class Hosregister extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		new Hosregister().handle(request, response);

}

public void handle(HttpServletRequest request, HttpServletResponse response) {
	String name=(String)request.getParameter("Name");
	
	String address=(String)request.getParameter("address");
	String state=(String)request.getParameter("state");
	String em=(String)request.getParameter("email");
	String pass=(String)request.getParameter("pwd");
	
	String pn=request.getParameter("phone");
	String hid=name+"ACC";
	try{
		Connection conn=ConnectionProvider.connect();
		PreparedStatement stm=conn.prepareStatement("insert into Hospital values(?,?,?,?,?,?,?)");
		stm.setString(1,hid);
		stm.setString(2,address);
		stm.setString(3,state);
		stm.setString(4,em);
		stm.setString(5,pass);
		
		stm.setString(6,pn);
		stm.setString(7,name);
		
		stm.executeUpdate();
		PreparedStatement stm1=conn.prepareStatement("insert into Blood values(?,0,0,0,0,0,0,0,0,?)");
		stm1.setString(1,hid);
		stm1.setString(2,name);
		stm1.executeUpdate();
		HttpSession sess=request.getSession();
		sess.setAttribute("id", hid);
		
		response.sendRedirect("registersuccess.jsp");
	}catch(Exception e) {
		System.out.println(e);
	}
	
	}	
}
