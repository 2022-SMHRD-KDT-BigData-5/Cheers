package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ToastDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//게시물 작성
	public int insertPost(Toast toast) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.ToastDAO.insertPost", toast);
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
	
	}
	
	
}
