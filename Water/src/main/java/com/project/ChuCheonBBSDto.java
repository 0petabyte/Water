package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="chucheonbbs")
public class ChuCheonBBSDto {
   @Id
   
   private String id;
   private String title;
   private String artlist;
   private String musicid;
   private String chucheoneu;
   private String ccontent;
   private String yourll;
   
   
   
   public String getYourll() {
	  return yourll;
   }
   public void setYourll(String yourll) {
	  this.yourll = yourll;
   }
   public String getCcontent() {
      return ccontent;
   }
   public void setCcontent(String ccontent) {
      this.ccontent = ccontent;
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
   public String getChucheoneu() {
      return chucheoneu;
   }
   public void setChucheoneu(String chucheoneu) {
      this.chucheoneu = chucheoneu;
   }
   
   

}