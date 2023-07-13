package mypage.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

public class MyPageDao {
	
	private Properties prop = new Properties();
	
	public int MyEditUpdate(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("MyEditUpdate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserNick());			//USER_NICK = ? ,
			pstmt.setString(2, m.getUserPwd());				//USER_PWD = ?,
			pstmt.setString(3, m.getUserPhone());			//USER_PHONE = ? ,
			pstmt.setString(4, m.getUserName());			//USER_NAME = ? 
			pstmt.setString(5, m.getUserId());				//USER_ID = ?
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public Member selectMember(Connection conn, String userId) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(
						rset.getString("USER_ID"),
						rset.getString("USER_NAME"),
						rset.getString("USER_PWD"),
						rset.getString("USER_NICK"),
						rset.getString("USER_PHONE"),
						rset.getDate("USER_ENROLL"),
						rset.getDate("USER_MODIFY"),
						rset.getString("USER_TYPE"),
						rset.getString("MANAGER_TYPE")
								);
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	
	
	
	

}
