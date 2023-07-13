package reception.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import common.model.vo.PageInfo;
import reception.model.vo.Reception;

public class ReceptionDao {
	Properties prop = new Properties();
	
	public ReceptionDao() {
		try {
			prop.loadFromXML(new FileInputStream(ReceptionDao.class.getResource("/sql/reception/reception-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int countAllReceptionList(Connection conn, Reception r) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countAllReceptionList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, r.getUserId());
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				result = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int countReceptionList(Connection conn, Reception r) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countReceptionList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, r.getUserId());
			pstmt.setString(2, r.getCategory());
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				result=rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * @param conn
	 * @param pi
	 * @param r
	 * 
	 * db에서 rownum, title, create_date, status 가져와야 함
	 * -status : 답변 테이블과 조인해서 없으면 "대기중", 있으면 "완료"
	 * @return
	 */
	public ArrayList<Reception> selectAllReceptionList(Connection conn, PageInfo pi, Reception r){
		ArrayList<Reception> list = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllReceptionList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1)*pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setString(1, r.getUserId());
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				Reception re = new Reception(rset.getString("title"), rset.getDate("upload_date"),
											rset.getInt("r"), rset.getString("status"));
				list.add(re);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}
	
	public ArrayList<Reception> selectReceptionList(Connection conn, PageInfo pi, Reception r){
		ArrayList<Reception> list = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReceptionList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1)*pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setString(1, r.getUserId());
			pstmt.setString(2, r.getCategory());
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				Reception re = new Reception(rset.getString("title"), rset.getDate("upload_date"),
											rset.getInt("r"), rset.getString("status"));
				list.add(re);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}
	
	public Reception selectAllReception(Connection conn, Reception r) {
		Reception result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllReception");
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, r.getUserId());
			pstmt.setInt(2, r.getRowNum());
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				r = new Reception(rset.getString("user_id"), rset.getString("title"), rset.getString("text"),
											rset.getDate("upload_date"), rset.getString("answer"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public Reception selectReception(Connection conn, Reception r, String category) {
		Reception result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReception");
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, r.getUserId());
			pstmt.setString(2, category);
			pstmt.setInt(3, r.getRowNum());
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				r = new Reception(rset.getString("user_id"), rset.getString("title"), rset.getString("text"),
									rset.getDate("upload_date"), rset.getString("answer"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
}
