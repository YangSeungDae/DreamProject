package com.ktds.attachment.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.attachment.vo.AttachmentVO;

public class AttachmentDaoImpl extends SqlSessionDaoSupport implements AttachmentDao{

	@Override
	public int[] insertFile(AttachmentVO attachmentVO) {
		
		int attachmentId = getSqlSession().selectOne("AttachmentDao.selectNextAttachmentId");
		attachmentVO.setAttachmentId(attachmentId);
		
		return new int[] { getSqlSession().insert("AttachmentDao.insertFile", attachmentVO), attachmentId};
	}

	@Override
	public AttachmentVO selectAttachmentById(int attachmentId) {
		return getSqlSession().selectOne("AttachmentDao.selectAttachmentById", attachmentId);
	}

}
