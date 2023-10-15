package com.itcast.chuli;

public class Administrator {
	private String time;
	private String headline;
	private String author;
	private String data;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String toString(){
		return "Admin[time="+time+",headline="+headline+",author="+author+",data="+data+"]";
	}
}
