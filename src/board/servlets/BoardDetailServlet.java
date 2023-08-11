package board.servlets;

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

import board.dao.BoardDao;
import board.dto.BoardDto;
import member.dao.MemberDao;
import member.dto.MemberDto;

@WebServlet("/member/detail")
public class BoardDetailServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		RequestDispatcher rd = null;
		
		try {
			int pno = Integer.parseInt(req.getParameter("pno"));
			
			ServletContext sc = this.getServletContext();
						
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			BoardDto boardDto = boardDao.boardDetail(pno);
			
			req.setAttribute("boardDto", boardDto);
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");
			
			rd = req.getRequestDispatcher("./BoardDetailForm.jsp");
			rd.forward(req, res);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			rd = req.getRequestDispatcher("./Error.jsp");
			
			rd.forward(req, res);
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		} // finally end

	} // doGet end

//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		BoardDto boardDto = null;
//		
//		Connection conn = null;
//
//		try {
//			String name = req.getParameter("name");
//			String email = req.getParameter("email");
//			String mNo = req.getParameter("no");
//			int no = Integer.parseInt(mNo);
//			
//			memberDto = new MemberDto();
//
//			boardDto.setName(name);
//			boardDto.setEmail(email);
//			boardDto.setNo(no);
//			
//			ServletContext sc = this.getServletContext();
//			
//			conn = (Connection)sc.getAttribute("conn");
//			
//			MemberDao memberDao = new MemberDao();
//			memberDao.setConnection(conn);
//			
//			int result = memberDao.memberUpdate(boardDto);
//			
//			if (result == 0) {
//				System.out.println("회원 정보 조회가 실패하였습니다.");
//			}
//			
//			res.sendRedirect("./list");
//
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			
//			req.setAttribute("error", e);
//			RequestDispatcher dispatcher = 
//					req.getRequestDispatcher("./Error.jsp");
//			
//			dispatcher.forward(req, res);
//		}
//	}
}
