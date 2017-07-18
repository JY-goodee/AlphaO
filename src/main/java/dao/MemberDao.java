package dao;

import logic.Member;

public interface MemberDao {

	void createMember(Member member);

	Member getMemberById(String member_id);

	Member getMemberByIdNPw(String member_id, String member_pw);

}
