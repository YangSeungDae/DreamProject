package com.ktds.board.vo;

import java.util.List;

import io.github.seccoding.web.pager.Pager;

public class BoardListVO {
	
	private List<BoardVO> boardListVO;
	private Pager pager;
	
	
	public List<BoardVO> getBoardListVO() {
		return boardListVO;
	}
	public void setBoardListVO(List<BoardVO> boardListVO) {
		this.boardListVO = boardListVO;
	}
	public Pager getPager() {
		return pager;
	}
	public void setPager(Pager pager) {
		this.pager = pager;
	}
	
	
	
}
