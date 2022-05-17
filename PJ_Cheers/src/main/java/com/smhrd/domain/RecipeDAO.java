package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class RecipeDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//레시피 db에서 가져오기
	public Recipe getRecipe(Recipe recipe) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Recipe recipeC = null;
				try {
					recipeC = sqlSession.selectOne("com.smhrd.domain.RecipeDAO.getRecipe", recipe);
					
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					sqlSession.close();
				} return recipeC;
	}
	
	public List<Recipe> getAllRecipe(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Recipe> recipeList = null;
		try {
			recipeList = sqlSession.selectList("com.smhrd.domain.RecipeDAO.getAllRecipe");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return recipeList;
	}

}
