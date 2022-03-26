package com.school.dto;

import java.sql.Date;

public class FeesAmountDto {

	@Override
	public String toString() {
		return "FeesAmountDto [roll_no=" + roll_no + ", amount=" + amount + ", date=" + date + "]";
	}

	public String roll_no;
	public String amount;
	public String date;

	public String getRoll_no() {
		return roll_no;
	}

	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	
	 
	
}
