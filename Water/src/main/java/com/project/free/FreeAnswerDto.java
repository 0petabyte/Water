package com.project.free;

import java.sql.Timestamp;

public class FreeAnswerDto {
	private int fa_num;
	private int f_num;
	private String fawriter;
	private String facontent;
	private Timestamp fadate;
	
	public int getFa_num() {
		return fa_num;
	}
	public void setFa_num(int fa_num) {
		this.fa_num = fa_num;
	}
	public int getF_num() {
		return f_num;
	}
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public String getFawriter() {
		return fawriter;
	}
	public void setFawriter(String fawriter) {
		this.fawriter = fawriter;
	}
	public String getFacontent() {
		return facontent;
	}
	public void setFacontent(String facontent) {
		this.facontent = facontent;
	}
	public Timestamp getFadate() {
		return fadate;
	}
	public void setFadate(Timestamp fadate) {
		this.fadate = fadate;
	}
	
	
}
