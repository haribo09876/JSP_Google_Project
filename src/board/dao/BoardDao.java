package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import board.dto.BoardDto;

public class BoardDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	//게시글 목록
	public List<BoardDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT PNO, TITLE, EDITOR, CRE_DATE, VIEW_COUNT"
						+ " FROM BOARD"
						+ " ORDER BY PNO DESC";
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
			
			int pno = 0;
			String title = "";
			String editor = "";
			Date creDate = null;
			int viewCount = 0;
			
			while (rs.next()) {
				pno = rs.getInt("PNO");
				title = rs.getString("TITLE");
				editor = rs.getString("EDITOR");
				creDate = rs.getDate("CRE_DATE");
				viewCount = rs.getInt("VIEW_COUNT");
				
				BoardDto boardDto = new BoardDto(pno, title, editor, viewCount, creDate);
				
				boardList.add(boardDto);
			}
			
			return boardList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
	}
	
	//게시글 추가
	public int boardInsert(BoardDto boardDto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String title = boardDto.getTitle();
			String editor = boardDto.getEditor();
			String postPwd = boardDto.getPostPwd();
			String contents = boardDto.getContents();
			
			String sql = "INSERT INTO BOARD"
					+ " VALUE(TITLE, EDITOR, POST_PWD, CONTENTS, CRE_DATE)"
					+ " VALUES(?, ?, ?, ?, SYSDATE)";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, title);
			pstmt.setString(2, editor);
			pstmt.setString(3, postPwd);
			pstmt.setString(4, contents);
			
			resultNum = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return resultNum;
	}
}
