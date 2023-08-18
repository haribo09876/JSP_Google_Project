package member.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

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

@WebServlet("/member/add9")
public class MemberAddServlet9 extends HttpServlet {

	protected void doGet(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {

		response.sendRedirect("./JoinNineth.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		try {
			HttpSession session = req.getSession();
			
			String mname = (String)session.getAttribute("mname");
			Date birthDate = (Date)session.getAttribute("birthDate");
			String gender = (String)session.getAttribute("gender");
			String email = (String)session.getAttribute("email");
			String recoveryEmail = (String)session.getAttribute("recoveryEmail");
			int phoneNo = (Integer)session.getAttribute("phoneNo");
			String pwd = (String)session.getAttribute("pwd");

			MemberDto memberDto = new MemberDto();

			memberDto.setMname(mname);
			memberDto.setBirthDate(birthDate);
			memberDto.setGender(gender);
			memberDto.setEmail(email);
			memberDto.setRecoveryEmail(recoveryEmail);
			memberDto.setPhoneNo(phoneNo);
			memberDto.setPwd(pwd);
			
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			memberDao.memberInsert(memberDto);

			res.sendRedirect("../auth/LoginIdForm.jsp");
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				rd.forward(req, res);
				}

	}
}
