package edu.kh.community.board.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.community.board.model.service.BoardService;
import edu.kh.community.board.model.vo.BoardVo;
 

@WebServlet("/board/insertBoard")
public class InsertBoardServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "/WEB-INF/views/board/insertBoard.jsp";
		req.getRequestDispatcher(path).forward(req, resp);
		
	 }
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try { 
		String title = req.getParameter("title1");
		String textArea = req.getParameter("textarea1");
		String writer = req.getParameter("writer1");
	
		BoardVo board = new BoardVo();
		board.setTitle(title);
		board.setContent(textArea);
		board.setWriter(writer); 
		
		
			BoardService service = new BoardService();
			
			int result = service.insertBoard(board);
			
			HttpSession session = req.getSession();
			

			if(result > 0) { // 성공
				session.setAttribute("message", "글 작성~");
				
			}else { // 실패
				session.setAttribute("message", "다시 만들어라...");
				
			}
			req.setAttribute("board", board);
			resp.sendRedirect(req.getContextPath());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}