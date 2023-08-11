package member.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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

@WebServlet("/member/add1")
public class MemberAddServlet1 extends HttpServlet {

	protected void doGet(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		res.sendRedirect("./JoinFirst.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		String familyName = req.getParameter("familyName");
		String ownName = req.getParameter("ownName");
		String mname = familyName + ownName;

		try {
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			HttpSession session = req.getSession();
			session.setAttribute("mname", mname);
			
			res.sendRedirect("./JoinSecond.jsp");

			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				rd.forward(req, res);
				}

	}
}
