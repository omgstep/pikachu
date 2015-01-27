package logic;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import pbean.Board;
import vbean.VBoard;

@Service
public class BoardLogicImpl2 
   implements BoardLogic{
   @Autowired
   private BoardDAO boardDAO;
   
   public List<Board> getBoardList() {
      // TODO Auto-generated method stub
      return this.boardDAO.getBoardList();
   }

   public List<Board> getBoardList(Map<String, Object> map) {
      // TODO Auto-generated method stub
      return this.boardDAO.getBoardList(map);
   }

   public Board getBoard(int num) {
      // TODO Auto-generated method stub
      return this.boardDAO.getBoard(num);
   }

   public void addArticle(VBoard vboard) {
      // TODO Auto-generated method stub
      Board board = new Board(vboard);
      this.boardDAO.addArticle(board);
   }

   public void updArticle(VBoard vboard) {
      // TODO Auto-generated method stub
      Board board = new Board(vboard);
      this.boardDAO.updArticle(board);
   }

   public void delArticle(int num) {
      // TODO Auto-generated method stub
      this.boardDAO.delArticle(num);
   }

   public void addArticleCount(int num) {
      // TODO Auto-generated method stub
      this.boardDAO.addArticleCount(num);
   }

   public int getBoardCnt() {
      // TODO Auto-generated method stub
      return this.boardDAO.getBoardCnt();
   }

}