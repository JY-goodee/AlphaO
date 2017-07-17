package logic;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class Board {
	private int Board_num;
	@NotEmpty(message="제목을 입력하세요")
	private String Board_subject;
	@NotEmpty(message="게시물 내용을 입력하세요")
	private String Board_content;
	private String Board_file1;
	private int Board_count;
	private Date Board_date;
	private int Board_ref;
	private int Board_reflevel;
	private int Board_refstep;
	private int Board_group; 
	private int Board_re_cnt;
	private int Board_co_cnt;
	private String Board_Member_id;
	
	
	public int getBoard_num() {
		return Board_num;
	}
	public void setBoard_num(int board_num) {
		Board_num = board_num;
	}
	public String getBoard_subject() {
		return Board_subject;
	}
	public void setBoard_subject(String board_subject) {
		Board_subject = board_subject;
	}
	public String getBoard_content() {
		return Board_content;
	}
	public void setBoard_content(String board_content) {
		Board_content = board_content;
	}
	public String getBoard_file1() {
		return Board_file1;
	}
	public void setBoard_file1(String board_file1) {
		Board_file1 = board_file1;
	}
	public int getBoard_count() {
		return Board_count;
	}
	public void setBoard_count(int board_count) {
		Board_count = board_count;
	}
	public Date getBoard_date() {
		return Board_date;
	}
	public void setBoard_date(Date board_date) {
		Board_date = board_date;
	}
	public int getBoard_ref() {
		return Board_ref;
	}
	public void setBoard_ref(int board_ref) {
		Board_ref = board_ref;
	}
	public int getBoard_reflevel() {
		return Board_reflevel;
	}
	public void setBoard_reflevel(int board_reflevel) {
		Board_reflevel = board_reflevel;
	}
	public int getBoard_refstep() {
		return Board_refstep;
	}
	public void setBoard_refstep(int board_refstep) {
		Board_refstep = board_refstep;
	}
	public int getBoard_group() {
		return Board_group;
	}
	public void setBoard_group(int board_group) {
		Board_group = board_group;
	}
	public int getBoard_re_cnt() {
		return Board_re_cnt;
	}
	public void setBoard_re_cnt(int board_re_cnt) {
		Board_re_cnt = board_re_cnt;
	}
	public int getBoard_co_cnt() {
		return Board_co_cnt;
	}
	public void setBoard_co_cnt(int board_co_cnt) {
		Board_co_cnt = board_co_cnt;
	}
	public String getBoard_Member_id() {
		return Board_Member_id;
	}
	public void setBoard_Member_id(String board_Member_id) {
		Board_Member_id = board_Member_id;
	}
	
	
}
