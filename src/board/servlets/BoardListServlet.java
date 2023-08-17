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
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {

		Connection conn = null;

		try {
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);

			ArrayList<BoardDto> boardList = null;

			boardList = (ArrayList<BoardDto>) boardDao.selectList();

			req.setAttribute("boardList", boardList);
			
			//화면에 보여줄 게시글 수
			int page = 1;
			if (req.getParameter("page") == null) {
				page = 5;
				int pagesSet = 5;

				req.setAttribute("pagesSet", pagesSet);
			} else {
				page = Integer.parseInt(req.getParameter("page"));
				int pagesSet = 5 * page;
				
				req.setAttribute("pagesSet", pagesSet);
			}
			
			//총 페이지 수
			int totalPages = (boardList.size()-1) / 5 + 1;
			System.out.println(boardList.size());
			req.setAttribute("totalPages", totalPages);
			
			//목록 페이징 인덱스 최대 5개
			int pageStartNum = (page-1)/5*5 + 1;
			int pageLastNum = (page-1)/5*5 + 5;
			
			if (pageLastNum > totalPages) {
				pageLastNum = totalPages;
			}
			
			req.setAttribute("pageStartNum", pageStartNum);
			req.setAttribute("pageLastNum", pageLastNum);
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");

			RequestDispatcher dispatcher = req.getRequestDispatcher("/board/BoardListView.jsp");

			dispatcher.include(req, res);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			req.setAttribute("error", e);
			req.setAttribute("msg", "my sorry");
			RequestDispatcher dispatcher = req.getRequestDispatcher("/Error.jsp");

			dispatcher.forward(req, res);
		}
	}

}