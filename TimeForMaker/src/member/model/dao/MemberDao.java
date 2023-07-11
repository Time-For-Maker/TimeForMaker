package member.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import member.model.vo.Member;

public class MemberDao {

	private Properties prop = new Properties();

	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (InvalidPropertiesFormatException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member loginMember(Connection conn, String userId, String userPwd) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMember");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2,  userPwd);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(
						rset.getString("USER_ID"),
						rset.getString("USER_NAME"),
						rset.getString("USER_PWD"),
						rset.getString("USER_NICK"),
						rset.getByte("USER_IMG"),
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
