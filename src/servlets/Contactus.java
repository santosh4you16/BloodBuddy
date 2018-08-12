package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.FeedbackMail;

public class Contactus extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try{
	PrintWriter out=response.getWriter();
	String msg=(String)request.getParameter("msg");
	String name=(String)request.getParameter("name");
	if(FeedbackMail.send(msg, name)) {
		out.println("<html>");
		out.println("<center style=\"color:\"green\"\"><h3>Your message has been recieved by us successfully !</h3></center>");
		out.println("<center><a href=\"contactus.jsp\">Go Back!</a><center>");
		out.println("</html>");
	}else {
		out.println("<html>");
		out.println("<center><h3>couldn't send Mail</h3></center>");
		out.println("<center><a href=\"contactus.jsp\">Go Back!</a><center>");
		out.println("</html>");
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
