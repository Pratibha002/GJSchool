package com.school.dto;

import java.sql.Date;

public class FeesAmountDto {

	public String branch;
	public String session;
	public String stuClass;
	public String scholarNumberOrName;
	
	public String amount;
	public String date;
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
	}
	public String getStuClass() {
		return stuClass;
	}
	public void setStuClass(String stuClass) {
		this.stuClass = stuClass;
	}
	public String getScholarNumberOrName() {
		return scholarNumberOrName;
	}
	public void setScholarNumberOrName(String scholarNumberOrName) {
		this.scholarNumberOrName = scholarNumberOrName;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "FeesAmountDto [branch=" + branch + ", session=" + session + ", stuClass=" + stuClass
				+ ", scholarNumberOrName=" + scholarNumberOrName + ", amount=" + amount + ", date=" + date + "]";
	}	
		 

	
}
