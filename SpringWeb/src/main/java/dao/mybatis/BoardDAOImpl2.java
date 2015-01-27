package dao.mybatis;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import pbean.Board;
import dao.BoardDAO;

@Repository
// @Service로 달아도..가능
public class BoardDAOImpl2 extends SqlSessionDaoSupport implements BoardDAO {
	// SqlSessionDaoSupport try/catch, commit, close 등을 알아서 해줌.

	public List<Board> getBoardList() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getBoardList");
	}

	public List<Board> getBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("dao.BoardDAO.getBoardListPaging",
				map);
	}

	public Board getBoard(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("dao.BoardDAO.getBoard", num);
	}

	public void addArticle(Board board) {
		getSqlSession().insert("dao.BoardDAO.insertBoard", board);

	}

	public void updArticle(Board board) {
		getSqlSession().update("dao.BoardDAO.updateBoard", board);

	}

	public void delArticle(int num) {
		getSqlSession().delete("dao.BoardDAO.deleteBoard", num);

	}

	public void addArticleCount(int num) {
		getSqlSession().insert("dao.BoardDAO.updateCount", num);

	}

	public int getBoardCnt() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("dao.BoardDAO.getBoardCount");
	}

}
