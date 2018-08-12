package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UserBuyblood extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Expires", "0");
		try {
			HttpSession sess=request.getSession();
			String uname=(String)sess.getAttribute("SessName");
			String bg=(String)request.getParameter("blood");
			System.out.println(bg);
			int bag=Integer.parseInt(request.getParameter("bag"));
			int cost=700*bag;
			String hsname=(String)sess.getAttribute("hosname");
			System.out.println(hsname);
			Connection c=ConnectionProvider.connect();
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery("select hos_name,"+bg+" from blood where hos_name='"+hsname+"'");
			while(rs.next()) {
				int bgp=rs.getInt(bg);
				if((bgp-bag)<0) {
					response.sendRedirect("userviewblood.jsp");
				}else {
					c.setAutoCommit(false);
					PreparedStatement stmt1=c.prepareStatement("update blood set "+bg+"="+bg+"-"+bag+" where hos_name=?");
					stmt1.setString(1,hsname);
					stmt1.executeUpdate();		
					
					PreparedStatement stmt=c.prepareStatement("update user_buy_blood set bloodg=?, bags=?, cost=?, hosname=?  where username=?");
					stmt.setString(1,bg);
					stmt.setInt(2,bag);
					stmt.setInt(3,cost);
					stmt.setString(4,hsname);
					stmt.setString(5,uname);
					stmt.executeUpdate();
					c.commit();
					request.getRequestDispatcher("userbuysucc.jsp").forward(request,response);

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
