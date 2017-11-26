package com.ktds.attachment.web;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.attachment.service.AttachmentService;
import com.ktds.attachment.vo.AttachmentVO;
import com.ktds.common.DownloadUtil;

@Controller
public class AttachmentController {
	
	private AttachmentService attachmentService;
	
	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}
	
	/*@RequestMapping("/attachment/upload")
	public String viewUploadPage() {
		
		return "attachment/upload";
	}
	
	@RequestMapping("/attachment/doUpload")
	public ModelAndView doUpload(AttachmentVO attachmentVO) {
		
		MultipartFile file = attachmentVO.getFile();
		
		File destFile = new File("D:/uploadFiles" + File.separator, file.getOriginalFilename());
		try {
			file.transferTo(destFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		attachmentVO.setAttachmentName(file.getOriginalFilename());
		
		boolean isSuccess = attachmentService.createFile(attachmentVO);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("attachment/afterUpload");
		view.addObject("attachmentVO", attachmentVO);
		
		return view;
	}*/
	
	@RequestMapping("/attachment/download/{attachmentId}")
	public void download(
				@PathVariable int attachmentId,
				HttpServletRequest request,
				HttpServletResponse response) {
		
		AttachmentVO attachmentVO = attachmentService.readAttachmentById(attachmentId);
		//파일 경로가 window 에서는 \ 인데 java는 이스케이프로 먹어서 \\ 두번 적어야됨
		//지저분 하니까 / 로 사용 /도 사용됨
		DownloadUtil downloadUtil = new DownloadUtil("D:/uploadFiles" + File.separator + attachmentVO.getAttachmentName());
		
		try {
			downloadUtil.download(request, response, attachmentVO.getAttachmentName());
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
