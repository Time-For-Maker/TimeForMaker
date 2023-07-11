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
		return m;
		
	}

}
