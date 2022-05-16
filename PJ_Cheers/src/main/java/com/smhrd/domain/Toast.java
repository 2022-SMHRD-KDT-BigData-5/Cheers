package com.smhrd.domain;

import java.math.BigDecimal;
import java.security.Timestamp;
import java.util.ArrayList;

public class Toast {
	
	//기본 게시글 정보
	private BigDecimal toast_no;	//게시물 번호
	private String toast_img;	//사진
	private String member_id;	//작성자
	private String contents;	//내용
	private Timestamp toast_date;	//작성일자

	ArrayList<Toast_com> tc;

	public Toast(BigDecimal toast_no, String toast_img, String member_id, String contents,
			Timestamp toast_date, ArrayList<Toast_com> tc) {
		super();
		this.toast_no = toast_no;
		this.toast_img = toast_img;
		this.member_id = member_id;
		this.contents = contents;
		this.toast_date = toast_date;
		this.tc = tc;
	}

	public BigDecimal getToast_no() {
		return toast_no;
	}

	public String getToast_img() {
		return toast_img;
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
	
	
	
	
}
