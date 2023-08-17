package member.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dao.MemberDao;
import member.dto.MemberDto;

@WebServlet(value = "/auth/FindEmail")
public class FindEmailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req
	         , HttpServletResponse res) throws ServletException, IOException {

	      RequestDispatcher rd = req.getRequestDispatcher("./FindEmailForm.jsp");
	      rd.forward(req, res);

	   }

	   @Override
	   protected void doPost(HttpServletRequest req
	         , HttpServletResponse res) throws ServletException, IOException {

	      Connection conn = null;

	      try {
	         String recovery_email = req.getParameter("recovery_email");

	         ServletContext sc = this.getServletContext();
	         conn = (Connection) sc.getAttribute("conn");

	         MemberDao memberDao = new MemberDao();
	         memberDao.setConnection(conn);	         	        
	         	                        	        	                             
	         HttpSession session = req.getSession();
	         session.setAttribute("recovery_email", recovery_email);

//	         res.sendRedirect("../auth/FindEmail2?recovery_email=" + req.getParameter("recovery_email"));
	         res.sendRedirect("../auth/FindEmail2");
	      } catch (Exception e) {
	         e.printStackTrace();
//	         throw new ServletException();
	      } 
	      

	   }

	}
