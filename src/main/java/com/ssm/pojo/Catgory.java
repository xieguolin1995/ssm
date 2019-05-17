package com.ssm.pojo;

public class Catgory {
	public String cid;
	public String cname;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Override
	public String toString() {
		return "Cagory [cid=" + cid + ", cname=" + cname + "]";
	}
}
