package com.ktds.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao{

	@Override
	public void insertMember(MemberVO memberVO) {
							//인터페이스이름.지금사용하는메소드 , 파라미터
		getSqlSession().insert("MemberDao.insertMember", memberVO);
		
		
	}

	@Override
	public MemberVO selectOneMemberByIdAndPassword(MemberVO memberVO) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("MemberDao.selectOneMemberByIdAndPassword", memberVO);
	}

	@Override
	public int updateAddressById(MemberVO memberVO) {
		return getSqlSession().update("MemberDao.updateAddressById", memberVO);
	}

}
