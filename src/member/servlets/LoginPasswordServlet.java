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

@WebServlet(value = "/auth/loginPassword")
public class LoginPasswordServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		RequestDispatcher rd = req.getRequestDispatcher("./LoginPasswordForm.jsp");
		rd.forward(req, res);

	}

	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		try {
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			MemberDto memberDto = memberDao.memberPasswordExist(email, pwd);
			
			if(memberDto == null) { RequestDispatcher rd =
					req.getRequestDispatcher("./LoginPasswordForm2.jsp");
					  
					rd.forward(req, res);
					  
			}
			
			HttpSession session = req.getSession();
			session.setAttribute("member", memberDto);

			res.sendRedirect("../board/list");
		} catch (Exception e) {
			e.printStackTrace();
//			throw new ServletException();
		}

	}

}
