package com.ssm.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

/**
 * 
 * @author XIE
 *	2019年4月29日09:08:25
 *	当前时间 + 五位随机数
 * 	分布式可以使用 雪花算法
 */
public class IdUtils{
	/**
	 * 生成订单ID
	 * @return
	 */
	public static String orderIdUtil() {
		// 格式 : yyyyMMddhhmmss + 5位随机数
		Random random = new Random();
		StringBuilder builder = new StringBuilder(5);
		for (int i = 0; i < 5; i++) {
			builder.append(String.valueOf(random.nextInt(10)));
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return sdf.format(new Date())+builder.toString();
	}
	/**
	 * 生成 分类id
	 * @return
	 */
	public static String catgoryIdUtil() {
		return UUID.randomUUID().toString().substring(0, 8);
	}
	
}
