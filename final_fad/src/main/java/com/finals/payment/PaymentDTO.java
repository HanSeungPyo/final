package com.finals.payment;

import java.sql.Date;

public class PaymentDTO {

	private String id;

    private String name;

    private int accounts;

    private Date reg_date;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAccounts() {
		return accounts;
	}

	public void setAccounts(int accounts) {
		this.accounts = accounts;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

    
    
	
}
