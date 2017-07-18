package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.MemberMapper;
import logic.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS="dao.mapper.MemberMapper.";
	
	@Override
	public void createMember(Member member) {
		sqlSession.getMapper(MemberMapper.class).memberJoin(member);
	}
	@Override
	public Member getMemberById(String member_id) {
		return sqlSession.getMapper(MemberMapper.class).getMemberById(member_id);
	}
	@Override
	public Member getMemberByIdNPw(String member_id, String member_pw) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("member_id", member_id);
		map.put("member_pw", member_pw);
		return sqlSession.getMapper(MemberMapper.class).getMemberById(member_id);
	}
}
