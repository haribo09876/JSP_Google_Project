package board.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;
import board.dto.BoardDto;

@WebServlet("/board/list") 
public class BoardListServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse res) 
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			ArrayList<BoardDto> boardList = null;
			
			boardList = (ArrayList<BoardDto>)boardDao.selectList();
			
			req.setAttribute("boardList", boardList);
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");
			
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("/board/BoardListView.jsp");
			
			dispatcher.include(req, res);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			req.setAttribute("error", e);
			req.setAttribute("msg", "my sorry");
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("/Error.jsp");
			
			dispatcher.forward(req, res);
		} 
	}

}