package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="chucheondat")
public class ChuCheonDatDto {
	@Id
	
	private String _id;
	private String dat_num;
	private String dat_name;
	private String dat_content;
	
	
	
	
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	
	public String getDat_num() {
		return dat_num;
	}
	public void setDat_num(String dat_num) {
		this.dat_num = dat_num;
	}
	public String getDat_name() {
		return dat_name;
	}
	public void setDat_name(String dat_name) {
		this.dat_name = dat_name;
	}
	public String getDat_content() {
		return dat_content;
	}
	public void setDat_content(String dat_content) {
		this.dat_content = dat_content;
	}
	
	
	
}
