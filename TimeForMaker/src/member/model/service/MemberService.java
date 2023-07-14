package member.model.service;

import java.sql.Connection;
import static common.JDBCTemplate.*;

import member.model.dao.MemberDao;
import member.model.vo.Member;


public class MemberService {
	
	
	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		close(conn);
		System.out.println("Service Member m : "+m);
		return m;
	}
	
	/**
	 * 로그인 메소드 - ain 2023/07/11 -
	 * @param userId
	 * @param userPwd
	 * @return
	 */
	/*
	 * public Member loginMember(String userId, String userPwd) { Connection conn =
	 * getConnection(); Member m = new MemberDao().loginMember(conn, userId,
	 * userPwd); System.out.println("Service Member m : "+m); close(conn); return m;
	 * 
	 * }
	 */
	
	public int isertMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		if(result > 0){
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		int count = new MemberDao().idCheck(conn, checkId);
		close(conn);
		return count;
	}
	
	public int insertClassKeyword(String classKeyword , String userId ) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().insertClassKeyword(conn,classKeyword,userId);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int deleteMember(String userId, String userPwd) {
		Connection conn = getConnection();
//		System.out.println("Service userId"+ userId);
		int result = new MemberDao().deleteMember(conn, userId, userPwd);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	
	
	
	
	
	
	

}
