package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.BloodPojo;



public class Bloodlisthos extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			String btnhos=(String)request.getParameter("btnhos");
			System.out.println(btnhos);
			session.setAttribute("hosname", btnhos);
			String query="Select a_neg,b_neg,o_neg,ab_neg,ab_pos,a_pos,b_pos,o_pos from blood where hos_name='"+btnhos+"'";
			Connection c=ConnectionProvider.connect();
			Statement stmt=c.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) {
				BloodPojo bj=new BloodPojo();
				int aneg=rs.getInt("a_neg");
				int bneg=rs.getInt("b_neg");
				int oneg=rs.getInt("o_neg");
				int abneg=rs.getInt("ab_neg");
				int abpos=rs.getInt("ab_pos");
				int apos=rs.getInt("a_pos");
				int bpos=rs.getInt("b_pos");
				int opos=rs.getInt("o_pos");
				bj.setAneg(aneg);
				bj.setBneg(bneg);
				bj.setOneg(oneg);
				bj.setAbneg(abneg);
				bj.setAbpos(abpos);
				bj.setApos(apos);
				bj.setBpos(bpos);
				bj.setOpos(opos);
				
				session.setAttribute("pojo",bj);
				response.sendRedirect("userviewblood.jsp");
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
