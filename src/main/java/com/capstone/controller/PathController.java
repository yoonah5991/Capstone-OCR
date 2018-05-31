package com.capstone.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class PathController {
	
	/**
	 *
	 * @author yoonah park
	 * @date 2018. 04. 30.
	 */
	
	// 테스트 업로드 페이지 : GET
	@RequestMapping(path = "/test-upload", method = RequestMethod.GET)
	String testUploadPage()
	{
		return "test-upload";
	}
	 
	// 업로드 처리 : POST
	@RequestMapping(path = "/test-upload", method = RequestMethod.POST)
	@ResponseBody
	// 와 MultipartFile 보고 멀티파트를 자동으로 인식하는구나!!!
	String testUpload(@RequestParam("file") MultipartFile file)
	{
		if (!file.isEmpty())
		{
			try
			{
				// 디플로이 기준 루트에 test-upload-path 폴더를 만들어줍니다.
				Files.copy(file.getInputStream(), Paths.get("test-upload-path", file.getOriginalFilename()));
				return "파일업로드 성공 : " + file.getOriginalFilename();
			}
			catch (IOException | RuntimeException e)
			{
				//logger.error("file upload fail", e);
				return "파일업로드 실패";
			}
		}
		else
		{
			return "파일이 없습니다";
		}
	}
	@RequestMapping("/")
	public String basePath(){
		return "/index";
	}

}
