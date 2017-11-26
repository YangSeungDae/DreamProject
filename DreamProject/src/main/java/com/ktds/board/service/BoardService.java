package com.ktds.board.service;

import java.util.HashMap;
import java.util.List;

import com.ktds.board.vo.BoardListVO;
import com.ktds.board.vo.BoardSearchVO;
import com.ktds.board.vo.BoardVO;

public interface BoardService {

	public BoardListVO readAllBoard(BoardSearchVO boardSearchVO);
	public BoardVO readOneBoardVO(int boardId);
	
	public boolean createNewBoard(BoardVO boardVO);
	public boolean updateViewCount(int boardId);
	
	public boolean deleteBoard(BoardVO boardVO);
	public boolean updateBoard(BoardVO boardVO);
	
}
