package com.smhrd.domain;

import java.math.BigDecimal;
import java.security.Timestamp;

public class Toast_com {
	
	//댓글(ArrayList로 담아서 가기)
	private BigDecimal tc_no;	//댓글 번호
	private String tc_img;	//사진
	private String tc_contents;	//내용
	private int tc_zzan;	//추천 수
	private Timestamp tc_date;	//작성일자
	
	
	
	public Toast_com(BigDecimal tc_no, String tc_img, String tc_contents, int tc_zzan, Timestamp tc_date) {
		super();
		this.tc_no = tc_no;
		this.tc_img = tc_img;
		this.tc_contents = tc_contents;
		this.tc_zzan = tc_zzan;
		this.tc_date = tc_date;
	}
	public BigDecimal getTc_no() {
		return tc_no;
	}
	public String getTc_img() {
		return tc_img;
	}
	public String getTc_contents() {
		return tc_contents;
	}
	public int getTc_zzan() {
		return tc_zzan;
	}
	public Timestamp getTc_date() {
		return tc_date;
	}
	
	
}
