package com.ktds.attachment.service;

import com.ktds.attachment.dao.AttachmentDao;
import com.ktds.attachment.vo.AttachmentVO;

public class AttachmentServiceImpl implements AttachmentService{
	
	private AttachmentDao attachmentDao;
	
	public void setAttachmentDao(AttachmentDao attachmentDao) {
		this.attachmentDao = attachmentDao;
	}

	@Override
	public int[] createFile(AttachmentVO attachmentVO) {
		return attachmentDao.insertFile(attachmentVO);
	}

	@Override
	public AttachmentVO readAttachmentById(int attachmentId) {
		return attachmentDao.selectAttachmentById(attachmentId);
	}

}
