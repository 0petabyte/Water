package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="musicdata")
public class QuestionDto {
@Id

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
	private String keyWord;
	private String keyField;
	private String gasa;
	private String yearchose;
	private String yearcheck;
	private String rankchose;
	private String jangrechose;
	private String artcnt;
	private String nowurl;
	private String yearkeyword;
	private String jangkeyword;
	private String yearkeyword2;
	private String yearkeyword3;
	
	
	

	
	
	
	public String getYearkeyword2() {
		return yearkeyword2;
	}
	public void setYearkeyword2(String yearkeyword2) {
		this.yearkeyword2 = yearkeyword2;
	}
	public String getYearkeyword3() {
		return yearkeyword3;
	}
	public void setYearkeyword3(String yearkeyword3) {
		this.yearkeyword3 = yearkeyword3;
	}
	public String getJangkeyword() {
		return jangkeyword;
	}
	public void setJangkeyword(String jangkeyword) {
		this.jangkeyword = jangkeyword;
	}
	public String getYearkeyword() {
		return yearkeyword;
	}
	public void setYearkeyword(String yearkeyword) {
		this.yearkeyword = yearkeyword;
	}
	public String getNowurl() {
		return nowurl;
	}
	public void setNowurl(String nowurl) {
		this.nowurl = nowurl;
	}
	public String getArtcnt() {
		return artcnt;
	}
	public void setArtcnt(String artcnt) {
		this.artcnt = artcnt;
	}
	public String getJangrechose() {
		return jangrechose;
	}
	public void setJangrechose(String jangrechose) {
		this.jangrechose = jangrechose;
	}
	public String getRankchose() {
		return rankchose;
	}
	public void setRankchose(String rankchose) {
		this.rankchose = rankchose;
	}
	public String getYearcheck() {
		return yearcheck;
	}
	public void setYearcheck(String yearcheck) {
		this.yearcheck = yearcheck;
	}
	public String getYearchose() {
		return yearchose;
	}
	public void setYearchose(String yearchose) {
		this.yearchose = yearchose;
	}
	public String getYoutubeurl() {
		return youtubeurl;
	}
	public String getGasa() {
		return gasa;
	}
	public void setGasa(String gasa) {
		this.gasa = gasa;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getKeyField() {
		return keyField;
	}
	public void setKeyField(String keyField) {
		this.keyField = keyField;
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