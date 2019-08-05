package com.utils;

import java.util.UUID;


public class UploadUtils {
	

	public static String getUUIDName(String filename){
		// �Ȳ���
		int index = filename.lastIndexOf(".");
		// ��ȡ
		String lastname = filename.substring(index, filename.length());
		// Ψһ �ַ���  fsd-sfsdf-sfsd-sdfsd
		String uuid = UUID.randomUUID().toString().replace("-", "");
		return uuid+lastname;
	}
	
	public static void main(String[] args) {
		String filename = "girl.jpg";
		String uuid = getUUIDName(filename);
		System.out.println(uuid);
	}
}
