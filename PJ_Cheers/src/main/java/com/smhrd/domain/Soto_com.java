package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;

public class Soto_com {
	
	//댓글(ArrayList로 담아서 가기)
	private BigDecimal sc_no;
	private String soto_no;
	private String member_id;
	private String sc_contents;
	private Timestamp sc_date;
	
	private Soto_com() {}
	
	public Soto_com(BigDecimal sc_no, String soto_no, String member_id, String sc_contents, Timestamp sc_date) {
		super();
		this.sc_no = sc_no;
		this.soto_no = soto_no;
		this.member_id = member_id;
		this.sc_contents = sc_contents;
		this.sc_date = sc_date;
	}
	
	public Soto_com(String member_id, String soto_no, String sc_contents) {
		super();
		
		this.member_id = member_id;
		this.soto_no = soto_no;
		this.sc_contents = sc_contents;
	}

	public Soto_com(BigDecimal sc_no, String sc_contents) {
		super();
		this.sc_no = sc_no;
		this.sc_contents = sc_contents;
	}

	public Soto_com(String soto_no) {
		super();
		this.soto_no = soto_no;
	}

	public BigDecimal getSc_no() {
		return sc_no;
	}

	public void setSc_no(BigDecimal sc_no) {
		this.sc_no = sc_no;
	}

	public String getSoto_no() {
		return soto_no;
	}

	public void setSoto_no(String soto_no) {
		this.soto_no = soto_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getSc_contents() {
		return sc_contents;
	}

	public void setSc_contents(String sc_contents) {
		this.sc_contents = sc_contents;
	}

	public Timestamp getSc_date() {
		return sc_date;
	}

	public void setSc_date(Timestamp sc_date) {
		this.sc_date = sc_date;
	}
	
}
