package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Favorites {
	
	private BigDecimal fav_no;
	private String member_id;
	private int recipe_no;
	private Timestamp fav_date;
	
	public Favorites(BigDecimal fav_no, String member_id, int recipe_no, Timestamp fav_date) {
		super();
		this.fav_no = fav_no;
		this.member_id = member_id;
		this.recipe_no = recipe_no;
		this.fav_date = fav_date;
	}

	public BigDecimal getFav_no() {
		return fav_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public int getRecipe_no() {
		return recipe_no;
	}

	public Timestamp getFav_date() {
		return fav_date;
	}
	
	
	
	

}
