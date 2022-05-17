package com.smhrd.domain;

import java.math.BigDecimal;

public class Recipe {
	
	private BigDecimal recipe_no;
	private BigDecimal recipe_base;
	private String recipe_name;
	private String recipe_how;
	private String recipe_ing;
	private String recipe_img;
	
	public Recipe(BigDecimal recipe_no, BigDecimal recipe_base, String recipe_name, String recipe_how, String recipe_ing,
			String recipe_img) {
		super();
		this.recipe_no = recipe_no;
		this.recipe_base = recipe_base;
		this.recipe_name = recipe_name;
		this.recipe_how = recipe_how;
		this.recipe_ing = recipe_ing;
		this.recipe_img = recipe_img;
	}
	
	public Recipe(BigDecimal recipe_base, String recipe_name, String recipe_how, String recipe_ing,
			String recipe_img) {
		super();
		
		this.recipe_base = recipe_base;
		this.recipe_name = recipe_name;
		this.recipe_how = recipe_how;
		this.recipe_ing = recipe_ing;
		this.recipe_img = recipe_img;
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
	
	
	
	
	

}
