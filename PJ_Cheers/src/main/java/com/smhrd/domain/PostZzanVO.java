package com.smhrd.domain;

import java.math.BigDecimal;

public class PostZzanVO {
	
	private BigDecimal zzan_no;
	
	private BigDecimal toast_no;
	private String member_id;
	
	private BigDecimal zzan_stat;
	private BigDecimal zzan_count;
	
	

	public BigDecimal getZzan_count() {
		return zzan_count;
	}
	
	

	public PostZzanVO(BigDecimal zzan_no, BigDecimal toast_no, String member_id, BigDecimal zzan_stat,
			BigDecimal zzan_count) {
		super();
		this.zzan_no = zzan_no;
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.zzan_stat = zzan_stat;
		this.zzan_count = zzan_count;
	}



	public PostZzanVO(BigDecimal zzan_no, BigDecimal toast_no, String member_id, BigDecimal zzan_stat) {
		super();
		this.zzan_no = zzan_no;
		this.toast_no = toast_no;
		this.member_id = member_id;
		this.zzan_stat = zzan_stat;
	}

	public BigDecimal getZzan_no() {
		return zzan_no;
	}

	public BigDecimal getToast_no() {
		return toast_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public BigDecimal getZzan_stat() {
		return zzan_stat;
	}

	
	

}
