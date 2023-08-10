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

import member.dao.MemberDao;
import member.dto.MemberDto;

@WebServlet("/member/add8")
public class MemberAddServlet8 extends HttpServlet {

//	회원등록화면
	protected void doGet(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {

		response.sendRedirect("./JoinEighth.jsp");
	}

//	- doPost : 데이터베이스에 데이터 추가 (백엔드)
	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		String phoneNo = req.getParameter("phoneNo");

		try {
			MemberDto memberDto = new MemberDto();

			memberDto.setPhoneNo(phoneNo);

			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			memberDao.memberInsert(memberDto);
			
			res.sendRedirect("./JoinNineth");

			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				rd.forward(req, res);
				}

	}
}
