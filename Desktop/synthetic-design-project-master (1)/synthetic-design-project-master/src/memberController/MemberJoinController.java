package memberController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MemberDTO;
import service.MemberService;

public class MemberJoinController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("input_id");
		String password = request.getParameter("input_password");
		String strPhone = request.getParameter("input_phone");	
		PrintWriter out = response.getWriter();
		
		if(id.equals("admin")) {
			out.println("<script language='javascript'>");
			out.println("alert('사용할 수 없는 아이디입니다.')");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		if(id.isEmpty() || password.isEmpty() || strPhone.isEmpty()) {
			out.println("<script language='javascript'>");
			out.println("alert('모든 정보를 입력해 주세요.')");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		MemberDTO member = new MemberDTO(id, password, strPhone);
		MemberService service = MemberService.getInstance();
		service.memberJoin(member);
		out.println("<script language='javascript'>");
		out.println("alert('회원 가입을 축하드립니다.')");
		out.println("location.href='index.jsp'");
		out.println("</script>");
		out.close();
	}
}
