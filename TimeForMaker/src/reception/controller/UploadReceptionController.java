package reception.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.ReceptionFileRenamePolicy;
import reception.model.vo.Reception;

/**
 * Servlet implementation class UploadReceptionController
 * 
 * post 방식 -> 회원의 문의 접수 요청을 처리
 */
@WebServlet("/uploadReception")
public class UploadReceptionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadReceptionController() {
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
		HttpSession session = request.getSession();
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 1-1. 전송용량제한
			int maxSize = 1024*1024*10;
			
			// 1-2. 저장할 폴더의 물리적인 경로
			String savePath = request.getServletContext().getRealPath("/assets/reception_file");
			
			// 2. 전달된 파일명 수정 작업 후 서버에 업로드
			MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new ReceptionFileRenamePolicy());
			
			// 3. DB에 전달할 값 추출
			Reception r = new Reception((String)session.getAttribute("userID"), multi.getParameter("recept-form-category")); // userId & category 생성자
			r.setTitle(multi.getParameter("recept-form-title"));
			r.setText(multi.getParameter("recept-form-content"));
			
			// 첨부파일 (1개만 가능)
			// recept-form-file
			Enumeration files = multi.getFileNames();
	        String key =(String)files.nextElement();
	 
	        String orgName = multi.getOriginalFileName(key);
	        String newName = multi.getFilesystemName(key);
			
			
			
			/*
			 * if(multi.getOriginalFileName("recept-form-file")!=null && ) { // 첨부파일이 존재할 경우
			 * // Attachment 객체 생성 + 원본명, 수정명, 저장경로, 파일레벨 담아서 list에 넣기 Attachment at = new
			 * Attachment(); at.setOriginName(multi.getOriginalFileName(key));
			 * at.setChangeName(multi.getFilesystemName(key));
			 * at.setFilePath("resources/thumnail_upfiles/"); }
			 */
			
			int result = new BoardService().insertThumnailBoard(b, list);
			
			if(result>0) { // 성공시 -> list.th 요청 -> 사진게시판 리스트 이미지
				request.getSession().setAttribute("alertMsg", "성공적으로 업로드 되었습니다.");
				response.sendRedirect(request.getContextPath()+"/list.th"); // 사진게시판 리스트 작업 완료후 변경예정
			}else { // 실패 -> 에러페이지
				request.setAttribute("errorMsg",  "사진게시판 업로드 실패");
				request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
			}
		}
		
		
		
		session.setAttribute("msg", "문의 접수를 완료했습니다. 빠른 답변을 받을 수 있도록 하겠습니다.");
		response.sendRedirect(request.getContextPath()+"/myReception");
	}

}
