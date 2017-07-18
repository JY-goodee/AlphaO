package dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Member;

public interface MemberMapper {

	@Insert("insert into Member(member_id,member_pw,member_name,member_nick,"
			+ "member_question,member_answer,member_pic,member_tel,membet_email) "
			+ "values(#{member_id},#{member_pw},#{member_name},#{member_nick},"
			+ "#{member_question},#{member_answer},"
			+ "#{member_pic},#{member_tel},#{membet_email})")
	void memberJoin(Member member);

	@Select("select member_id from Member where member_id=#{member_id}")
	Member getMemberById(String member_id);
}
