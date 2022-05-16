package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ToastDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//게시물 작성
	public int insertPost(Toast toast) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt1 = 0;
		int cnt2 = 0;
		
		try {
			cnt1 = sqlSession.insert("com.smhrd.domain.ToastDAO.insertPost", toast);
			cnt2 = sqlSession.insert("com.smhrd.domain.ToastDAO.uploadImg", toast);
			
			if (cnt1 > 0 && cnt2 > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt1;
	
	}
	
	
}
