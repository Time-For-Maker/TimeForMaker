package mypage.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.dao.MemberDao;
import member.model.vo.Member;


public class MyPageDao {
	
	private Properties prop = new Properties();
	public MyPageDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int MyEditUpdate(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("MyEditUpdate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserName());			
			pstmt.setString(2, m.getUserPwd());				
			pstmt.setString(3, m.getUserNick());			
			pstmt.setString(4, m.getUserPhone());			 
			pstmt.setString(5, m.getUserId());	

			
			System.out.println(pstmt);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		System.out.println("dao MyEditUpdate reault : "+ result);
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
						rset.getInt("USER_NO"),
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
		System.out.println("dao selectMember m : "+ m);
		return m;
	}
	
	
	
	
	

}
