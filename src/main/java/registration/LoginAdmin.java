package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/image-list")
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 String uemail = request.getParameter("username");
	        String upwd = request.getParameter("password");
	        
	        HttpSession session =request.getSession();
	        RequestDispatcher dispatcher=null;
	        
	        try {
	        	Class.forName("com.mysql.jdbc.Driver");
	        	Connection  con =DriverManager.getConnection("jdbc:mysql://localhost:3310/projetsoa?useSSL=false","root","");
	        	PreparedStatement pst = con.prepareStatement("SELECT * FROM admin WHERE uemail = ? AND upwd = ? ");
				
				 pst.setString(1, uemail);
				 pst.setString(2, upwd);
				 
				 ResultSet rs = pst.executeQuery();
				 if (rs.next()) {
					 
					 dispatcher=request.getRequestDispatcher("image-list.jsp");
				 }else {
						request.setAttribute("status", "failed");
						dispatcher=request.getRequestDispatcher("loginAdmin.jsp");
					}
					dispatcher.forward(request, response);
					
				
			} catch (Exception e) {
				e.printStackTrace();
			}

	}

	

}
