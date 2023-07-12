package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/insert.me")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userNick = request.getParameter("userNick");
		String userPwd = request.getParameter("userPwd");
		String userId = request.getParameter("userId");
		String userPhone = request.getParameter("userPhone");
		String userName = request.getParameter("userName");

		
		Member m = new Member(userNick, userPwd, userId, userPhone, userName);
		
		int result = new MemberService().isertMember(m);
		
		if(result > 0) { // 성공
			request.getSession().setAttribute("alertMsg", "회원가입에 성공했습니다.");
//			response.sendRedirect(request.getContextPath());
			response.sendRedirect(request.getContextPath()+"/views/member/SignUpKeyword.jsp");
		}else { //에러페이지로 포워딩
			request.setAttribute("errorMsg","회원가입에 실패했습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

}
