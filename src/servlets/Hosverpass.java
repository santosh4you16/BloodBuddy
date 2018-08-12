package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.GenOtp;
import utility.OtpMail;

public class Hosverpass extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			 PrintWriter out=response.getWriter();
			 String name="";
			 String mail="";
			 String nm=(String)request.getParameter("uname");
			 Connection c=ConnectionProvider.connect();
			 Statement stmt=c.createStatement();
			 ResultSet rs=stmt.executeQuery("select HOSPITAL_ID, email from HOSPITAL where HOSPITAL_ID ='"+nm+"'");
			 while(rs.next()) {
				 if(name==null) {
					 break;
				 }
				 name=rs.getString("hospital_id");
				 mail=rs.getString("email");
			 }
			 if(nm.equals(name)) {
				 String otp=new String(GenOtp.genOtp());
				 System.out.println(otp);
				 HttpSession sess=request.getSession();
				 if(OtpMail.send(mail, otp)) {
				 sess.setAttribute("user",nm);
				 sess.setAttribute("OTP",otp);
				 response.sendRedirect("hosotppass.jsp");
				 }else {
					 out.println("<html>");
						out.println("<center><h3>couldn't send OTP, Server Down or internet connection lost!</h3></center>");
						out.println("<center><a href=\"hosforgpass.jsp\">Go Back!</a><center>");
						out.println("</html>");
				 }
			 }else {
				 response.sendRedirect("hosforgpass.jsp");
			 }
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
