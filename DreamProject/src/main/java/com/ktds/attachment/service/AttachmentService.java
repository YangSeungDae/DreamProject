package com.ktds.attachment.service;

import com.ktds.attachment.vo.AttachmentVO;

public interface AttachmentService {
	
	public int[] createFile(AttachmentVO attachmentVO); 
	
	public AttachmentVO readAttachmentById(int attachmentId);
}
