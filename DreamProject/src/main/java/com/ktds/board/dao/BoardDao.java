package com.ktds.board.dao;

import java.util.HashMap;
import java.util.List;

import com.ktds.board.vo.BoardSearchVO;
import com.ktds.board.vo.BoardVO;

public interface BoardDao {
	
	public List<BoardVO> selectAllBoard(BoardSearchVO boardSearchVO);
	public int selectAllBoardCount(BoardSearchVO boardSearchVO);
	
	public BoardVO selectOneBoardVO(int boardId);
	
	public int insertNewBoard(BoardVO boardVO);
	public int updateViewCount(int boardId);
	
	public int deleteBoard(BoardVO boardVO);
	public int updateBoard(BoardVO boardVO);
	
}
