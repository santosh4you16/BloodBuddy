package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Hosverotp extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession ss=request.getSession();
			String otp=(String)ss.getAttribute("OTP");
			String otpp=(String)request.getParameter("otpp");
			if(otp.equals(otpp)) {
				response.sendRedirect("hosnewpass.jsp");
			}else {
				response.sendRedirect("hosforgpass.jsp");
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
