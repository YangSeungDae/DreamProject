package com.ktds.member.dao;

import com.ktds.member.vo.MemberVO;

public interface MemberDao {
	
	public void insertMember(MemberVO memberVO);
	
	public MemberVO selectOneMemberByIdAndPassword(MemberVO memberVO);
	
	public int updateAddressById(MemberVO memberVO);

}
