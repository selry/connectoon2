package memberController;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class FrontController extends HttpServlet{
   private static final long serialVersionUID = 1L;
   HashMap<String, Controller> list = null;
   
   public void init(ServletConfig config) throws ServletException {
      
      list = new HashMap<String, Controller>();
      list.put("/memberJoin.do", new MemberJoinController());
      list.put("/memberLogin.do", new MemberLoginController());
      list.put("/memberLogout.do", new MemberLogoutController());
      }
      
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("euc-kr");  request.setCharacterEncoding("UTF-8");
        String url = request.getRequestURI();
        String contextPath = request.getContextPath();
        String path = url.substring(contextPath.length());
       
        Controller subController = list.get(path);
        subController.execute(request, response);
   }
}