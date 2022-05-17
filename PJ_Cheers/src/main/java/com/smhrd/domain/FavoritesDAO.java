package com.smhrd.domain;

import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FavoritesDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

}
