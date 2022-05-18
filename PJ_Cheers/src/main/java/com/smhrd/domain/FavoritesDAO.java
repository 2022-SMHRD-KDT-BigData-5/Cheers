package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FavoritesDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 레시피즐겨찾기추가
	public int insertFav(Favorites fav) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.FavoritesDAO.insertFav", fav);
			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}// 레시피즐겨찾기추가 끝
	
	
	// 즐겨찾기테이블정보
	public List<Favorites> getFav(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Favorites> favList = null;
		try {
			favList = sqlSession.selectList("com.smhrd.domain.FavoritesDAO.getFav");
			System.out.println(favList.get(0));
//			if(favList != null) {
//				System.out.println("마이레시피조회 성공");
//				sqlSession.commit();
//			} else {
//				System.out.println("마이레시피조회 실패");
//				sqlSession.rollback();
//			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return favList;
	}// 즐겨찾기테이블정보
	

}
