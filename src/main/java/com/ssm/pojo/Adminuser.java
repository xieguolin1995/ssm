package com.ssm.pojo;

public class Adminuser {
	public String auid ;
	public String adminname;
	public String password;
	public String getAuid() {
		return auid;
	}
	public void setAuid(String auid) {
		this.auid = auid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Adminuser [auid=" + auid + ", adminname=" + adminname + ", password=" + password + "]";
	}
	
}
