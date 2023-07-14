package mypage.model.service;

import java.sql.Connection;

import static common.JDBCTemplate.*;

import member.model.vo.Member;
import mypage.model.dao.MyPageDao;

public class MyPageService {
	
	public Member MyEditUpdate(Member m) {
		Connection conn = getConnection();
		
		//1) 회원정보 변경요청 보내기(UPDATE)
		System.out.println(m);
		int result = new MyPageDao().MyEditUpdate(conn, m);
		Member updateMember = null;
		
		//2) 트랜잭션 처리
		if(result > 0) {
			commit(conn);
			// 3) 갱신된 회원정보 다시 조회해오기
			updateMember = new MyPageDao().selectMember(conn, m.getUserId());
		}else {
			rollback(conn);
		}
		//4) 자원반납
		close(conn);
		System.out.println("service updateMember : "+updateMember);
		return updateMember;
	}

}
