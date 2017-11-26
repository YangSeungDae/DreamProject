package com.ktds.attachment.dao;

import com.ktds.attachment.vo.AttachmentVO;

public interface AttachmentDao {
	
	public int[] insertFile(AttachmentVO attachmentVO); 
	
	public AttachmentVO selectAttachmentById(int attachmentId);
	
}
