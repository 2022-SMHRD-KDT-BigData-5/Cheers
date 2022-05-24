package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;

public class Soto {
	
	//기본 게시글 정보
		private BigDecimal soto_no;	//게시물 번호
		private String member_id;	//작성자
		private String soto_contents;	//내용
		private Timestamp soto_date;	//작성일자
		private ArrayList<Soto_com> sc;
		private int soto_no2;
		
		public Soto() {}
		
		public Soto(BigDecimal soto_no, String member_id) {
			super();
			this.soto_no = soto_no;
			this.member_id = member_id;
		}
		
		
		public Soto(int soto_no2, String soto_contents) {
			super();
			this.soto_no2 = soto_no2;
			this.soto_contents = soto_contents;
		}

		public Soto(BigDecimal soto_no, String member_id, String soto_contents) {
			super();
			this.soto_no = soto_no;
			this.member_id = member_id;
			this.soto_contents = soto_contents;
		}


		public Soto(String member_id, String soto_contents) {
			super();
			this.member_id = member_id;
			this.soto_contents = soto_contents;
		}

		public Soto(BigDecimal soto_no, String member_id, String soto_contents, Timestamp soto_date) {
			super();
			this.soto_no = soto_no;
			this.member_id = member_id;
			this.soto_contents = soto_contents;
			this.soto_date = soto_date;
		}

		public BigDecimal getSoto_no() {
			return soto_no;
		}

		public void setSoto_no(BigDecimal soto_no) {
			this.soto_no = soto_no;
		}

		public String getMember_id() {
			return member_id;
		}

		public void setMember_id(String member_id) {
			this.member_id = member_id;
		}

		public String getSoto_contents() {
			return soto_contents;
		}

		public void setSoto_contents(String soto_contents) {
			this.soto_contents = soto_contents;
		}

		public Timestamp getSoto_date() {
			return soto_date;
		}

		public void setSoto_date(Timestamp soto_date) {
			this.soto_date = soto_date;
		}

		public ArrayList<Soto_com> getSc() {
			return sc;
		}

		public void setSc(ArrayList<Soto_com> sc) {
			this.sc = sc;
		}
		
		
		

}
