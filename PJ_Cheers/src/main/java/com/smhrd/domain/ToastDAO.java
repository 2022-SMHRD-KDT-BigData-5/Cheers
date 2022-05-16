package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ToastDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	//게시물 작성
	public int insertPost(Toast toast) {

		

		int cnt = 0;
//		int cnt2 = 0;
		
		try {
			cnt = sqlSession.insert("com.smhrd.domain.ToastDAO.insertPost", toast);
//			cnt2 = sqlSession.insert("com.smhrd.domain.ToastDAO.uploadImg", toast);
			
			if (cnt > 0 ) {	//조건문 안에 && cnt2 > 0 넣어야 함
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
	
	}
	
	
}
