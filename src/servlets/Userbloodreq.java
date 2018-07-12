package servlets;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.SendMail;


public class Userbloodreq extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String bg="";
			HttpSession session=request.getSession();
			String uname=(String)session.getAttribute("SessName");
			Connection c=ConnectionProvider.connect();
			Statement stmt=c.createStatement();
			ResultSet rs=stmt.executeQuery("select bloodg from users where name='"+uname+"'");
			while(rs.next()) {
				bg=rs.getString("bloodg");
			}
			PreparedStatement stm=c.prepareStatement("update user_request set requested=\'req\' where username=?");
			stm.setString(1,uname);
			stm.executeUpdate();	
			PreparedStatement stm1=c.prepareStatement("update user_request set got_req=\'got\' where bloodg=?");
			stm1.setString(1,bg);
			stm1.executeUpdate();
		
		
			response.sendRedirect("userreqsuccess.jsp");
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
