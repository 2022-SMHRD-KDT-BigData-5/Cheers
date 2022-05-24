package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;

public class Toast {
	
	//기본 게시글 정보
	private BigDecimal toast_no;	//게시물 번호
	private String member_id;	//작성자
	private String contents;	//내용
	private Timestamp toast_date;	//작성일자
	private ArrayList<Toast_com> tc;
	
	private String t_file_path;
	private String t_file_name;
	private String t_file_realname;
		
	private BigDecimal zzan_count;
	

	public Toast(BigDecimal toast_no, String member_id, String contents, Timestamp toast_date, String t_file_path,
			String t_file_name, String t_file_realname, BigDecimal zzan_count) {
		super();
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.contents = contents;
		this.toast_date = toast_date;
		this.t_file_path = t_file_path;
		this.t_file_name = t_file_name;
		this.t_file_realname = t_file_realname;
		this.zzan_count = zzan_count;
	}


	

	public Toast(String member_id, BigDecimal toast_no, BigDecimal zzan_count) {
		super();
		this.member_id = member_id;
		this.toast_no = toast_no;
		this.zzan_count = zzan_count;
	}




	public Toast(BigDecimal toast_no, String contents, String t_file_name) {
		super();
		this.toast_no = toast_no;
		this.contents = contents;
		this.t_file_name = t_file_name;
	}

	public Toast(BigDecimal toast_no, String member_id) {
		super();
		this.toast_no = toast_no;
		this.member_id = member_id;
	}

	public Toast(String member_id, String contents) {
		super();
		this.member_id = member_id;
		this.contents = contents;
	}

	public Toast(BigDecimal toast_no, String member_id, String contents, Timestamp toast_date) {
		super();
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.contents = contents;
		this.toast_date = toast_date;
	}
	
	

	public Toast(BigDecimal toast_no, String contents, String t_file_path, String t_file_name, String t_file_realname) {
		super();
		this.toast_no = toast_no;
		this.contents = contents;
		this.t_file_path = t_file_path;
		this.t_file_name = t_file_name;
		this.t_file_realname = t_file_realname;
	}

	public Toast(String member_id, String contents, String t_file_path, String t_file_name, String t_file_realname) {
		super();
		this.member_id = member_id;
		this.contents = contents;
		this.t_file_path = t_file_path;
		this.t_file_name = t_file_name;
		this.t_file_realname = t_file_realname;
	}

	
	
	
	public Toast(BigDecimal toast_no, String member_id, String contents, Timestamp toast_date, String t_file_path,
			String t_file_name, String t_file_realname) {
		super();
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.contents = contents;
		this.toast_date = toast_date;
		this.t_file_path = t_file_path;
		this.t_file_name = t_file_name;
		this.t_file_realname = t_file_realname;
	}

	

	public String getT_file_path() {
		return t_file_path;
	}

	public String getT_file_name() {
		return t_file_name;
	}

	public String getT_file_realname() {
		return t_file_realname;
	}

	public Toast(String contents) {
		super();
		this.contents = contents;
	}

	public BigDecimal getToast_no() {
		return toast_no;
	}

	
	public String getMember_id() {
		return member_id;
	}

	public String getContents() {
		return contents;
	}

	public Timestamp getToast_date() {
		return toast_date;
	}

	public ArrayList<Toast_com> getTc() {
		return tc;
	}

	public void setToast_no(BigDecimal toast_no) {
		this.toast_no = toast_no;
	}

	
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public void setToast_date(Timestamp toast_date) {
		this.toast_date = toast_date;
	}

	public void setTc(ArrayList<Toast_com> tc) {
		this.tc = tc;
	}


	public BigDecimal getZzan_count() {
		return zzan_count;
	}
	
	

	
}