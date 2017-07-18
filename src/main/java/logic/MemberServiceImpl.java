package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao memberDao;

	@Override
	public void createMember(Member member) {
		memberDao.createMember(member);
	}
	@Override
	public Member getMemberById(String member_id) {
		return memberDao.getMemberById(member_id);
	}
	@Override
	public Member getUserByIdAndPw(String member_id, String member_pw) {
		return memberDao.getMemberByIdNPw(member_id,member_pw);
	}
}
