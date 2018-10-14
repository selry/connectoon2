package service;

import java.util.ArrayList;
import dao.MemberDAO;
import dto.MemberDTO;

public class MemberService {
	private static MemberService service = new MemberService();
	private MemberService() {}
	MemberDAO dao = MemberDAO.getInstance();
	// 객체는 무조건 하나만 만들 수 있도록 제한 걸기
	public static MemberService getInstance() {
		return service;
	}
	// 회원가입
	public void memberJoin(MemberDTO member) {
		dao.memberJoin(member);
	}
	// 로그인할 때 쓰는 메소드(비밀번호를 반환)
	public String memberLogin(String id) {
		return dao.memberLogin(id);
	}
}
