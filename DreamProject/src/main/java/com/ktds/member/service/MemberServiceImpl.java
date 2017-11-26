package com.ktds.member.service;

import com.ktds.member.dao.MemberDao;
import com.ktds.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao MemberDao) {
		this.memberDao = MemberDao;
	}
	
	@Override
	public void createMember(MemberVO memberVO) {
		memberDao.insertMember(memberVO);		
	}

	@Override
	public MemberVO readOneMemberByIdAndPassword(MemberVO memberVO) {
		return memberDao.selectOneMemberByIdAndPassword(memberVO);
	}

	@Override
	public boolean updateAddressById(MemberVO memberVO) {
		return memberDao.updateAddressById(memberVO) > 0;
	}
	
}
