package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Favorites {
	
	private BigDecimal recipe_no;
	private BigDecimal recipe_base;
	private String recipe_name;
	private String recipe_how;
	private String recipe_ing;
	private String recipe_img;
	
	private BigDecimal fav_no;
	private String member_id;
	private Timestamp fav_date;
	private String status;
	
	public Favorites(BigDecimal recipe_no, BigDecimal recipe_base, String recipe_name, String recipe_how,
			String recipe_ing, String recipe_img, BigDecimal fav_no, String member_id, Timestamp fav_date,
			String status) {
		super();
		this.recipe_no = recipe_no;
		this.recipe_base = recipe_base;
		this.recipe_name = recipe_name;
		this.recipe_how = recipe_how;
		this.recipe_ing = recipe_ing;
		this.recipe_img = recipe_img;
		this.fav_no = fav_no;
		this.member_id = member_id;
		this.fav_date = fav_date;
		this.status = status;
	}
	
	public Favorites(BigDecimal recipe_no, BigDecimal recipe_base, String recipe_name, String recipe_how,
			String recipe_ing, String recipe_img, BigDecimal fav_no, String member_id, Timestamp fav_date) {
		super();
		this.recipe_no = recipe_no;
		this.recipe_base = recipe_base;
		this.recipe_name = recipe_name;
		this.recipe_how = recipe_how;
		this.recipe_ing = recipe_ing;
		this.recipe_img = recipe_img;
		this.fav_no = fav_no;
		this.member_id = member_id;
		this.fav_date = fav_date;
	}
	
	
	public Favorites(BigDecimal recipe_no, String status) {
		super();
		this.recipe_no = recipe_no;
		this.status = status;
	}

	public Favorites(String member_id, BigDecimal recipe_no, String status) {
		super();
		
		this.member_id = member_id;
		this.recipe_no = recipe_no;
		this.status = status;
		
	}
	
	public Favorites(String member_id, BigDecimal recipe_no) {
		super();
		
		this.member_id = member_id;
		this.recipe_no = recipe_no;
		
	}
	
	public Favorites(String member_id, BigDecimal recipe_no, String status, BigDecimal fav_no) {
		super();
		
		this.member_id = member_id;
		this.recipe_no = recipe_no;
		this.status = status;
		this.fav_no = fav_no;
		
	}
	
	

	public Favorites(BigDecimal fav_no) {
		super();
		this.fav_no = fav_no;
	}

	public BigDecimal getRecipe_no() {
		return recipe_no;
	}

	public BigDecimal getRecipe_base() {
		return recipe_base;
	}

	public String getRecipe_name() {
		return recipe_name;
	}

	public String getRecipe_how() {
		return recipe_how;
	}

	public String getRecipe_ing() {
		return recipe_ing;
	}

	public String getRecipe_img() {
		return recipe_img;
	}

	public BigDecimal getFav_no() {
		return fav_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public Timestamp getFav_date() {
		return fav_date;
	}

	public String getStatus() {
		return status;
	}
	
		
}