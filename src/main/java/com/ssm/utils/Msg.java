package com.ssm.utils;


import java.util.HashMap;
import java.util.Map;
/**
 * 返回通用的JSON数据
 * @author DELL
 *
 */
public class Msg {
	public Integer code;
	public String state;
	//用户要返回给浏览器的数据
	public Map<String, Object>  extend = new HashMap<>();
	
	public static Msg success() {
		Msg result = new Msg();
		result.setCode(100);
		result.setState("处理成功!");
		return result;
	}
	
	public static Msg fail() {
		Msg result = new Msg();
		result.setCode(200);
		result.setState("处理失败!");
		return result;
	}
	

	public Msg add(String key, Object value) {
		this.getExtend().put(key, value);
		return this;
	}
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Map<String, Object> getExtend() {
		return extend;
	}
	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}

}