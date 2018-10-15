package com.project.free;

import java.sql.Timestamp;

public class FreeDto {

	private int f_num;
	private String fwriter;
	private String ftitle;
	private String fcontent;	
	private Timestamp fdate;
	
	public int getF_num() {
		return f_num;
	}
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public String getFwriter() {
		return fwriter;
	}
	public void setFwriter(String fwriter) {
		this.fwriter = fwriter;
	}
	public String getFtitle() {
		return ftitle;
	}
	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}
	public String getFcontent() {
		return fcontent;
	}
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}
	public Timestamp getFdate() {
		return fdate;
	}
	public void setFdate(Timestamp fdate) {
		this.fdate = fdate;
	}
	
	
}
