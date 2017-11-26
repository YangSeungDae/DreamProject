package com.ktds.member.service;

import com.ktds.member.vo.MemberVO;

public interface MemberService {
	
	public void createMember(MemberVO memberVO);
	public MemberVO readOneMemberByIdAndPassword(MemberVO memberVO);
	public boolean updateAddressById(MemberVO memberVO);
}
