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
	
		
		//짠0524
		// 짠넣기 0523
				public int insertZn(Toast toast) {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					int cnt = 0;
					int cnt2 = 0;
					Toast toast2 = new Toast(toast.getToast_no(), toast.getMember_id());
					try {
						System.out.println("짠-dao");
						System.out.println(toast.getToast_no());
						cnt = sqlSession.insert("com.smhrd.domain.ToastDAO.insertZn", toast2);
						cnt2 = sqlSession.update("com.smhrd.domain.ToastDAO.statZn", toast.getToast_no());
						System.out.println("짠 상태: " + cnt+" 게시물번호:"+ toast.getToast_no());
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
					return cnt;
				}
				
				// 짠 삭제0523
				public void deleteZn(Toast toast) {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					int cnt = 0;
					int cnt2 = 0;
					Toast toast2 = new Toast(toast.getToast_no(), toast.getMember_id());
					try {
						System.out.println("언짠-dao");
						System.out.println("언짠 게시물 번호" + toast.getToast_no());
						System.out.println("언짠 아이디" + toast.getMember_id());
						cnt2 = sqlSession.update("com.smhrd.domain.ToastDAO.statUnZn", toast.getToast_no());
						cnt = sqlSession.delete("com.smhrd.domain.ToastDAO.deleteZn", toast2);
						System.out.println("언짠 상태: " + cnt+" 게시물번호:"+ toast.getToast_no());
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
					
					//return cnt;
				}
				
				// 짠상태0523
//				짠수 카운트	
				public int getZn(Toast toast) {
					int cnt=0;
					
					try {
						System.out.println("getzn으로 가져와졌는지"+toast.getToast_no());
						cnt=sqlSession.selectOne("com.smhrd.domain.ToastDAO.getZn",toast.getToast_no());
					if(cnt>0) {
							System.out.println("짠개수" + cnt);
							sqlSession.commit();
						}else {
							System.out.println("짠 출력 실패");
							sqlSession.rollback();
						}
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						sqlSession.close();
					}return cnt;		
				}
				
				// 모든짠정보
				public List<PostZzanVO> allZn() {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					List<PostZzanVO> zzanList = null;
					try {
						System.out.println("allzn테스트");
						zzanList=sqlSession.selectList("com.smhrd.domain.ToastDAO.allZn");
						System.out.println(zzanList.get(0).getToast_no());
						System.out.println(zzanList.get(0).getZzan_no());
//						if(favList != null) {
//							System.out.println("마이레시피조회 성공");
//							sqlSession.commit();
//						} else {
//							System.out.println("마이레시피조회 실패");
//							sqlSession.rollback();
//						}
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						sqlSession.close();
					}
					return zzanList;
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

