package memberController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		String login_user = (String)session.getAttribute("login_user");
		String login_admin = (String)session.getAttribute("login_admin");
		if(login_user == null && login_admin==null) {
			out.println("<script language='javascript'>");
			out.println("alert('로그인을 한 상태에서만 로그아웃이 가능합니다!')");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} else if(login_admin != null) {
			session.removeAttribute("login_admin");
			out.println("<script language='javascript'>");
			out.println("alert('로그아웃이 완료되었습니다.')");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.close();
		}else {
			session.removeAttribute("login_user");
			out.println("<script language='javascript'>");
			out.println("alert('로그아웃이 완료되었습니다.')");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.close();
		}
	}

}
