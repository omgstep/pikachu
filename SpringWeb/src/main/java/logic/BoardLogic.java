package logic;

import java.util.List;
import java.util.Map;

import pbean.Board;
import vbean.VBoard;

public interface BoardLogic {

	public List<Board> getBoardList();

	public List<Board> getBoardList(Map<String, Object> map);

	public Board getBoard(int num);

	public void addArticle(VBoard vboard); // 게시물추가

	public void updArticle(VBoard vboard);// 게시물 수정

	public void delArticle(int num);// 게시물 삭제

	public void addArticleCount(int num);

	public int getBoardCnt();// 게시물갯수취득
}
