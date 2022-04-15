package com.school.dto;

public class FeesClassesDto {
	
	public String classes;
	public int fees;
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	@Override
	public String toString() {
		return "FeesClassesDto [classes=" + classes + ", fees=" + fees + "]";
	}

}
