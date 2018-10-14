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
			out.println("alert('����� �� ���� ���̵��Դϴ�.')");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		if(id.isEmpty() || password.isEmpty() || strPhone.isEmpty()) {
			out.println("<script language='javascript'>");
			out.println("alert('��� ������ �Է��� �ּ���.')");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		MemberDTO member = new MemberDTO(id, password, strPhone);
		MemberService service = MemberService.getInstance();
		service.memberJoin(member);
		out.println("<script language='javascript'>");
		out.println("alert('ȸ�� ������ ���ϵ帳�ϴ�.')");
		out.println("location.href='index.jsp'");
		out.println("</script>");
		out.close();
	}
}
