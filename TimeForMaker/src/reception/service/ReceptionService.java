package reception.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import common.model.vo.PageInfo;
import reception.model.dao.ReceptionDao;
import reception.model.vo.Reception;

public class ReceptionService {

	public ReceptionService() {
		
	}
	
	public int countAllReceptionList(Reception r) {
		Connection conn = getConnection();
		
		int result = new ReceptionDao().countAllReceptionList(conn, r);
		
		close(conn);
		
		return result;
	}
	
	public int countReceptionList(Reception r) {
		Connection conn = getConnection();
		
		int result = new ReceptionDao().countReceptionList(conn, r);
		
		close(conn);
		
		return result;
	}
	
	public ArrayList<Reception> selectAllReceptionList(PageInfo pi, Reception r){
		Connection conn = getConnection();
		
		ArrayList<Reception> list = new ReceptionDao().selectAllReceptionList(conn, pi, r);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Reception> selectReceptionList(PageInfo pi, Reception r){
		Connection conn = getConnection();
		
		ArrayList<Reception> list = new ReceptionDao().selectReceptionList(conn, pi, r);
		
		close(conn);
		
		return list;
	}
	
	public Reception selectAllReception(Reception r) {
		Connection conn = getConnection();
		
		Reception result = new ReceptionDao().selectAllReception(conn, r);
		
		close(conn);
		
		return result;
	}
	
	public Reception selectReception(Reception r, String category) {
		Connection conn = getConnection();
		
		Reception result = new ReceptionDao().selectReception(conn, r, category);
		
		close(conn);
		
		return result;
	}
}
