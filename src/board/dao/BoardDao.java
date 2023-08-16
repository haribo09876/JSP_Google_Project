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
					+ " VALUE(PNO, TITLE, EDITOR, P_PWD, CONTENTS, VIEW_COUNT, CRE_DATE)"
					+ "VALUES(BOARD_PNO_SEQ.NEXTVAL, ?, ?, ?, ?, 0, SYSDATE)";
			
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
	
	//회원삭제
	public int boardDelete(int pno) throws SQLException {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "DELETE FROM BOARD"
					+ " WHERE PNO = ?";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		} // finally 종료
		
		return result;
	}
	
	//게시글 상세
	public BoardDto boardDetail(int pno) throws Exception{
		BoardDto boardDto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "UPDATE BOARD"
					+ " SET VIEW_COUNT = VIEW_COUNT + 1"
					+ " WHERE PNO = ?";
				
				pstmt = connection.prepareStatement(sql);
				
				pstmt.setInt(1, pno);
				
				rs = pstmt.executeQuery();
			
			sql = "SELECT PNO, TITLE, EDITOR, P_PWD, CONTENTS"
					+ " FROM BOARD"
					+ " WHERE PNO = ?";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rs = pstmt.executeQuery();

			String title = "";
			String editor = "";
			String postPwd = "";
			String contents = "";
			
			if(rs.next()) {
				title = rs.getString("TITLE");
				editor = rs.getString("EDITOR");
				postPwd = rs.getString("P_PWD");
				contents = rs.getString("CONTENTS");
				
				boardDto = new BoardDto();
				
				boardDto.setPno(pno);
				boardDto.setTitle(title);
				boardDto.setEditor(editor);
				boardDto.setPostPwd(postPwd);
				boardDto.setContents(contents);
			}else {
				throw new Exception("해당 게시글을 찾을 수 없습니다.");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
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
			
		} //finally end
		
		return boardDto;
	}
	
	public int boardUpdate(BoardDto boardDto) throws Exception {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "UPDATE BOARD"
					+ " SET TITLE = ?, EDITOR = ?, P_PWD = ?, CONTENTS = ?, CRE_DATE = SYSDATE"
					+ " WHERE PNO = ?";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, boardDto.getTitle());
			pstmt.setString(2, boardDto.getEditor());
			pstmt.setString(3, boardDto.getPostPwd());
			pstmt.setString(4, boardDto.getContents());
			pstmt.setInt(5, boardDto.getPno());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally 종료
		
		return result;
	}
}
