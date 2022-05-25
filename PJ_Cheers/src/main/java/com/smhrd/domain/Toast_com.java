package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Toast_com {
	
	//댓글(ArrayList로 담아서 가기)
	private BigDecimal tc_no;	//댓글 번호
	private String toast_no;	//게시물 번호
	private String member_id;	//작성자
	private String tc_contents;	//내용
	private int tc_zzan;
	private Timestamp tc_date;	//작성일자
	
	private String member_nick;
	private Toast_com() {}
	
	
	
	public Toast_com(BigDecimal tc_no, String toast_no, String member_id, String tc_contents, int tc_zzan,
			Timestamp tc_date, String member_nick) {
		super();
		this.tc_no = tc_no;
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.tc_contents = tc_contents;
		this.tc_zzan = tc_zzan;
		this.tc_date = tc_date;
		this.member_nick = member_nick;
	}

	



	public Toast_com(String toast_no, String member_id, String tc_contents) {
		super();
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.tc_contents = tc_contents;
	}

	public Toast_com(BigDecimal tc_no, String toast_no, String member_id, String tc_contents, Timestamp tc_date) {
		super();
		this.tc_no = tc_no;
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.tc_contents = tc_contents;
		this.tc_date = tc_date;
	}
	
	

	public Toast_com(BigDecimal tc_no, String tc_contents) {
	super();
	this.tc_no = tc_no;
	this.tc_contents = tc_contents;
}
	
	
	public Toast_com(String toast_no) {
		super();
		this.toast_no = toast_no;
	}

	public BigDecimal getTc_no() {
		return tc_no;
	}
	public void setTc_no(BigDecimal tc_no) {
		this.tc_no = tc_no;
	}
	public String getToast_no() {
		return toast_no;
	}
	public void setToast_no(String toast_no) {
		this.toast_no = toast_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getTc_contents() {
		return tc_contents;
	}
	public void setTc_contents(String tc_contents) {
		this.tc_contents = tc_contents;
	}
	
	public int getTc_zzan() {
		return tc_zzan;
	}

	public void setTc_zzan(int tc_zzan) {
		this.tc_zzan = tc_zzan;
	}

	public Timestamp getTc_date() {
		return tc_date;
	}
	public void setTc_date(Timestamp tc_date) {
		this.tc_date = tc_date;
	}

	public String getMember_nick() {
		return member_nick;
	}
	
	

	
}
