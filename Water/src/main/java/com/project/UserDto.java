package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection="musicdata")
public class UserDto {
	@Id
	
	//몽고디비 Dto 09.19 16:00 지웅 --시작
	private String id;
	private String album;
	private String artlist;
	private String musicid;
	private String sunwhi;
	private String musicidurl;
	private String youtubeurl;
	private String yourll;
	private String jangre;
	private String sunwhiyear;
	//몽고디비 Dto 09.19 16:00 지웅 --까지

	
	public String getYoutubeurl() {
		return youtubeurl;
	}
	public String getSunwhiyear() {
		return sunwhiyear;
	}
	public void setSunwhiyear(String sunwhiyear) {
		this.sunwhiyear = sunwhiyear;
	}
	public String getJangre() {
		return jangre;
	}
	public void setJangre(String jangre) {
		this.jangre = jangre;
	}
	public String getYourll() {
		return yourll;
	}
	public void setYourll(String yourll) {
		this.yourll = yourll;
	}
	public void setYoutubeurl(String youtubeurl) {
		this.youtubeurl = youtubeurl;
	}
	public String getMusicidurl() {
		return musicidurl;
	}
	public void setMusicidurl(String musicidurl) {
		this.musicidurl = musicidurl;
	}
	public String getSunwhi() {
		return sunwhi;
	}
	public void setSunwhi(String sunwhi) {
		this.sunwhi = sunwhi;
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
	public String getMusicid() {
		return musicid;
	}
	public void setMusicid(String musicid) {
		this.musicid = musicid;
	}
	private String url;
	private String title;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}



	
	
}