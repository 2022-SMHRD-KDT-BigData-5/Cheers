package com.smhrd.domain;

import java.math.BigDecimal;
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
		int cnt2 = 0;

		try {
			cnt = sqlSession.insert("com.smhrd.domain.ToastDAO.insertPost", toast);

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
//			SqlSession sqlSession = sqlSessionFactory.openSession();
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
				commList = sqlSession.selectList("com.smhrd.domain.ToastDAO.selectComment",tonm);

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
		
		//짠 생성
		public int getZzan(Toast toast) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int zzan = -1;

			try {
				zzan = (int)sqlSession.selectOne("com.smhrd.domain.ToastDAO.getZzan", toast);
				if(zzan!=-1) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}finally {
				sqlSession.close();
			}
			return zzan;
		}
		
//		public int addZzan(Toast toast) {
//			
//			int zzan = 0;
//			try {
//				zzan = sqlSession.insert("com.smhrd.domain.ToastDAO.addZzan", toast);
//				
//				if(zzan!=0) {
//					sqlSession.commit();
//					
//				}else {
//					sqlSession.rollback();
//				}
//			}finally {
//				sqlSession.close();
//			}
//			return zzan;
//		}
		
		//짠 수정
		public int updateZzan(String Toast_no, String status) {
//			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt = 0;

			try {
				if(status.equals("zzan")) {
					System.out.println(Toast_no);
					cnt = (int)sqlSession.update("com.smhrd.domain.ToastDAO.plusZzan", Toast_no);
				}else {
					cnt = (int)sqlSession.update("com.smhrd.domain.ToastDAO.minusZzan", Toast_no);
				}
				if(cnt!=0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return cnt;
		}
//	댓글수 카운트	
	public int countComment(String toast_no) {
		int cnt=0;
		
		try {
			cnt=sqlSession.selectOne("com.smhrd.domain.ToastDAO.countComment",toast_no);
		if(cnt>0) {
				System.out.println("댓글개수");
				sqlSession.commit();
			}else {
				System.out.println("댓글개수 출력 실패");
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return cnt;
		
		
	}

		
		
		// 댓글 수정
		public int updateComment(Toast_com tc_co) {
			int cnt = 0;
			try {
				cnt = sqlSession.update("com.smhrd.domain.ToastDAO.updateComment", tc_co);

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

		// 게시글 수정
		public int updatePost(Toast contents) {
			int cnt = 0;
			try {
				cnt = sqlSession.update("com.smhrd.domain.ToastDAO.updatePost", contents);

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

