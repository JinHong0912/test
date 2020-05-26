package com.greenart.sample.model;

public class SiteInfoVO {

//	+----------------+--------------+------+-----+---------+-------+
//	| Field          | Type         | Null | Key | Default | Extra |
//	+----------------+--------------+------+-----+---------+-------+
//	| siteName       | varchar(50)  | YES  |     | NULL    |       |
//	| sitePhone      | varchar(20)  | YES  |     | NULL    |       |
//	| siteEmail      | varchar(50)  | YES  |     | NULL    |       |
//	| siteCopy       | varchar(100) | YES  |     | NULL    |       |
//	| siteUrl        | varchar(100) | YES  |     | NULL    |       |
//	| siteMainBanner | varchar(100) | YES  |     | NULL    |       |
//	| siteManager    | varchar(20)  | YES  |     | NULL    |       |
//	+----------------+--------------+------+-----+---------+-------+
	
	private String siteName;
	private String sitePhone;
	private String siteEmail;
	private String siteCopy;
	private String siteUrl;
	private String siteMainBanner;
	private String siteManager;
	
	public String getSiteName() {
		return siteName;
	}
	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	public String getSitePhone() {
		return sitePhone;
	}
	public void setSitePhone(String sitePhone) {
		this.sitePhone = sitePhone;
	}
	public String getSiteEmail() {
		return siteEmail;
	}
	public void setSiteEmail(String siteEmail) {
		this.siteEmail = siteEmail;
	}
	public String getSiteCopy() {
		return siteCopy;
	}
	public void setSiteCopy(String siteCopy) {
		this.siteCopy = siteCopy;
	}
	public String getSiteUrl() {
		return siteUrl;
	}
	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}
	public String getSiteMainBanner() {
		return siteMainBanner;
	}
	public void setSiteMainBanner(String siteMainBanner) {
		this.siteMainBanner = siteMainBanner;
	}
	public String getSiteManager() {
		return siteManager;
	}
	public void setSiteManager(String siteManager) {
		this.siteManager = siteManager;
	}
	
	
	
}
