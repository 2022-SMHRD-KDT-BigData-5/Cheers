package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UploadDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertUpload(Upload upload) { //실제파일이름, 
		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.UploadDAO.insertUpload", upload);
			if (cnt > 0) {
				sqlSession.commit();
				System.out.println("db등록완료");
			} else {
				sqlSession.rollback();
				System.out.println("db등록실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
}
