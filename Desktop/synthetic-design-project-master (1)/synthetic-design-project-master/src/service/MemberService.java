package service;

import java.util.ArrayList;
import dao.MemberDAO;
import dto.MemberDTO;

public class MemberService {
	private static MemberService service = new MemberService();
	private MemberService() {}
	MemberDAO dao = MemberDAO.getInstance();
	// ��ü�� ������ �ϳ��� ���� �� �ֵ��� ���� �ɱ�
	public static MemberService getInstance() {
		return service;
	}
	// ȸ������
	public void memberJoin(MemberDTO member) {
		dao.memberJoin(member);
	}
	// �α����� �� ���� �޼ҵ�(��й�ȣ�� ��ȯ)
	public String memberLogin(String id) {
		return dao.memberLogin(id);
	}
}
