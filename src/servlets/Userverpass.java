package servlets;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.GenOtp;
import utility.OtpMail;

public class Userverpass extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 try {
		 String name="";
		 String mail="";
		 String nm=request.getParameter("uname");
		 Connection c=ConnectionProvider.connect();
		 Statement stmt=c.createStatement();
		 ResultSet rs=stmt.executeQuery("select name,email from users where name='"+nm+"'");
		 while(rs.next()) {
			 if(name==null) {
				 break;
			 }
			 name=rs.getString("name");
			 mail=rs.getString("email");
		 }
		 if(nm.equals(name)) {
			 String otp=new String(GenOtp.genOtp());
			 HttpSession sess=request.getSession();
			 OtpMail.send(mail, otp);
			 sess.setAttribute("user",nm);
			 sess.setAttribute("OTP",otp);
			 response.sendRedirect("userotppass.jsp");
		 }else {
			 response.sendRedirect("userforgpass.jsp");
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
