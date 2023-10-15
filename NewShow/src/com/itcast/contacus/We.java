package com.itcast.contacus;

public class We {
	private String advice;
	private String lianxi;
	
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public String getLianxi() {
		return lianxi;
	}
	public void setLianxi(String lianxi) {
		this.lianxi = lianxi;
	}
	public String toString(){
		return "We[建议="+advice+",联系我们="+lianxi+"]";
	}
}
