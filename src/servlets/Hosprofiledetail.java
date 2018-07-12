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

import beans.HospitalPojo;

public class Hosprofiledetail extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			String hid=(String)session.getAttribute("SessName");
			Connection c=ConnectionProvider.connect();
			Statement stmt=c.createStatement();
			ResultSet rs=stmt.executeQuery("select * from Hospital where hospital_id='"+hid+"'");
			while(rs.next()) {
				String huid=rs.getString("hospital_id");
				String hadd=rs.getString("address");
				String hstate=rs.getString("state");
				String hemail=rs.getString("email");
				String hphno=rs.getString("phone");
				String hnm=rs.getString("hos_name");

				HospitalPojo hsptl=new HospitalPojo();
				hsptl.setHospitalId(huid);
				hsptl.setHospitalAdd(hadd);
				hsptl.setHospitalState(hstate);
				hsptl.setHospitalMail(hemail);
				hsptl.setHospitalNum(hphno);
				hsptl.setHospitalName(hnm);
				session.setAttribute("hsptl",hsptl);
				response.sendRedirect("hosprofdetail.jsp");
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
