package logic;

public interface MemberService {

	void createMember(Member member);

	Member getMemberById(String member_id);

	Member getUserByIdAndPw(String member_id, String member_pw);

}
