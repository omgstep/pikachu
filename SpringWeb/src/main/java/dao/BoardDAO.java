package dao;

import java.util.List;
import java.util.Map;

import pbean.Board;

public interface BoardDAO {
	public List<Board> getBoardList();// 전체게시물 조회

	public List<Board> getBoardList(Map<String, Object> map); // 부분 게시물 조회

	public Board getBoard(int num); // 게시물 1건 조회

	public void addArticle(Board board);// 게시물추가

	public void updArticle(Board board);// 게시물 수정

	public void delArticle(int num);// 게시물 삭제

	public void addArticleCount(int num);// 조회수증가

	public int getBoardCnt();// 게시물갯수취득

}
