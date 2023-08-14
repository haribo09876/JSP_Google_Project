package member.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
import member.servlets.MemberAddServlet1;

@WebServlet("/member/add2")
public class MemberAddServlet2 extends HttpServlet {

	protected void doGet(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		res.sendRedirect("./JoinSecond.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String day = req.getParameter("day");
		String tempBirthDate = year + month + day;
	
		String gender = req.getParameter("gender");
		
		try {
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
			java.util.Date parsedDate = format.parse(tempBirthDate);
			java.util.Date birthDate = new java.sql.Date(parsedDate.getTime());
			
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			HttpSession session = req.getSession();
			session.setAttribute("birthDate", birthDate);
			session.setAttribute("gender", gender);
			
			res.sendRedirect("./JoinThird.jsp");

			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				rd.forward(req, res);
				}

	}
}
