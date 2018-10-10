package com.project;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="musicdata_rank1list")
public class FameDto {
	private String id;
	private String album;
	private String artlist;
	private String title;
	private String musicid;
	private String sunwhi;
	private String yourll;
	private String jangre;
	private String sunwhiyear;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getArtlist() {
		return artlist;
	}
	public void setArtlist(String artlist) {
		this.artlist = artlist;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMusicid() {
		return musicid;
	}
	public void setMusicid(String musicid) {
		this.musicid = musicid;
	}
	public String getSunwhi() {
		return sunwhi;
	}
	public void setSunwhi(String sunwhi) {
		this.sunwhi = sunwhi;
	}
	public String getYourll() {
		return yourll;
	}
	public void setYourll(String yourll) {
		this.yourll = yourll;
	}
	public String getJangre() {
		return jangre;
	}
	public void setJangre(String jangre) {
		this.jangre = jangre;
	}
	public String getSunwhiyear() {
		return sunwhiyear;
	}
	public void setSunwhiyear(String sunwhiyear) {
		this.sunwhiyear = sunwhiyear;
	}
}
