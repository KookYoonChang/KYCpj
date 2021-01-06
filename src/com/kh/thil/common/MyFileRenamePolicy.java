package com.kh.thil.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File oldFile) {
		
		long currentTime = System.currentTimeMillis();
		int randomNumber = (int) (Math.random() * 100000);
		
		//확장자를 분리한다
		String name = oldFile.getName();
		String body = "";
		String ext = "";
		
		int dot = name.lastIndexOf(".");
		if(dot != -1) {
			//확장자 있는 경우
			body = name.substring(0, dot);
			ext = name.substring(dot);
		}else {
			//확장자 없는 경우
			body = name;
		}
		
		SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileName = ft.format(new Date(currentTime)) + randomNumber + ext;
		
		File newFile = new File(oldFile.getParent(), fileName);
		
		return newFile;
	}

	
}
