package logic;

import java.io.Serializable;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Member implements Serializable{
	@Size(min=3,max=30)
	private String member_id;
	@Size(min=3,max=20)
	private String member_pw;
	@NotEmpty
	private String member_name;
	@NotEmpty
	private String member_nick;
	@NotEmpty
	private String member_question;
	@NotEmpty
	private String member_answer;
	private String member_pic;
	private String member_tel;
	private String member_email;
	private int member_win;
	private int member_lose;
	private int member_score;
	private int member_winrate; 
	private String member_grade;
	private int member_guild_num;
	private int member_guild_point;
	private String member_guild_posi;
	private int member_point;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_nick() {
		return member_nick;
	}
	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}
	public String getMember_pic() {
		return member_pic;
	}
	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_question() {
		return member_question;
	}
	public void setMember_question(String member_question) {
		this.member_question = member_question;
	}
	public String getMember_answer() {
		return member_answer;
	}
	public void setMember_answer(String member_answer) {
		this.member_answer = member_answer;
	}
	public int getMember_win() {
		return member_win;
	}
	public void setMember_win(int member_win) {
		this.member_win = member_win;
	}
	public int getMember_lose() {
		return member_lose;
	}
	public void setMember_lose(int member_lose) {
		this.member_lose = member_lose;
	}
	public int getMember_score() {
		return member_score;
	}
	public void setMember_score(int member_score) {
		this.member_score = member_score;
	}
	public int getMember_winrate() {
		return member_winrate;
	}
	public void setMember_winrate(int member_winrate) {
		this.member_winrate = member_winrate;
	}
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	public int getMember_guild_num() {
		return member_guild_num;
	}
	public void setMember_guild_num(int member_guild_num) {
		this.member_guild_num = member_guild_num;
	}
	public int getMember_guild_point() {
		return member_guild_point;
	}
	public void setMember_guild_point(int member_guild_point) {
		this.member_guild_point = member_guild_point;
	}
	public String getMember_guild_posi() {
		return member_guild_posi;
	}
	public void setMember_guild_posi(String member_guild_posi) {
		this.member_guild_posi = member_guild_posi;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	
	
}
