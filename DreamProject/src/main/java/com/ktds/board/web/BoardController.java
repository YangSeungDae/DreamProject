package com.ktds.board.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.board.service.BoardService;
import com.ktds.board.vo.BoardListVO;
import com.ktds.board.vo.BoardSearchVO;
import com.ktds.board.vo.BoardVO;
import com.ktds.member.vo.MemberVO;

import io.github.seccoding.web.pager.PageExplorer;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;

@Controller
public class BoardController {
	
	private BoardService boardService;
	
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping("/board/list/init")
	public String clearSearchSession(HttpSession session) {
		session.removeAttribute("_SEARCH_");
		return "redirect:/board/list";
	}

	@RequestMapping("/board/list")
	public ModelAndView viewListPage(BoardSearchVO boardSearchVO, HttpSession session) {
		
		
		if(boardSearchVO.getPageNo() == null || 
				boardSearchVO.getPageNo().length() == 0) {
			boardSearchVO = (BoardSearchVO) session.getAttribute("_SEARCH_");
			if (boardSearchVO == null) {
				boardSearchVO = new BoardSearchVO();
			}
		}
		
		/*String searchKeyword = boardSearchVO.getSearchKeyword();
		if( searchKeyword == null || searchKeyword.length() == 0 ) {
			boardSearchVO = (BoardSearchVO) session.getAttribute("_SEARCH_");
		}*/
		
		BoardListVO boardList = boardService.readAllBoard(boardSearchVO);
		
		PageExplorer pagenation = new ClassicPageExplorer(boardList.getPager());
		
		/*	link Page 번호를 전달할 Paramater
		 * 
		 */
		String pager = pagenation.getPagingList("pageNo", " [@] ", "이전", "다음", "searchForm");
		
		ModelAndView view = new ModelAndView();
		view.setViewName("board/list");
		view.addObject("boardList", boardList.getBoardListVO());
		view.addObject("boardSearchVO", boardSearchVO);
		view.addObject("pager", pager);
		session.setAttribute("_SEARCH_", boardSearchVO);
		
		return view;
	}
	
	@RequestMapping("/board/view/{boardId}")
	public String updateViewCount(@PathVariable int boardId) {
		boolean isSuccess = boardService.updateViewCount(boardId);
		return "redirect:/board/read/" + boardId;
	}
	
	@RequestMapping("/board/read/{boardId}")
	public ModelAndView viewReadPage(@PathVariable int boardId) {
		
		BoardVO boardVO = boardService.readOneBoardVO(boardId);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("board/read");
		view.addObject("boardVO", boardVO);
		return view;
	}
	
	@RequestMapping("board/write")
	public String viewWritePage() {
		return "board/write";
	}
	
	@RequestMapping("board/doWrite")
	public String doWrite(BoardVO boardVO, HttpSession session, HttpServletRequest request) {
			//session.getAttribute 리턴 값이 object 인데 이건 최상위 여서 무슨 형식인지 모르니
			// 명시적 형 변환 (MemberVO) 해준다.
		MemberVO member = (MemberVO) session.getAttribute("_USER_");
		String id = member.getMemberId();
		
		boardVO.setId(id);
		
		String content = boardVO.getContent();
		content = content.replaceAll("../attachment", request.getContextPath()+ "/attachment");
		boardVO.setContent(content);
		
		boolean isSuccess = boardService.createNewBoard(boardVO);
		
		return "redirect:/board/list/init";
	}
	
	@RequestMapping("/board/delete/{boardId}")
	public String doDelete(@PathVariable int boardId, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("_USER_");
		String id = member.getMemberId();
		
		BoardVO boardVO = new BoardVO();
		boardVO.setBoardId(boardId);
		boardVO.setId(id);
		
		boolean isSuccess = boardService.deleteBoard(boardVO);
		
		return "redirect:/board/list/init";
	}
	
	@RequestMapping("/board/update/{boardId}")
	public ModelAndView viewUpdatePage(@PathVariable int boardId, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("_USER_");
		String id = member.getMemberId();
		
		BoardVO boardVO = boardService.readOneBoardVO(boardId);
		
		if( boardVO.getId().equals(id)) {
			ModelAndView view = new ModelAndView();
			view.addObject("boardVO", boardVO);
			view.setViewName("board/write");
			return view;
		}
		else {
			return new ModelAndView("redirect:/board/read/" + boardId);
		}

	}
	
	@RequestMapping("/board/doUpdate/{boardId}")
	public String doUpDate(@PathVariable int boardId, BoardVO boardVO, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("_USER_");
		String id = member.getMemberId();
		
		BoardVO oldBoardVO = boardService.readOneBoardVO(boardId);
		
		if(oldBoardVO.getId().equals(id)) {
			boardVO.setBoardId(boardId);
			boardVO.setId(id);
			boolean isSuccess = boardService.updateBoard(boardVO);
		}
		
		return "redirect:/board/read/" + boardId;
	}
	
	

	@RequestMapping("/board/test")
	public String test6() {
		return "junyoung/slide";
	}
	
	@RequestMapping("/board/test2")
	public String test7() {
		return "junyoung/slide2";
	}
	
	@RequestMapping("/board/test3")
	public String test8() {
		return "junyoung/slide3";
	}

	@RequestMapping("/board/sojin1")
	public String test9() {
		return "sojin/news";
	}
	
	@RequestMapping("/board/sojin2")
	public String test10() {
		return "sojin/sns";
	}
	@RequestMapping("/hd/kona")
	public String test11() {
		return "hd/kona";
	}
	
	@RequestMapping("/hd/accent")
	public String test12() {
		return "hd/accent";
	}
	
	@RequestMapping("/hd/sonata")
	public String test13() {
		return "hd/sonata";
	}
	@RequestMapping("/hd/board")
	public String test14() {
		return "hd/board";
	}
	@RequestMapping("/hd/view")
	public String test15() {
		return "hd/view";
	}
	@RequestMapping("/hd/estimate")
	public String test16() {
		return "/hd/estimate";
	}
	@RequestMapping("/hd/pastevent")
	public String test17() {
		return "/hd/pastevent";
	}
	@RequestMapping("/hd/event")
	public String test18() {
		return "/hd/event";
	}
	@RequestMapping("/hd/catalog")
	public String test19() {
		return "/hd/catalog";
	}
	@RequestMapping("/hd/buy")
	public String test20() {
		return "/hd/buy";
	}
	@RequestMapping("/hd/car")
	public String test21() {
		return "/hd/car";
	}
	@RequestMapping("/hd/check")
	public String test22() {
		return "/hd/check";
	}
	@RequestMapping("/hd/counsell")
	public String test23() {
		return "/hd/counsell";
	}
	@RequestMapping("/hd/ride")
	public String test24() {
		return "/hd/ride";
	}
}
