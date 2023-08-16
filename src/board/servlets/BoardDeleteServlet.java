package board.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;

@WebServlet("/board/delete")
public class BoardDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {

		Connection conn = null;

		try {
			int pno = Integer.parseInt(req.getParameter("pno"));
			
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			int result = boardDao.boardDelete(pno);
			
			if (result == 0) {
				System.out.println("회원 삭제가 정상처리 되지 않았습니다.");
			}

			res.sendRedirect("./list");

		} catch (Exception e) {
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("./Error.jsp");
			
			dispatcher.forward(req, res);
		}

	}

}