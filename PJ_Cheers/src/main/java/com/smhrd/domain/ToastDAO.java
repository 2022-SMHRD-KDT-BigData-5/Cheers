package com.smhrd.domain;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ToastDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 게시물 작성
	public int insertPost(Toast toast) {

		int cnt = 0;
//		int cnt2 = 0;

		try {
			cnt = sqlSession.insert("com.smhrd.domain.ToastDAO.insertPost", toast);
//			cnt2 = sqlSession.insert("com.smhrd.domain.ToastDAO.uploadImg", toast);

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
	public List<Toast> selectPost() {

		List<Toast> postList = null;

		try {
			postList = sqlSession.selectList("com.smhrd.domain.ToastDAO.selectPost");

			if (postList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return postList;
	}
	
	// 게시물 삭제
		public int deletePost(String toast_no) {
			int cnt = 0;
			try {
				cnt = sqlSession.delete("com.smhrd.domain.ToastDAO.deletePost",toast_no);
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
		public int addComment(Toast_com tc) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int commNum = 0;
			try {
				commNum = sqlSession.insert("com.smhrd.domain.ToastDAO.addComment", tc);
				
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
		public List<Toast_com> selectComment(String tonm) {
			
			sqlSession = sqlSessionFactory.openSession();
			List<Toast_com> commList = null;

			try {
				System.out.println(tonm);
				commList = sqlSession.selectList("com.smhrd.domain.ToastDAO.selectComment",tonm);

				if (commList != null) {
					System.out.println("댓글 조회 성공");
					sqlSession.commit();
				} else {
					System.out.println("댓글 조회 실패");
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
		public int deleteComment(String tc_no) {
			int cnt = 0;
			try {
				cnt = sqlSession.delete("com.smhrd.domain.ToastDAO.deleteComment", tc_no);

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
	}
