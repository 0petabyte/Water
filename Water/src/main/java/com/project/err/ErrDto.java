package com.project.err;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class ErrDto {
	private int e_num;
	private String ewriter;
	private String etitle;
	private String econtent;	
	private Timestamp edate;
	private ArrayList<MultipartFile> imgfile;
	private String imgname;
	
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public int getE_num() {
		return e_num;
	}
	public void setE_num(int e_num) {
		this.e_num = e_num;
	}
	public String getEwriter() {
		return ewriter;
	}
	public void setEwriter(String ewriter) {
		this.ewriter = ewriter;
	}
	public String getEtitle() {
		return etitle;
	}
	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}
	public String getEcontent() {
		return econtent;
	}
	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}
	public Timestamp getEdate() {
		return edate;
	}
	public void setEdate(Timestamp edate) {
		this.edate = edate;
	}
	public ArrayList<MultipartFile> getImgfile() {
		return imgfile;
	}
	public void setImgfile(ArrayList<MultipartFile> imgfile) {
		this.imgfile = imgfile;
	}
	
}
