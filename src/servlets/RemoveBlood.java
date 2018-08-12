package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class RemoveBlood extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
			HttpSession session=request.getSession();
			
			String hid=(String)session.getAttribute("SessName");
			
			String var=request.getParameter("blood");
			int bag=Integer.parseInt(request.getParameter("bag"));
			PrintWriter out=response.getWriter();
			Connection c=ConnectionProvider.connect();
			Statement stmt =c.createStatement();
			ResultSet rs=stmt.executeQuery("Select hospital_id,"+var+"  from blood");
			while(rs.next()) {
				int bg=rs.getInt(var);
				String hosid=rs.getString("hospital_id");
				if((bg-bag)<0) {
					
					response.sendRedirect("addsuccess.jsp");
					
				}else if(hosid.equals(hid)) {
					PreparedStatement stm=c.prepareStatement("update blood set "+var+"="+var+'-'+bag+" where hospital_id=?");
					stm.setString(1,hid);
					stm.executeUpdate();
					response.sendRedirect("Bloodtable");
				}
				
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
