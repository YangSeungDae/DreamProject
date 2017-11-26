package com.ktds.attachment.vo;

import org.springframework.web.multipart.MultipartFile;

import com.ktds.board.vo.BoardVO;

public class AttachmentVO {
	private int attachmentId;
	private String attachmentName;
	
	private MultipartFile file;

	public int getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(int attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getAttachmentName() {
		return attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	
	
	
}
