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

@WebServlet("/board/update")
public class BoardUpdateServlet extends HttpServlet {
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
			
			rd = req.getRequestDispatcher("./BoardUpdateForm.jsp");
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

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoardDto boardDto = null;
		
		Connection conn = null;

		try {
			String title = req.getParameter("title");
			String editor = req.getParameter("editor");
			String postPwd = req.getParameter("postPwd");
			String contents = req.getParameter("contents");
			int pno = Integer.parseInt(req.getParameter("pno"));
			
			boardDto = new BoardDto();

			boardDto.setTitle(title);
			boardDto.setEditor(editor);
			boardDto.setPostPwd(postPwd);
			boardDto.setContents(contents);
			boardDto.setPno(pno);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			int result = boardDao.boardUpdate(boardDto);
			
			if (result == 0) {
				System.out.println("게시물 조회에 실패하였습니다.");
			}
			
			res.sendRedirect("./list");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("./Error.jsp");
			
			dispatcher.forward(req, res);
		}
	}
}
