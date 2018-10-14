package memberController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MemberService;

public class MemberLoginController implements Controller {

public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("input_id");			ServletContext context = request.getServletContext();
	String password = request.getParameter("input_password");	String admin_id = context.getInitParameter("admin_id");
	PrintWriter out = response.getWriter();		String admin_password = context.getInitParameter("admin_password");
	HttpSession session = request.getSession();
	
	if(id.isEmpty() || password.isEmpty()) {
		out.println("<script language='javascript'>");
		out.println("alert('�� ĭ�� ��� �ۼ��� �ּ���!')");
		out.println("history.back();");
		out.println("</script>");
		out.close();
	}
	if(id.equals(admin_id)) {
		if(!password.equals(admin_password)) {
			out.println("<script language='javascript'>");
			out.println("alert('��й�ȣ�� Ʋ���ϴ�!')");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}else {
			session.setAttribute("login_admin", admin_id);
			response.sendRedirect("index.jsp");
		}
	}
	
	MemberService service = MemberService.getInstance();
	String db_password = service.memberLogin(id);
	if(db_password == null) {
		out.println("<script language='javascript'>");
		out.println("alert('�������� �ʴ� ���̵��Դϴ�. ���̵� Ȯ���� �ּ���.')");
		out.println("history.back();");
		out.println("</script>");
		out.close();
	}else if (!db_password.equals(password)) {
		out.println("<script language='javascript'>");
		out.println("alert('��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���.')");
		out.println("history.back();");
		out.println("</script>");
		out.close();
	}else {
		session.setAttribute("login_user", id);
		response.sendRedirect("index.jsp");
	}
}
}
