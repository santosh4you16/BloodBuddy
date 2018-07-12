package servlets;

import java.io.IOException;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddBlood extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//int flag=0;
			HttpSession session=request.getSession();
			
			String hid=(String)session.getAttribute("SessName");
			
			String var=request.getParameter("blood");
			String bag=request.getParameter("bag");
			
			Connection c=ConnectionProvider.connect();
			Statement stmt =c.createStatement();
			ResultSet rs=stmt.executeQuery("Select * from blood");
			while(rs.next()) {
				String hosid=rs.getString("hospital_id");
				if(hosid.equals(hid)) {
				//	flag=1;
					PreparedStatement stm=c.prepareStatement("update blood set "+var+"="+var+'+'+bag+" where hospital_id=?");
					stm.setString(1,hid);
					stm.executeUpdate();
					response.sendRedirect("Bloodtable");
				}
				
			}
			/*if(flag==0) {
			PreparedStatement stm=c.prepareStatement("insert into blood (hospital_id,"+var+") values(?,?)");
			
			stm.setString(1, hid);
			stm.setString(2, bag);
			stm.executeUpdate();
			response.sendRedirect("Bloodtable");
			}*/
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
