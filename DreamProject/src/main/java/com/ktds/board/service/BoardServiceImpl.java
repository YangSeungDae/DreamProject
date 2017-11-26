package com.ktds.board.service;

import java.util.HashMap;
import java.util.List;

import com.ktds.board.dao.BoardDao;
import com.ktds.board.vo.BoardListVO;
import com.ktds.board.vo.BoardSearchVO;
import com.ktds.board.vo.BoardVO;

import io.github.seccoding.web.pager.Pager;
import io.github.seccoding.web.pager.PagerFactory;

public class BoardServiceImpl implements BoardService{

	private BoardDao boardDao;
	
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
		
	@Override
	public BoardListVO readAllBoard(BoardSearchVO boardSearchVO) {
		
		BoardListVO boardListVO = new BoardListVO();
		
		Pager pager = PagerFactory.getPager(true);
		int boardCount = boardDao.selectAllBoardCount(boardSearchVO);
		
		pager.setTotalArticleCount(boardCount);
		pager.setPageNumber(boardSearchVO.getPageNo());
		
		boardSearchVO.setStartNumber(pager.getStartArticleNumber());
		boardSearchVO.setEndNumber(pager.getEndArticleNumber());
		
		boardListVO.setPager( pager );
		boardListVO.setBoardListVO(boardDao.selectAllBoard(boardSearchVO));
		
		return boardListVO;
	}

	@Override
	public BoardVO readOneBoardVO(int boardId) {
		return boardDao.selectOneBoardVO(boardId);
	}

	@Override
	public boolean createNewBoard(BoardVO boardVO) {
		return boardDao.insertNewBoard(boardVO) > 0;
	}

	@Override
	public boolean updateViewCount(int boardId) {
		return boardDao.updateViewCount(boardId) > 0;
	}

	@Override
	public boolean deleteBoard(BoardVO boardVO) {
		return boardDao.deleteBoard(boardVO) > 0;
	}

	@Override
	public boolean updateBoard(BoardVO boardVO) {
		return boardDao.updateBoard(boardVO) > 0;
	}
	
}
