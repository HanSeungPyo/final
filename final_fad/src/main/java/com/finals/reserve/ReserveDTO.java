
package com.finals.reserve;

import java.sql.Date;

public class ReserveDTO {
	private int num;

    private String id;

    private Date year;

    private int renum;

    private Date month;

    private Date day;

    private int recounts;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getYear() {
		return year;
	}

	public void setYear(Date year) {
		this.year = year;
	}

	public int getRenum() {
		return renum;
	}

	public void setRenum(int renum) {
		this.renum = renum;
	}

	public Date getMonth() {
		return month;
	}

	public void setMonth(Date month) {
		this.month = month;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public int getRecounts() {
		return recounts;
	}

	public void setRecounts(int recounts) {
		this.recounts = recounts;
	}

    
    
}
