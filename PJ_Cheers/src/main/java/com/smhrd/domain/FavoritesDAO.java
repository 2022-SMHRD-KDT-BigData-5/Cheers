package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FavoritesDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 레시피즐겨찾기추가 -ajax 쓸거라 안 씀
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
	
	// 즐겨찾기추가확인
//	public List<Favorites> favCheck(Favorites fav) {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		List<Favorites> favCheckList = null;
//		
//		try {
//			favCheckList = sqlSession.selectList("com.smhrd.domain.FavoritesDAO.checkFav", fav);
//			if(favCheckList != null) {
//				sqlSession.commit();
//			} else {
//				sqlSession.rollback();
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			sqlSession.close();
//		} 
//		return favCheckList;
//	}
//	
	//안씀
	public boolean favCheck(Favorites fav) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean fCheck = false;
		
		try {
			String recipenum = sqlSession.selectOne("com.smhrd.domain.FavoritesDAO.checkFav", fav);
			if(recipenum != null) {
				fCheck = false;
				sqlSession.commit();
			} else {
				fCheck = true;
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		} 
		return fCheck;
	}
	
	// 레시피즐겨찾기추가2
//		public String insertFav2(Favorites fav) {
//			SqlSession sqlSession = sqlSessionFactory.openSession();
//			int cnt = 0;
//			int cnt2 = 0;
//			String stat = fav.getStatus();
//			try {
//				if (stat.equals("0")) {
//					System.out.println("즐겨찾기ajax-dao");
//					cnt = sqlSession.insert("com.smhrd.domain.FavoritesDAO.fav", fav);
//					cnt2 = sqlSession.update("com.smhrd.domain.FavoritesDAO.stat", fav.getRecipe_no());
//					System.out.println("cnthatu: " + cnt + "하트"+stat);					
//				} else { // 					
//					Favorites fav2 = new Favorites(fav.getRecipe_no(),fav.getStatus());
//					System.out.println("즐겨찾기ajax-dao 삭제");
//					System.out.println("즐겨찾기ajax-dao 삭제"+fav2.getFav_no());
//					cnt = sqlSession.delete("com.smhrd.domain.FavoritesDAO.unfav", fav2.getFav_no());
//					cnt2 = sqlSession.update("com.smhrd.domain.FavoritesDAO.unstat", fav2.getRecipe_no());
//					System.out.println("cntunhatu2: "+cnt+ "하트"+stat);			
//				}
//				
//				if(cnt>0 && cnt2>0) {
//					sqlSession.commit();
//				}else {
//					sqlSession.rollback();
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//				sqlSession.close();
//			}
//			return fav.getStatus();
//		}// 레시피즐겨찾기추가 끝
	
	
	// 레시피즐겨찾기추가만
	public void insertFav2(Favorites fav) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		int cnt2 = 0;
		String stat = fav.getStatus();
		try {
			System.out.println("즐겨찾기ajax-dao");
			cnt = sqlSession.insert("com.smhrd.domain.FavoritesDAO.fav", fav);
			cnt2 = sqlSession.update("com.smhrd.domain.FavoritesDAO.stat", fav.getRecipe_no());
			System.out.println("cnthatu: " + cnt + "하트"+stat);			
			if(cnt>0 && cnt2>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
//		return fav.getStatus();
	}// 레시피즐겨찾기추가만끝
	
	
	// 즐겨찾기삭제
	public void unFav(BigDecimal recipe_no, BigDecimal fav_no) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		int cnt2 = 0;
		
//		String stat = fav.getStatus();
		
		try {
			System.out.println("즐겨찾기ajax-dao삭제"+fav_no);
			cnt2 = sqlSession.update("com.smhrd.domain.FavoritesDAO.unstat", recipe_no);
			cnt = sqlSession.delete("com.smhrd.domain.FavoritesDAO.unfav", fav_no);				
			if(cnt>0 && cnt2>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
//		return fav.getStatus();
	}// 레시피즐겨찾기추가만끝
	
	//즐겨찾기번호셀렉트
	public Favorites getfavno(Favorites fav) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Favorites favno = null;
		try {
			favno = sqlSession.selectOne("com.smhrd.domain.FavoritesDAO.getfavno", fav);
			if(favno != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return favno;
	}
	
	// 정보
		public List<Favorites> getinfo(){
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<Favorites> infoList = null;
			try {
				infoList = sqlSession.selectList("com.smhrd.domain.FavoritesDAO.getinfo");
				System.out.println(infoList.get(0));
//				if(favList != null) {
//					System.out.println("마이레시피조회 성공");
//					sqlSession.commit();
//				} else {
//					System.out.println("마이레시피조회 실패");
//					sqlSession.rollback();
//				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return infoList;
		}// 정보
	

}
