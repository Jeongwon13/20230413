package edu.kh.community.board.model.service;

import static edu.kh.community.common.JDBCTemplate.*;
import static edu.kh.community.common.JDBCTemplate.commit;
import static edu.kh.community.common.JDBCTemplate.getConnection;
import static edu.kh.community.common.JDBCTemplate.rollback;

import java.sql.Connection;

import edu.kh.community.board.model.dao.BoardDAO;
import edu.kh.community.board.model.vo.BoardVo;

public class BoardService {
	
private BoardDAO dao = new BoardDAO();

public int insertBoard(BoardVo board) throws Exception {
		Connection conn = getConnection();
		
		int result = dao.insertBoard(conn, board);
		 
		if(result > 0) commit(conn);
		else rollback(conn);
				
		close(conn);
		
		return result;
		
		
	}
	
	
}
