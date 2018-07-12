package servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Userpojo;

import java.sql.*
;
public class Userprofiledetail extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			String name=(String)session.getAttribute("SessName");
			Connection c=ConnectionProvider.connect();
			Statement stmt=c.createStatement();
			ResultSet rs=stmt.executeQuery("select * from users where name='"+name+"'");
			while(rs.next()) {
				String uname=rs.getString("name");
				String dob=rs.getString("dob");
				String sex=rs.getString("sex");
				String email=rs.getString("email");
				String bloodg=rs.getString("bloodg");
				String phno=rs.getString("phno");
				String uid=rs.getString("userid");
				String state=rs.getString("state");
				Userpojo upj=new Userpojo();
				upj.setUname(uname);
				upj.setDob(dob);
				upj.setSex(sex);
				upj.setEmail(email);
				upj.setBloodg(bloodg);
				upj.setPhno(phno);
				upj.setUid(uid);
				upj.setState(state);
				session.setAttribute("upj",upj);
				response.sendRedirect("userprofdetail.jsp");
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
