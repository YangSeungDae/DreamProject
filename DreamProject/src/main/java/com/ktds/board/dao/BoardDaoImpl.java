package com.ktds.board.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.board.vo.BoardSearchVO;
import com.ktds.board.vo.BoardVO;

public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDao{

	@Override
	public List<BoardVO> selectAllBoard(BoardSearchVO boardSearchVO) {
		return getSqlSession().selectList("BoardDao.selectAllBoard", boardSearchVO);
	}

	@Override
	public BoardVO selectOneBoardVO(int boardId) {
		return getSqlSession().selectOne("BoardDao.selectOneBoardVO", boardId);
	}

	@Override
	public int insertNewBoard(BoardVO boardVO) {
		return getSqlSession().insert("BoardDao.insertNewBoard", boardVO);
	}

	@Override
	public int updateViewCount(int boardId) {
		return getSqlSession().update("BoardDao.updateViewCount", boardId);
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		return getSqlSession().delete("BoardDao.deleteBoard", boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) {
		return getSqlSession().update("BoardDao.updateBoard", boardVO);
	}

	@Override
	public int selectAllBoardCount(BoardSearchVO boardSearchVO) {
		return getSqlSession().selectOne("BoardDao.selectAllBoardCount", boardSearchVO);
	}

}
