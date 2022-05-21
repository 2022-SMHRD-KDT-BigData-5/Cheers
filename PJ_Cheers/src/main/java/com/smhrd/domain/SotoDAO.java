package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class SotoDAO {
	

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 게시물 작성
	public int insertSoto(Soto soto) {

		int cnt = 0;
		int cnt2 = 0;

		try {
			cnt = sqlSession.insert("com.smhrd.domain.SotoDAO.insertSoto", soto);
			if (cnt > 0) { // 조건문 안에 && cnt2 > 0 넣어야 함
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

	// 전체 게시물 조회
	public List<Soto> selectSoto() {

		List<Soto> SotoList = null;

		try {
			SotoList = sqlSession.selectList("com.smhrd.domain.SotoDAO.selectSoto");

			if (SotoList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return SotoList;
	}
	
	// 게시글 수정
		public int updateSoto(Soto sc_contents) {
			int cnt = 0;
			try {
				cnt = sqlSession.update("com.smhrd.domain.SotoDAO.updateSoto", sc_contents);
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
	
	// 게시물 삭제
		public int deleteSoto(String Soto_no) {
			int cnt = 0;
			try {
				cnt = sqlSession.delete("com.smhrd.domain.SotoDAO.deleteSoto", Soto_no);
				if(cnt>0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return cnt;
		}
		
		//댓글 추가
		public int addSotoComment(Soto_com sc) {
//			SqlSession sqlSession = sqlSessionFactory.openSession();
			int commNum = 0;
			try {
				commNum = sqlSession.insert("com.smhrd.domain.SotoDAO.addSotoComment", sc);
				
				if(commNum!=0) {
					sqlSession.commit();
					
				}else {
					sqlSession.rollback();
				}
			}finally {
				sqlSession.close();
			}
			return commNum;
		}

		// 전체 댓글 조회
		public List<Soto_com> selectSotoComment(String sc_co) {
			
			sqlSession = sqlSessionFactory.openSession();
			List<Soto_com> commList = null;

			try {
				commList = sqlSession.selectList("com.smhrd.domain.SotoDAO.selectSotoComment", sc_co);

				if (commList != null) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}

			return commList;
		}

		// 댓글 삭제
		public int deleteSotoComment(String sc_no) {
			int cnt = 0;
			try {
				cnt = sqlSession.delete("com.smhrd.domain.SotoDAO.deleteSotoComment", sc_no);

				if(cnt>0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return cnt;
		}
		
		
		// 댓글 수정
		public int updateSotoComment(Soto_com sc_co) {
			int cnt = 0;
			try {
				cnt = sqlSession.update("com.smhrd.domain.SotoDAO.updateSotoComment", sc_co);

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

