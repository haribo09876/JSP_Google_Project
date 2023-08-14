package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import member.dto.MemberDto;

public class MemberDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}

//	회원목록
	public List<MemberDto> selectList() throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT MNO, MNAME, EMAIL, CRE_DATE";
			sql += " FROM MEMBERS";
			sql += " ORDER BY MNO DESC";

			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();

			ArrayList<MemberDto> memberList = new ArrayList<MemberDto>();

			int no = 0;
			String name = "";
			String email = "";
			Date creDate = null;

			while (rs.next()) {
				no = rs.getInt("MNO");
				name = rs.getString("MNAME");
				email = rs.getString("EMAIL");
				creDate = rs.getDate("CRE_DATE");

				MemberDto memberDto = new MemberDto();

				memberList.add(memberDto);

			}

			return memberList;

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
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
					e.printStackTrace();
				}
			}
		}
	}

//	회원등록
	public int memberInsert(MemberDto memberDto) throws Exception {
		int resultNum = 0;

		PreparedStatement pstmt = null;

		try {
			String mname = memberDto.getMname();
			Date birthDate = memberDto.getBirthDate();
			String gender = memberDto.getGender();
			String email = memberDto.getEmail();
			String recoveryEmail = memberDto.getRecoveryEmail();
			int phoneNo = memberDto.getPhoneNo();
			String pwd = memberDto.getPwd();

			String sql = "";

			sql += "INSERT INTO MEMBERS";
			sql += "(MNO, MNAME, BIRTH_DATE, GENDER, EMAIL, RECOVERY_EMAIL, PHONE_NO, PWD)";
			sql += "VALUES(MEMBERS_MNO_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)";

			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, mname);
			pstmt.setDate(2, (java.sql.Date) birthDate);
			pstmt.setString(3, gender);
			pstmt.setString(4, email);
			pstmt.setString(5, recoveryEmail);
			pstmt.setInt(6, phoneNo);
			pstmt.setString(7, pwd);

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
			} // if문 종료

		}
		return resultNum;
	}

//	회원삭제
	public int memberDelete(int no) throws Exception {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = "";

		sql = "DELETE FROM MEMBERS";
		sql += " WHERE MNO = ?";

		try {
			pstmt = connection.prepareStatement(sql);

			pstmt.setInt(1, no);

			result = pstmt.executeUpdate();
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
		return result;
	}

	public MemberDto memberSelectOne(int mno) throws Exception {
		MemberDto memberDto = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";

		sql += "SELECT MNAME, EMAIL";
		sql += " FROM MEMBERS";
		sql += " WHERE  MNO = ?";

		try {
			pstmt = connection.prepareStatement(sql);

			pstmt.setInt(1, mno);

			rs = pstmt.executeQuery();

			String mName = "";
			String email = "";
			Date creDate = null;

			if (rs.next()) {
				mName = rs.getString("MNAME");
				email = rs.getString("EMAIL");				

				memberDto = new MemberDto();

				memberDto.setMno(mno);
				memberDto.setMname(mName);
				memberDto.setEmail(email);
			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
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
					e.printStackTrace();
				}
			}
		} 
		return memberDto;
	}

	public int memberUpdate(MemberDto memberDto) throws Exception {
	
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		
		sql += "UPDATE MEMBERS";
		sql += " SET EMAIL = ?, MNAME = ?, MOD_DATE = SYSDATE";
		sql += " WHERE MNO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, memberDto.getEmail());
			pstmt.setString(2, memberDto.getMname());
			pstmt.setInt(3, memberDto.getMno());
			
			result = pstmt.executeUpdate();
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
		return result;		
	}

	public MemberDto memberIdExist(String email)
		throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		sql += "SELECT EMAIL";
		sql += " FROM MEMBERS";
		sql += " WHERE EMAIL = ?";		
		
	
		try {
			pstmt = connection.prepareStatement(sql);
						
			pstmt.setString(1, email);

			rs = pstmt.executeQuery();

			MemberDto memberDto = new MemberDto();
			
			if (rs.next()) {
				email = rs.getString("email");	

				memberDto.setEmail(email);
				
				return memberDto;				
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	
	public MemberDto memberPasswordExist(String email, String pwd)
			throws SQLException {
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "";
			sql += "SELECT PWD";
			sql += " FROM MEMBERS";
			sql += " WHERE EMAIL = ?";
		
			try {
								
				pstmt = connection.prepareStatement(sql);
				
				pstmt.setString(1, pwd);

				rs = pstmt.executeQuery();

				MemberDto memberDto = new MemberDto();								
				
				if (rs.next()) {
					
					pwd = rs.getString("pwd");					
					memberDto.setEmail(email);
					memberDto.setPwd(pwd);
						
					return memberDto;				
				}
					
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				try {
					if (rs != null) {
						rs.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				try {
					if (pstmt != null) {
						pstmt.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return null;
		}
}
