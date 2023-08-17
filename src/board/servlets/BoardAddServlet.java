package board.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;
import board.dto.BoardDto;

/**
 * Servlet implementation class MemberAddServlet
 */
@WebServlet("/board/add")
public class BoardAddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		System.out.println("add 접근");
		
		res.setContentType("text/html");
		res.setCharacterEncoding("UTF-8");

		res.sendRedirect("./BoardAddForm.jsp");
	}

	// 데이터베이스에 데이터 추가
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {

		Connection conn = null;

		PreparedStatement pstmt = null;

		String title = req.getParameter("title");
		String editor = req.getParameter("editor");
		String postPwd = req.getParameter("postPwd");
		String contents = req.getParameter("contents");

		try {
			BoardDto boardDto = new BoardDto();

			boardDto.setTitle(title);
			boardDto.setEditor(editor);
			boardDto.setPostPwd(postPwd);
			boardDto.setContents(contents);

			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			BoardDao boardDao = new BoardDao();

			boardDao.setConnection(conn);

			int resultNum = 0;

			resultNum = boardDao.boardInsert(boardDto);

			res.sendRedirect("./list");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

}
