package com.project;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="musicdata_realtime")
public class RealtimeDto {

	private String id;
	private String title;
	private String gasa;
	private String artlist;
	private String sunwhi;
	private String jangre;
	private String musicurl;
	private String album;
	private String tubeurl;
	private String yourll;
	private String musicid;
	private String artcnt;
	private String likecount;
	private String dislikecount;
	private String viewCount;
	
	
	
	public String getLikecount() {
		return likecount;
	}
	public void setLikecount(String likecount) {
		this.likecount = likecount;
	}
	public String getDislikecount() {
		return dislikecount;
	}
	public void setDislikecount(String dislikecount) {
		this.dislikecount = dislikecount;
	}
	public String getViewCount() {
		return viewCount;
	}
	public void setViewCount(String viewCount) {
		this.viewCount = viewCount;
	}
	public String getArtcnt() {
		return artcnt;
	}
	public void setArtcnt(String artcnt) {
		this.artcnt = artcnt;
	}
	public String getMusicid() {
		return musicid;
	}
	public void setMusicid(String musicid) {
		this.musicid = musicid;
	}
	public String getYourll() {
		return yourll;
	}
	public void setYourll(String yourll) {
		this.yourll = yourll;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGasa() {
		return gasa;
	}
	public void setGasa(String gasa) {
		this.gasa = gasa;
	}
	public String getArtlist() {
		return artlist;
	}
	public void setArtlist(String artlist) {
		this.artlist = artlist;
	}
	public String getSunwhi() {
		return sunwhi;
	}
	public void setSunwhi(String sunwhi) {
		this.sunwhi = sunwhi;
	}
	public String getJangre() {
		return jangre;
	}
	public void setJangre(String jangre) {
		this.jangre = jangre;
	}
	public String getMusicurl() {
		return musicurl;
	}
	public void setMusicurl(String musicurl) {
		this.musicurl = musicurl;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getTubeurl() {
		return tubeurl;
	}
	public void setTubeurl(String tubeurl) {
		this.tubeurl = tubeurl;
	}
	
	
	
}
