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
	
	private BigDecimal t_file_no;
	private String t_file_path;
	private String t_file_name;
	private String t_file_server;

	private ArrayList<Toast_com> tc;

	
	
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
	
	public Toast(BigDecimal toast_no, BigDecimal t_file_no, String t_file_path, String t_file_name,
			String t_file_server) {
		super();
		this.toast_no = toast_no;
		this.t_file_no = t_file_no;
		this.t_file_path = t_file_path;
		this.t_file_name = t_file_name;
		this.t_file_server = t_file_server;
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
	
	
	
	
}
