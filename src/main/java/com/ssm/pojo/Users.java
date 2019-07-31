package com.ssm.pojo;

public class Users {
	// 用户ID
	private String uid;
	// 用户名
	private String username;
	// 密码
	private String password;
	// 用户真实邮箱 (激活要用)
	private String email;
	// 激活状态吗 (0表示未激活 1 表示激活)
	private int state;
	// 32 位 激活码
	private String code;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "Users [uid=" + uid + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", state=" + state + ", code=" + code + "]";
	}
}
