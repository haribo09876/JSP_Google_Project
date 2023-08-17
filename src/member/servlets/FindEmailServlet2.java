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

@WebServlet(value = "/auth/FindEmail2")
public class FindEmailServlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		RequestDispatcher rd = req.getRequestDispatcher("./FindEmailForm2.jsp");
		rd.forward(req, res);

	}

	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		try {
			HttpSession session = req.getSession();                  
	        String recovery_email = (String)session.getAttribute("recovery_email");
	        String firstName = req.getParameter("firstName");
	        String lastName = req.getParameter("lastName");
	        String mname = firstName + lastName;

			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);

			MemberDto memberDto = memberDao.memberFindId(recovery_email, mname);
			
			if(memberDto == null) { 
		           RequestDispatcher rd =
		                 req.getRequestDispatcher("./FindEmailForm3.jsp");
		                 
		           rd.forward(req, res);
		                 
		    }else {
		    	session.setAttribute("member", memberDto); 

				res.sendRedirect("./ResultFindEmailForm.jsp");
		    }
														 			 			
			
		} catch (Exception e) {
			e.printStackTrace();
//			throw new ServletException();
		} 

	}

}
