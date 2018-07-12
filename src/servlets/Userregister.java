package servlets;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


 
public class Userregister extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		new Userregister().handle(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//handle(request,response);
	}
	
	
	
	public void handle(HttpServletRequest request, HttpServletResponse response) {

		
		String name=request.getParameter("name");	
	String dateob=(String)request.getParameter("dob");
	String sx=request.getParameter("sex");
	String em=request.getParameter("email");
	String pass=request.getParameter("password");
	String bg=request.getParameter("blood");
	String pn=request.getParameter("phn");
	String state=request.getParameter("state");
	try{
		Connection conn=ConnectionProvider.connect();
		PreparedStatement stm=conn.prepareStatement("insert into users values(?,?,?,?,?,?,?,sequser.nextval,?)");
		stm.setString(1,name);
		stm.setString(2,dateob);
		stm.setString(3,sx);
		stm.setString(4,em);
		stm.setString(5,pass);
		stm.setString(6,bg);
		stm.setString(7,pn);
		stm.setString(8,state);
		stm.executeUpdate();
		PreparedStatement stm1=conn.prepareStatement("insert into user_request (username,bloodg) values(?,?)");
		stm1.setString(1, name);
		stm1.setString(2,bg);
		stm1.executeUpdate();
		HttpSession sess=request.getSession();
		sess.setAttribute("id", name);
		response.sendRedirect("registersuccess.jsp");
	}catch(Exception e) {
		System.out.println(e);
	}
	
	}

}
