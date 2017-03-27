package com.manager.bean;

public class Scenic {
	private Integer id;
	private String	scenicName;
	private String	url;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getScenicName() {
		return scenicName;
	}
	public void setScenicName(String scenicName) {
		this.scenicName = scenicName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Scenic [id=" + id + ", scenicName=" + scenicName + ", url=" + url + "]";
	}
	public Scenic(Integer id, String scenicName, String url) {
		super();
		this.id = id;
		this.scenicName = scenicName;
		this.url = url;
	}
	public Scenic() {
		super();
	}
	
	
	
}
