package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import member.model.service.MemberService;

/**
 * Servlet implementation class SignUpKeywordController
 */
@WebServlet("/userKeyword.me")
public class SignUpKeywordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpKeywordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String[] classKeywordArr = request.getParameterValues("keyword");
		
		String classKeyword = "";
		if(classKeywordArr != null) {
			classKeyword = String.join(", ", classKeywordArr);
		}
		String userId = (String) request.getSession().getAttribute("userId");

		int result = new MemberService().insertClassKeyword(classKeyword, userId);
		
		if(result > 0) { // 성공
			request.getSession().setAttribute("alertMsg", "키워드가 저장되었습니다.");
			response.sendRedirect(request.getContextPath()+"/views/member/MyPageMain.jsp");
		}else { //에러페이지로 포워딩
			request.setAttribute("errorMsg","회원가입에 실패했습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}
	
	
	
	
	
	

}
